import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:moodiary/api/api.dart';
import 'package:moodiary/common/models/openai.dart';
import 'package:moodiary/common/values/keyboard_state.dart';
import 'package:moodiary/components/keyboard_listener/keyboard_listener.dart';
import 'package:moodiary/utils/notice_util.dart';
import 'package:moodiary/utils/signature_util.dart';

import 'assistant_state.dart';

class AssistantLogic extends GetxController {
  final AssistantState state = AssistantState();

  //输入框控制器
  late TextEditingController textEditingController = TextEditingController();

  //控制器
  late ScrollController scrollController = ScrollController();

  //聚焦对象
  late FocusNode focusNode = FocusNode();
  late final KeyboardObserver keyboardObserver;

  List<double> heightList = [];

  @override
  void onInit() {
    keyboardObserver = KeyboardObserver(
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
  void onClose() {
    keyboardObserver.stop();
    textEditingController.dispose();
    scrollController.dispose();
    focusNode.dispose();
    super.onClose();
  }

  void handleBack() {
    if (focusNode.hasFocus) {
      unFocus();
      Future.delayed(const Duration(seconds: 1), () {
        Get.back();
      });
    } else {
      Get.back();
    }
  }

  void unFocus() {
    focusNode.unfocus();
  }

  void newChat() {
    state.messages = {};
    update();
  }

  void clearText() {
    textEditingController.clear();
  }

  static const _openAIModels = [
    'gpt-4o-mini',
    'gpt-4o',
    'gpt-4-turbo',
    'o1-mini',
  ];

  //对话
  Future<void> getAi(String ask) async {
    final apiKey = SignatureUtil.checkOpenAI();
    if (apiKey != null) {
      //清空输入框
      clearText();
      //失去焦点
      unFocus();
      //拿到用户提问后，对话上下文中增加一项用户提问
      final askTime = DateTime.now();
      state.messages[askTime] = OpenAIMessage(role: 'user', content: ask);
      update();
      toBottom();
      //带着上下文请求
      final model = _openAIModels[state.modelVersion.value];
      final stream = await Api.getChatGPT(
        apiKey,
        state.messages.values.toList(),
        model,
      );
      //如果收到了请求，添加一个回答上下文
      final replyTime = DateTime.now();
      state.messages[replyTime] = const OpenAIMessage(role: 'assistant', content: '');
      update();
      //接收stream
      stream?.listen((content) {
        if (content.startsWith('data: ') && !content.contains('[DONE]')) {
          final OpenAIStreamResponse result = OpenAIStreamResponse.fromJson(
            jsonDecode(content.substring(6)) as Map<String, dynamic>,
          );
          final delta = result.choices?.first.delta?.content;
          if (delta != null) {
            final currentMessage = state.messages[replyTime]!;
            state.messages[replyTime] = currentMessage.copyWith(
              content: currentMessage.content + delta,
            );
            HapticFeedback.vibrate();
            update();
            toBottom();
          }
        }
      });
    }
  }

  void toBottom() {
    scrollController.jumpTo(scrollController.position.maxScrollExtent);
  }

  String getText() {
    return textEditingController.text;
  }

  Future<void> checkGetAi() async {
    final text = getText();
    if (text != '') {
      await getAi(text);
    } else {
      toast.info(message: '还没有输入问题');
    }
  }

  void changeModel(version) {
    state.modelVersion.value = version;
    state.messages = {};
  }
}
