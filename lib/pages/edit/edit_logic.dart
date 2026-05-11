import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartx/dartx.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:latlong2/latlong.dart';
import 'package:moodiary/api/api.dart';
import 'package:moodiary/common/models/isar/diary.dart';
import 'package:moodiary/common/values/diary_type.dart';
import 'package:moodiary/common/values/keyboard_state.dart';
import 'package:moodiary/components/base/text.dart';
import 'package:moodiary/components/keyboard_listener/keyboard_listener.dart';
import 'package:moodiary/components/quill_embed/audio_embed.dart';
import 'package:moodiary/components/quill_embed/image_embed.dart';
import 'package:moodiary/components/quill_embed/text_indent.dart';
import 'package:moodiary/components/quill_embed/video_embed.dart';
import 'package:moodiary/l10n/l10n.dart';
import 'package:moodiary/persistence/isar.dart';
import 'package:moodiary/persistence/pref.dart';
import 'package:moodiary/router/app_routes.dart';
import 'package:moodiary/src/rust/api/jieba.dart';
import 'package:moodiary/src/rust/api/kmp.dart';
import 'package:moodiary/utils/file_util.dart';
import 'package:moodiary/common/models/openai.dart';
import 'package:moodiary/utils/goal_util.dart';
import 'package:moodiary/utils/markdown_util.dart';
import 'package:moodiary/utils/media_util.dart';
import 'package:moodiary/utils/notice_util.dart';
import 'package:moodiary/utils/signature_util.dart';
import 'package:path/path.dart';
import 'package:uuid/uuid.dart';

import 'edit_state.dart';

class _GoalStat {
  final String goal;
  final int percentage;
  final String insight;

  const _GoalStat({
    required this.goal,
    required this.percentage,
    required this.insight,
  });
}

class EditLogic extends GetxController {
  final EditState state = EditState();

  //标题
  late final TextEditingController titleTextEditingController =
      TextEditingController();

  //编辑器控制器
  QuillController? quillController;

  // markdown控制器
  TextEditingController? markdownTextEditingController;

  //聚焦对象
  late FocusNode contentFocusNode = FocusNode();
  late FocusNode titleFocusNode = FocusNode();
  Timer? _timer;

  late final KeyboardObserver keyboardObserver;

  @override
  void onInit() {
    if (state.showWriteTime) _calculateDuration();
    keyboardObserver = KeyboardObserver(
      onHeightChanged: (_) {},
      onStateChanged: (state) {
        switch (state) {
          case KeyboardState.opening:
            break;
          case KeyboardState.closing:
            unFocus();
            break;
          case KeyboardState.closed:
            break;
          case KeyboardState.unknown:
            break;
        }
      },
    );
    keyboardObserver.start();
    super.onInit();
  }

  @override
  void onReady() async {
    await _initEdit();
    quillController?.addListener(_listenCount);
    markdownTextEditingController?.addListener(_listenCount);
    if (state.firstLineIndent) {
      quillController?.document.changes.listen((change) {
        final operations = change.change.operations;
        final lastOperation = operations.last;
        if (lastOperation.key == 'insert' && lastOperation.value == '\n') {
          insertNewLine();
        }
      });
    }
    super.onReady();
  }

  @override
  void onClose() {
    keyboardObserver.stop();
    titleTextEditingController.dispose();
    titleFocusNode.dispose();
    contentFocusNode.dispose();
    quillController?.dispose();
    markdownTextEditingController?.dispose();
    _timer?.cancel();
    _timer = null;
    super.onClose();
  }

  Future<void> _initEdit() async {
    //如果是新增，更具不同的分类展示不同的操作
    if (Get.arguments.runtimeType == List<Object?>) {
      // 配置日记类型
      state.type = Get.arguments[0] as DiaryType;
      switch (state.type) {
        case DiaryType.text:
        case DiaryType.richText:
          quillController = QuillController.basic();
        case DiaryType.markdown:
          markdownTextEditingController = TextEditingController();
      }
      state.currentDiary = Diary();
      if (state.firstLineIndent) insertNewLine();
      if (state.autoWeather) {
        unawaited(getPositionAndWeather(context: Get.context!));
      }
      selectCategory(Get.arguments[1] as String?);
    } else {
      //如果是编辑，将日记对象赋值
      state.isNew = false;
      state.originalDiary = Get.arguments as Diary;
      state.type = DiaryType.values.firstWhere(
        (type) => type.value == state.originalDiary!.type,
      );
      state.currentDiary = state.originalDiary!.clone();
      // 获取分类名称
      if (state.originalDiary!.categoryId != null) {
        state.categoryName =
            IsarUtil.getCategoryName(
              state.originalDiary!.categoryId!,
            )!.categoryName;
      }
      // 初始化标题控制器
      titleTextEditingController.text = state.originalDiary!.title;
      // 待替换的字符串map
      final Map<String, String> replaceMap = {};
      //临时拷贝一份图片数据
      for (final name in state.originalDiary!.imageName) {
        // 生成一个临时文件
        final xFile = XFile(FileUtil.getRealPath('image', name));
        replaceMap[name] = xFile.path;
        state.imageFileList.add(xFile);
      }
      //临时拷贝一份拷贝音频数据到缓存目录
      for (final name in state.originalDiary!.audioName) {
        state.audioNameList.add(name);
        await File(
          FileUtil.getRealPath('audio', name),
        ).copy(FileUtil.getCachePath(name));
      }
      //临时拷贝一份视频数据，别忘记了缩略图
      for (final name in state.originalDiary!.videoName) {
        // 生成一个临时文件
        final videoXFile = XFile(FileUtil.getRealPath('video', name));
        replaceMap[name] = videoXFile.path;
        state.videoFileList.add(videoXFile);
      }
      switch (state.type) {
        case DiaryType.text:
        case DiaryType.richText:
          quillController = QuillController(
            document: Document.fromJson(
              jsonDecode(
                await Kmp.replaceWithKmp(
                  text: state.originalDiary!.content,
                  replacements: replaceMap,
                ),
              ),
            ),
            selection: const TextSelection.collapsed(offset: 0),
          );
        case DiaryType.markdown:
          markdownTextEditingController = TextEditingController(
            text: await Kmp.replaceWithKmp(
              text: state.originalDiary!.content,
              replacements: replaceMap,
            ),
          );
      }
      state.totalCount.value = _toPlainText().length;
    }
    state.isInit = true;
    update(['body']);
  }

  //计算写作时长
  void _calculateDuration() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      state.duration += const Duration(seconds: 1);
      state.durationString.value = state.duration
          .toString()
          .split('.')[0]
          .padLeft(8, '0');
    });
  }

  String _toPlainText() {
    return state.type == DiaryType.markdown
        ? _markdownToPlainText(markdownTextEditingController!.text)
        : quillController!.document.toPlainText([
          ImageEmbedBuilder(isEdit: true),
          VideoEmbedBuilder(isEdit: true),
          AudioEmbedBuilder(isEdit: true),
          TextIndentEmbedBuilder(isEdit: true),
        ]).trim();
  }

  String _markdownToPlainText(String markdown) {
    if (markdown.isEmpty) return '';

    return MarkdownConverter.convert(markdown);
  }

  void _listenCount() {
    state.totalCount.value =
        markdownTextEditingController?.text.length ??
        quillController?.selection.baseOffset ??
        0;
  }

  // 插入换行时自动首行缩进
  void insertNewLine() {
    if (quillController == null) return;
    final index = quillController!.selection.baseOffset;
    final length = quillController!.selection.extentOffset - index;
    quillController?.replaceText(
      index,
      length,
      const TextIndentEmbed('2'),
      null,
    );
    quillController?.moveCursorToPosition(index + 1);
  }

  void insertNewImage({required String imagePath}) {
    if (quillController == null) return;
    final imageBlock = ImageBlockEmbed.fromName(imagePath);
    final index = quillController!.selection.baseOffset;
    final length = quillController!.selection.extentOffset - index;
    quillController?.replaceText(index, length, imageBlock, null);
    quillController?.moveCursorToPosition(index + 1);
  }

  void insertNewVideo({required String videoPath}) {
    if (quillController == null) return;
    final videoBlock = VideoBlockEmbed.fromName(videoPath);
    final index = quillController!.selection.baseOffset;
    final length = quillController!.selection.extentOffset - index;
    quillController?.replaceText(index, length, videoBlock, null);
    //插入一个换行
    quillController?.moveCursorToPosition(index + 1);
  }

  Future<void> addNewImage(XFile xFile, {bool isMarkdown = false}) async {
    state.imageFileList.add(xFile);
    if (!isMarkdown) insertNewImage(imagePath: xFile.path);
    update(['Image']);
  }

  // 多张图片

  Future<void> pickMultiPhoto(BuildContext context) async {
    final List<XFile> photoList = await MediaUtil.pickMultiPhoto(10);
    if (photoList.isNotEmpty && context.mounted) {
      Navigator.pop(context);
      for (final photo in photoList) {
        await addNewImage(photo, isMarkdown: false);
      }
      return;
    } else {
      if (!context.mounted) return;
      toast.info(message: context.l10n.cancelSelect);
    }
  }

  //单张照片
  Future<void> pickPhoto(
    ImageSource imageSource,
    BuildContext context, {
    bool isMarkdown = false,
  }) async {
    //获取一张图片
    final XFile? photo = await MediaUtil.pickPhoto(imageSource);
    if (photo != null && context.mounted) {
      Navigator.pop<String>(context, photo.path);
      await addNewImage(photo, isMarkdown: isMarkdown);
    } else {
      if (!context.mounted) return;
      toast.info(message: context.l10n.cancelSelect);
    }
  }

  //画图照片
  Future<void> pickDraw(Uint8List dataList, BuildContext context) async {
    final path = FileUtil.getCachePath('${const Uuid().v7()}.png');
    Navigator.pop(context, path);
    addNewImage(XFile.fromData(dataList, path: path)..saveTo(path));
  }

  //网络图片
  Future<void> networkImage(BuildContext context) async {
    toast.info(message: context.l10n.imageFetching);
    final imageUrl = await Api.updateImageUrl();
    if (imageUrl == null && context.mounted) {
      toast.error(message: context.l10n.imageFetchError);
      return;
    }
    final imageData = await Api.getImageData(imageUrl!.first);
    if (imageData == null && context.mounted) {
      toast.error(message: context.l10n.imageFetchError);
      return;
    }
    final path = FileUtil.getCachePath('${const Uuid().v7()}.png');
    if (context.mounted) Navigator.pop(context, path);
    addNewImage(XFile.fromData(imageData!, path: path)..saveTo(path));
  }

  Future<void> addNewVideo(XFile xFile) async {
    //视频list中新增一个
    state.videoFileList.add(xFile);
    insertNewVideo(videoPath: xFile.path);
    update(['Video']);
  }

  //选择视频
  Future<void> pickVideo(ImageSource imageSource, BuildContext context) async {
    // 获取一个视频
    final XFile? video = await MediaUtil.pickVideo(imageSource);
    if (video != null && context.mounted) {
      Navigator.pop(context);
      await addNewVideo(video);
    } else {
      if (!context.mounted) return;
      toast.info(message: context.l10n.cancelSelect);
    }
  }

  //预览图片
  // void toPhotoView(List<String> imagePath, int index) {
  //   Get.toNamed(AppRoutes.photoPage, arguments: [imagePath, index]);
  // }

  //预览视频
  // void toVideoView(List<String> videoPath, int index) {
  //   Get.toNamed(AppRoutes.videoPage, arguments: [videoPath, index]);
  // }

  //删除图片
  void deleteImage({required String path}) async {
    // 移除这个图片
    state.imageFileList.removeWhere((file) => file.path == path);
    await FileUtil.deleteFile(path);
    //Get.backLegacy();
    toast.success(message: 'Deleted');
    update(['Image']);
  }

  //长按设置封面
  void setCover(int index) {
    final coverFile = state.imageFileList[index];
    state.imageFileList
      ..removeAt(index)
      ..insert(0, coverFile);
    toast.info(message: 'Set image ${index + 1} as cover');
    update(['Image']);
  }

  //获取封面颜色
  Future<int?> getCoverColor() async {
    if (state.imageFileList.isNotEmpty) {
      return await MediaUtil.getColorScheme(
        FileImage(File(state.imageFileList.first.path)),
      );
    } else {
      return null;
    }
  }

  //获取封面比例
  Future<double?> getCoverAspect() async {
    //如果有封面就获取
    if (state.imageFileList.isNotEmpty) {
      return await MediaUtil.getImageAspectRatio(
        FileImage(File(state.imageFileList.first.path)),
      );
    } else {
      return null;
    }
  }

  //保存日记
  Future<void> saveDiary({required BuildContext context}) async {
    state.isSaving = true;
    update(['modal']);
    try {
      // 根据文本中的实际内容移除不需要的资源
      final originContent =
          state.type == DiaryType.markdown
              ? markdownTextEditingController!.text.trim()
              : jsonEncode(quillController!.document.toDelta().toJson());
      final needImage = await Kmp.findMatches(
        text: originContent,
        patterns: state.imagePathList,
      );
      final needVideo = await Kmp.findMatches(
        text: originContent,
        patterns: state.videoPathList,
      );
      final needAudio = await Kmp.findMatches(
        text: originContent,
        patterns: state.audioNameList,
      );
      state.imageFileList.removeWhere((file) => !needImage.contains(file.path));
      state.videoFileList.removeWhere((file) => !needVideo.contains(file.path));
      state.audioNameList.removeWhere((name) => !needAudio.contains(name));
      // 保存图片
      final imageNameMap = await MediaUtil.saveImages(
        imageFileList: state.imageFileList,
      );
      // 保存视频
      final videoNameMap = await MediaUtil.saveVideo(
        videoFileList: state.videoFileList,
      );
      //保存录音
      final audioNameMap = await MediaUtil.saveAudio(state.audioNameList);
      final content = await Kmp.replaceWithKmp(
        text: originContent,
        replacements: {...imageNameMap, ...videoNameMap, ...audioNameMap},
      );
      final contentText = _toPlainText().removeLineBreaks();
      final tokenizer = await JiebaRs.cutAll(text: contentText);
      final keywords = await JiebaRs.extractKeywordsTfidf(
        text: contentText,
        topK: BigInt.from(5),
        allowedPos: [],
      );
      final sortByWeight =
          keywords..sort((a, b) => b.weight.compareTo(a.weight));
      final sortedKeywords = sortByWeight.map((e) => e.keyword).toList();
      state.currentDiary
        ..title = titleTextEditingController.text
        ..content = content
        ..type = state.type.value
        ..contentText = contentText
        ..audioName = state.audioNameList
        ..imageName = imageNameMap.values.toList()
        ..videoName = videoNameMap.values.toList()
        ..tokenizer = tokenizer
        ..keywords = sortedKeywords
        ..imageColor = await getCoverColor()
        ..aspect = await getCoverAspect();

      await IsarUtil.updateADiary(
        oldDiary: state.originalDiary,
        newDiary: state.currentDiary,
      );
      state.isNew
          ? Get.back(result: state.currentDiary.categoryId ?? '')
          : Get.back(result: 'changed');
      if (!context.mounted) return;
      toast.success(
        message:
            state.isNew
                ? context.l10n.editSaveSuccess
                : context.l10n.editChangeSuccess,
      );
    } catch (e, s) {
      debugPrint('saveDiary error: $e\n$s');
      state.isSaving = false;
      update(['modal']);
      if (context.mounted) {
        toast.error(message: context.l10n.editSaveFailed);
      }
    }
  }

  DateTime? oldTime;

  void handleBack({required BuildContext context}) {
    final DateTime currentTime = DateTime.now();
    if (oldTime != null &&
        currentTime.difference(oldTime!) < const Duration(seconds: 3)) {
      Get.back();
    } else {
      oldTime = currentTime;
      toast.info(message: context.l10n.backAgainToExit);
    }
  }

  Future<void> changeDate({required BuildContext context}) async {
    final nowDateTime = await showDatePicker(
      context: context,
      initialDate: state.currentDiary.time,
      lastDate: DateTime.now(),
      initialDatePickerMode: DatePickerMode.day,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      firstDate: DateTime.now().subtract(const Duration(days: 365)),
    );
    if (nowDateTime != null) {
      state.currentDiary.time = state.currentDiary.time.copyWith(
        year: nowDateTime.year,
        month: nowDateTime.month,
        day: nowDateTime.day,
      );
      update(['Date']);
    }
  }

  Future<void> changeTime({required BuildContext context}) async {
    final nowTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(state.currentDiary.time),
    );
    if (nowTime != null) {
      state.currentDiary.time = state.currentDiary.time.copyWith(
        hour: nowTime.hour,
        minute: nowTime.minute,
      );
      update(['Date']);
    }
  }

  void unFocus() {
    titleFocusNode.unfocus();
    contentFocusNode.unfocus();
  }

  //去画画
  void toDrawPage(BuildContext context) {
    unFocus();
    Get.toNamed(AppRoutes.drawPage);
  }

  void changeRate(value) {
    state.currentDiary.mood = value;
    update(['Mood']);
  }

  //获取天气，同时获取定位
  Future<void> getPositionAndWeather({required BuildContext context}) async {
    final key = PrefUtil.getValue<String>('qweatherKey');
    final apiHost = PrefUtil.getValue<String>('qweatherApiHost');
    if (key.isNullOrBlank || apiHost.isNullOrBlank) return;

    try {
      state.isProcessing = true;
      update(['Weather']);

      // 获取定位
      final position = await Api.updatePosition(context);
      if (position == null && context.mounted) {
        _handleError(context, context.l10n.locationError);
        return;
      }
      state.currentDiary.position = position!;
      if (!context.mounted) return;
      // 获取天气
      final weather = await Api.updateWeather(
        context: context,
        position: LatLng(double.parse(position[0]), double.parse(position[1])),
      );
      if (weather == null && context.mounted) {
        _handleError(context, context.l10n.weatherError);
        return;
      }
      state.currentDiary.weather = weather!;
      state.isProcessing = false;
      if (context.mounted) {
        toast.success(message: context.l10n.weatherSuccess);
      }
      update(['Weather']);
    } catch (e) {
      state.isProcessing = false;
      update(['Weather']);
      if (context.mounted) {
        toast.error(message: context.l10n.weatherError);
      }
    }
  }

  void _handleError(BuildContext context, String message) {
    state.isProcessing = false;
    update(['Weather']);
    if (context.mounted) {
      toast.error(message: message);
    }
  }

  Future<void> pickAudio(BuildContext context) async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.audio,
        allowMultiple: false,
        withReadStream: true,
      );

      if (result == null && context.mounted) {
        toast.info(message: context.l10n.cancelSelect);
        return;
      }

      final pickedFile = result!.files.single;
      final originalFileName = pickedFile.name;
      final fileExtension = extension(originalFileName);

      final audioName = 'audio-${const Uuid().v7()}$fileExtension';
      final cachePath = FileUtil.getCachePath(audioName);

      await pickedFile.readStream!.pipe(File(cachePath).openWrite());

      if (context.mounted) {
        Navigator.pop(context);
      }

      setAudioName(audioName);
    } catch (e) {
      if (!context.mounted) return;
      toast.error(message: context.l10n.audioFileError);
    }
  }

  //获取音频名称
  void setAudioName(String name) {
    if (quillController == null) return;
    state.audioNameList.add(name);
    final audioBlock = AudioBlockEmbed.fromName(name);
    final index = quillController!.selection.baseOffset;
    final length = quillController!.selection.extentOffset - index;
    // 插入音频 Embed
    quillController?.replaceText(index, length, audioBlock, null);
    quillController?.moveCursorToPosition(index + 1);
    update(['Audio']);
  }

  //删除音频
  Future<void> deleteAudio(String path) async {
    // 删除文件
    await FileUtil.deleteFile(path);
    // 删除对应的组件
    state.audioNameList.removeWhere((name) => path.endsWith(name));
    update(['Audio']);
    toast.success(message: 'Deleted');
  }

  //添加一个标签
  void addTag({required String tag, required BuildContext context}) {
    tag = tag.trim();
    if (tag.isNotEmpty) {
      if (state.currentDiary.tags.contains(tag)) {
        toast.info(message: context.l10n.editAddTagAlreadyExist);
        return;
      }
      state.currentDiary.tags.add(tag);
      update(['Tag']);
    } else {
      toast.info(message: context.l10n.editAddTagCannotEmpty);
    }
  }

  //移除一个标签
  void removeTag(index) {
    state.currentDiary.tags.removeAt(index);
    update(['Tag']);
  }

  void selectCategory(String? id) {
    state.currentDiary.categoryId = id;
    if (id == null) {
      state.categoryName = '';
    } else {
      final category = IsarUtil.getCategoryName(id);
      if (category != null) {
        state.categoryName = category.categoryName;
      }
    }
    update(['CategoryName']);
  }

  void renderMarkdown() {
    state.renderMarkdown.value = !state.renderMarkdown.value;
  }

  void focusContent() {
    if (!contentFocusNode.hasFocus) contentFocusNode.requestFocus();
  }

  bool get hasGoals => GoalUtil.getGoals().isNotEmpty;

  Future<void> analyzeGoals(BuildContext context) async {
    final apiKey = SignatureUtil.checkOpenAI();
    if (apiKey == null) return;

    final goals = GoalUtil.getGoals();
    if (goals.isEmpty) return;

    final noteText = _toPlainText().trim();
    if (noteText.isEmpty) {
      toast.info(message: 'Write something first before analyzing.');
      return;
    }

    final resultNotifier = ValueNotifier<List<_GoalStat>?>(null);

    if (!context.mounted) return;
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (sheetCtx) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.5,
          minChildSize: 0.3,
          maxChildSize: 0.9,
          builder: (_, scrollController) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 40,
                      height: 4,
                      margin: const EdgeInsets.only(bottom: 16),
                      decoration: BoxDecoration(
                        color: sheetCtx.theme.colorScheme.onSurface
                            .withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.track_changes_rounded,
                        color: sheetCtx.theme.colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Goal Progress',
                        style: sheetCtx.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 24),
                  Expanded(
                    child: ValueListenableBuilder<List<_GoalStat>?>(
                      valueListenable: resultNotifier,
                      builder: (_, stats, __) {
                        if (stats == null) {
                          return const Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircularProgressIndicator(),
                                SizedBox(height: 12),
                                Text('Analyzing your entry…'),
                              ],
                            ),
                          );
                        }
                        if (stats.isEmpty) {
                          return const Center(
                            child: Text('Could not analyze. Try again.'),
                          );
                        }
                        return ListView.separated(
                          controller: scrollController,
                          itemCount: stats.length,
                          separatorBuilder: (_, __) =>
                              const SizedBox(height: 16),
                          itemBuilder: (_, i) {
                            final stat = stats[i];
                            final color = stat.percentage >= 67
                                ? Colors.green
                                : stat.percentage >= 34
                                    ? Colors.amber
                                    : Colors.redAccent;
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        stat.goal,
                                        style: sheetCtx.textTheme.titleSmall
                                            ?.copyWith(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      '${stat.percentage}%',
                                      style: sheetCtx.textTheme.titleSmall
                                          ?.copyWith(
                                        color: color,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 6),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(4),
                                  child: LinearProgressIndicator(
                                    value: stat.percentage / 100,
                                    backgroundColor:
                                        color.withValues(alpha: 0.15),
                                    valueColor:
                                        AlwaysStoppedAnimation<Color>(color),
                                    minHeight: 8,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  stat.insight,
                                  style: sheetCtx.textTheme.bodySmall?.copyWith(
                                    color: sheetCtx.theme.colorScheme.onSurface
                                        .withValues(alpha: 0.6),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );

    final goalsText = goals.map((g) => '- ${g.title}').join('\n');

    final stream = await Api.getChatGPT(
      apiKey,
      [
        const OpenAIMessage(
          role: 'system',
          content:
              'You analyze journal entries against user goals. '
              'Return ONLY a valid JSON array with no extra text or markdown. '
              'Each element must have exactly: "goal" (string, exact goal title), '
              '"percentage" (integer 0–100, how much this entry reflects progress toward that goal), '
              '"insight" (one encouraging sentence about the entry in relation to that goal).',
        ),
        OpenAIMessage(
          role: 'user',
          content: 'Goals:\n$goalsText\n\nJournal entry:\n$noteText',
        ),
      ],
      'gpt-4o-mini',
    );

    final buffer = StringBuffer();
    stream?.listen(
      (chunk) {
        if (chunk.startsWith('data: ') && !chunk.contains('[DONE]')) {
          try {
            final result = OpenAIStreamResponse.fromJson(
              jsonDecode(chunk.substring(6)) as Map<String, dynamic>,
            );
            final delta = result.choices?.first.delta?.content;
            if (delta != null) buffer.write(delta);
          } catch (_) {}
        }
      },
      onDone: () {
        try {
          final raw = jsonDecode(buffer.toString()) as List;
          resultNotifier.value = raw.map((e) {
            final m = e as Map<String, dynamic>;
            return _GoalStat(
              goal: m['goal'] as String? ?? '',
              percentage:
                  ((m['percentage'] as num?)?.toInt() ?? 0).clamp(0, 100),
              insight: m['insight'] as String? ?? '',
            );
          }).toList();
        } catch (_) {
          resultNotifier.value = [];
        }
      },
    );
  }
}
