import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart';
import 'package:moodiary/components/base/modal.dart';
import 'package:moodiary/l10n/l10n.dart';

class HomeNavigatorBar extends StatelessWidget {
  static const double defaultNavigatorBarHeight = 64.0;

  final Animation<double> animation;

  final RxInt navigatorIndex;

  final Function(int) onTap;

  final Modal modal;

  const HomeNavigatorBar({
    super.key,
    required this.animation,
    required this.navigatorIndex,
    required this.onTap,
    required this.modal,
  });

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.paddingOf(context);
    final size = MediaQuery.sizeOf(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final labelColor = isDark ? Colors.white : Colors.black87;

    final navigatorBarHeight =
        defaultNavigatorBarHeight + padding.bottom + 16;

    return Visibility(
      visible: size.width < 600,
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return SizedBox(
            height: navigatorBarHeight * animation.value,
            child: child,
          );
        },
        child: OverflowBox(
          maxHeight: navigatorBarHeight,
          alignment: Alignment.topCenter,
          child: Stack(
            children: [
              Obx(() {
                return GlassBottomBar(
                  tabs: [
                    GlassBottomBarTab(
                      label: context.l10n.homeNavigatorDiary,
                      icon: Image.asset(
                        'assets/icons/nav_diary.png',
                        width: 32,
                        height: 32,
                      ),
                    ),
                    GlassBottomBarTab(
                      label: context.l10n.homeNavigatorCalendar,
                      icon: Image.asset(
                        'assets/icons/nav_calendar.png',
                        width: 32,
                        height: 32,
                      ),
                    ),
                    GlassBottomBarTab(
                      label: context.l10n.homeNavigatorGoals,
                      icon: Image.asset(
                        'assets/icons/nav_target.png',
                        width: 32,
                        height: 32,
                      ),
                    ),
                    GlassBottomBarTab(
                      label: context.l10n.homeNavigatorSetting,
                      icon: Image.asset(
                        'assets/icons/nav_setting.png',
                        width: 32,
                        height: 32,
                      ),
                    ),
                  ],
                  selectedIndex: navigatorIndex.value,
                  onTabSelected: onTap,
                  barHeight: defaultNavigatorBarHeight,
                  horizontalPadding: 24,
                  verticalPadding: padding.bottom > 0 ? padding.bottom : 8,
                  barBorderRadius: 32,
                  iconSize: 32,
                  indicatorExpansion: 28,
                  labelFontSize: 11,
                  textStyle: TextStyle(
                    color: labelColor,
                    fontSize: 11,
                  ),
                );
              }),
              modal,
            ],
          ),
        ),
      ),
    );
  }
}
