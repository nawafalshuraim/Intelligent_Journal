import 'dart:convert';

import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moodiary/api/api.dart';
import 'package:moodiary/common/models/openai.dart';
import 'package:moodiary/persistence/isar.dart';
import 'package:moodiary/utils/array_util.dart';
import 'package:moodiary/utils/signature_util.dart';

import 'analyse_state.dart';

class AnalyseLogic extends GetxController {
  final AnalyseState state = AnalyseState();

  @override
  void onReady() async {
    await getMoodAndWeatherByRange(state.dateRange[0], state.dateRange[1]);
    super.onReady();
  }

  //选中两个日期后，查询指定范围内的日记
  Future<void> getMoodAndWeatherByRange(DateTime start, DateTime end) async {
    //清空原有数据
    clearResult();
    //获取数据开始
    state.finished = false;
    update();
    state.moodList = await IsarUtil.getMoodByDateRange(
      start,
      end.subtract(const Duration(days: -1)),
    );

    final weatherList = await IsarUtil.getWeatherByDateRange(
      start,
      end.subtract(const Duration(days: -1)),
    );
    for (final weather in weatherList) {
      if (weather.isNotEmpty) {
        state.weatherList.add(weather.first);
      }
    }
    state.moodMap = ArrayUtil.countList(state.moodList);
    state.weatherMap = ArrayUtil.countList(state.weatherList);
    state.finished = true;
    update();
  }

  void clearResult() {
    state.moodList.clear();
    state.weatherList.clear();
    state.moodMap.clear();
    state.weatherMap.clear();
  }

  //弹出日期选择框
  Future<void> openDatePicker(context) async {
    final result = await showCalendarDatePicker2Dialog(
      context: context,
      config: CalendarDatePicker2WithActionButtonsConfig(
        calendarViewMode: CalendarDatePicker2Mode.day,
        calendarType: CalendarDatePicker2Type.range,
        selectableDayPredicate: (date) => date.isBefore(DateTime.now()),
      ),
      dialogSize: const Size(325, 400),
      value: state.dateRange,
      borderRadius: BorderRadius.circular(20.0),
    );
    if (result != null) {
      state.dateRange[0] = result[0]!;
      state.dateRange[1] = result[1]!;
      update();
      getMoodAndWeatherByRange(result[0]!, result[1]!);
    }
  }

  Future<void> getAi() async {
    final apiKey = SignatureUtil.checkOpenAI();
    if (apiKey != null) {
      state.reply = '';
      update();
      final stream = await Api.getChatGPT(apiKey, [
        const OpenAIMessage(
          role: 'system',
          content:
              'I will give you mood data from a diary app covering a specific time period. The mood value is a float from 0.0 to 1.0 where lower means worse mood and higher means better mood. The data is a Map where the Key is the mood index and Value is how many times that mood was recorded. Analyze the user\'s recent mood and give practical suggestions. Provide only the conclusion, no analysis process.',
        ),
        OpenAIMessage(
          role: 'user',
          content: 'Mood data: ${state.moodMap.toString()}',
        ),
      ], 'gpt-4o-mini');
      stream?.listen((content) {
        if (content.startsWith('data: ') && !content.contains('[DONE]')) {
          final OpenAIStreamResponse result = OpenAIStreamResponse.fromJson(
            jsonDecode(content.substring(6)) as Map<String, dynamic>,
          );
          final delta = result.choices?.first.delta?.content;
          if (delta != null) {
            state.reply += delta;
            update();
          }
        }
      });
    }
  }
}
