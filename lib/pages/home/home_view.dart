import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:get/get.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart';
import 'package:moodiary/common/values/diary_type.dart';
import 'package:moodiary/components/base/modal.dart';
import 'package:moodiary/components/desktop_wrapper/background.dart';
import 'package:moodiary/components/home_fab/home_fab_view.dart';
import 'package:moodiary/components/home_nativatorbar/navigatorbar.dart';
import 'package:moodiary/l10n/l10n.dart';
import 'package:moodiary/pages/home/calendar/calendar_view.dart';
import 'package:moodiary/pages/home/diary/diary_view.dart';
import 'package:moodiary/pages/home/goals/goals_view.dart';
import 'package:moodiary/pages/home/setting/setting_view.dart';

import 'home_logic.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeLogic logic = Get.put(HomeLogic());

    return LiquidGlassScope(
      child: Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          AdaptiveLayout(
            transitionDuration: const Duration(milliseconds: 200),
            primaryNavigation: SlotLayout(
              config: {
                Breakpoints.mediumAndUp: SlotLayout.from(
                  key: const ValueKey('navigation medium'),
                  builder: (_) {
                    return GestureDetector(
                      onPanStart: (details) {
                        appWindow.startDragging();
                      },
                      child: Obx(() {
                        return Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          color: context.theme.colorScheme.surfaceContainer,
                          child: AdaptiveScaffold.standardNavigationRail(
                            destinations:
                                [
                                      NavigationDestination(
                                        icon: Image.asset('assets/icons/nav_diary.png', width: 45, height: 45),
                                        label: context.l10n.homeNavigatorDiary,
                                        selectedIcon: Image.asset('assets/icons/nav_diary.png', width: 45, height: 45),
                                      ),
                                      NavigationDestination(
                                        icon: Image.asset('assets/icons/nav_calendar.png', width: 45, height: 45),
                                        label: context.l10n.homeNavigatorCalendar,
                                        selectedIcon: Image.asset('assets/icons/nav_calendar.png', width: 45, height: 45),
                                      ),
                                      NavigationDestination(
                                        icon: Image.asset('assets/icons/nav_target.png', width: 45, height: 45),
                                        label: context.l10n.homeNavigatorGoals,
                                        selectedIcon: Image.asset('assets/icons/nav_target.png', width: 45, height: 45),
                                      ),
                                      NavigationDestination(
                                        icon: Image.asset('assets/icons/nav_setting.png', width: 45, height: 45),
                                        label: context.l10n.homeNavigatorSetting,
                                        selectedIcon: Image.asset('assets/icons/nav_setting.png', width: 45, height: 45),
                                      ),
                                    ]
                                    .map(
                                      (destination) =>
                                          AdaptiveScaffold.toRailDestination(
                                            destination,
                                          ),
                                    )
                                    .toList(),
                            selectedIndex: logic.navigatorIndex.value,
                            backgroundColor:
                                context.theme.colorScheme.surfaceContainer,
                            labelType: NavigationRailLabelType.all,
                            padding: EdgeInsets.zero,
                            trailing: Expanded(
                              child: DesktopHomeFabComponent(
                                isToTopShow: logic.isToTopShow,
                                toTop: logic.toTop,
                                toMarkdown: () async {
                                  await logic.toEditPage(
                                    type: DiaryType.markdown,
                                  );
                                },
                                toPlainText: () async {
                                  await logic.toEditPage(type: DiaryType.text);
                                },
                                toRichText: () async {
                                  await logic.toEditPage(
                                    type: DiaryType.richText,
                                  );
                                },
                              ),
                            ),
                            onDestinationSelected: logic.changeNavigator,
                          ),
                        );
                      }),
                    );
                  },
                ),
              },
            ),
            body: SlotLayout(
              config: {
                Breakpoints.standard: SlotLayout.from(
                  key: const ValueKey('body'),
                  builder: (_) {
                    return AdaptiveBackground(
                      child: PageView(
                        key: logic.bodyKey,
                        controller: logic.pageController,
                        onPageChanged: logic.onPageChanged,
                        children: const [
                          DiaryPage(),
                          CalendarPage(),
                          GoalsPage(),
                          SettingPage(),
                        ],
                      ),
                    );
                  },
                ),
              },
            ),
          ),
          Modal(onTap: logic.closeFab, animation: logic.fabAnimation),
        ],
      ),
      bottomNavigationBar: HomeNavigatorBar(
        animation: logic.barAnimation,
        navigatorIndex: logic.navigatorIndex,
        onTap: logic.changeNavigator,
        modal: Modal(onTap: logic.closeFab, animation: logic.fabAnimation),
      ),
      floatingActionButton: HomeFabComponent(
        animation: logic.fabAnimation,
        shouldShow: logic.shouldShow,
        isToTopShow: logic.isToTopShow,
        isExpanded: logic.isFabExpanded,
        showShadow: true,
        toTop: logic.toTop,
        toMarkdown: () async {
          await logic.toEditPage(type: DiaryType.markdown);
        },
        toPlainText: () async {
          await logic.toEditPage(type: DiaryType.text);
        },
        toRichText: () async {
          await logic.toEditPage(type: DiaryType.richText);
        },
        closeFab: logic.closeFab,
        openFab: logic.openFab,
      ),
    ),
    );
  }
}
