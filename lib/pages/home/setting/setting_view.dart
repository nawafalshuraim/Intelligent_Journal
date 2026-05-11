import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moodiary/common/values/colors.dart';
import 'package:moodiary/common/values/language.dart';
import 'package:moodiary/components/base/clipper.dart';
import 'package:moodiary/components/base/sheet.dart';
import 'package:moodiary/components/base/tile/setting_tile.dart';
import 'package:moodiary/components/color_sheet/color_sheet_view.dart';
import 'package:moodiary/components/dashboard/dashboard_view.dart';
import 'package:moodiary/components/language_dialog/language_dialog_view.dart';
import 'package:moodiary/components/remove_password/remove_password_view.dart';
import 'package:moodiary/components/set_password/set_password_view.dart';
import 'package:moodiary/components/theme_mode_dialog/theme_mode_dialog_view.dart';
import 'package:moodiary/l10n/l10n.dart';

import 'setting_logic.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(SettingLogic());
    final state = Bind.find<SettingLogic>().state;

    final size = MediaQuery.sizeOf(context);

    Widget buildDashboard() {
      return Column(
        children: [
          AdaptiveTitleTile(title: context.l10n.settingDashboard),
          const DashboardComponent(),
        ],
      );
    }

    Widget buildData() {
      return Column(
        children: [
          AdaptiveTitleTile(title: context.l10n.settingData),
          Card.filled(
            color: context.theme.colorScheme.surfaceContainerLow,
            margin: EdgeInsets.zero,
            child: Column(
              children: [
                AdaptiveListTile(
                  title: Text(context.l10n.settingRecycle),
                  isFirst: true,
                  trailing: const Icon(Icons.chevron_right_rounded),
                  onTap: () {
                    logic.toRecyclePage();
                  },
                  leading: const Icon(Icons.delete_rounded),
                ),
                AdaptiveListTile(
                  title: Text(context.l10n.settingClean),
                  leading: const Icon(Icons.cleaning_services_rounded),
                  isLast: true,
                  trailing: GetBuilder<SettingLogic>(
                    id: 'DataUsage',
                    builder: (_) {
                      return Text(
                        state.dataUsage,
                        style: context.textTheme.bodySmall!.copyWith(
                          color: context.theme.colorScheme.primary,
                        ),
                      );
                    },
                  ),
                  onTap: () {
                    logic.deleteCache();
                  },
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget buildDisplay() {
      return Column(
        children: [
          AdaptiveTitleTile(title: context.l10n.settingDisplay),
          Card.filled(
            color: context.theme.colorScheme.surfaceContainerLow,
            margin: EdgeInsets.zero,
            child: Column(
              children: [
                AdaptiveListTile(
                  title: Text(context.l10n.settingDiary),
                  leading: const Icon(Icons.article_rounded),
                  trailing: const Icon(Icons.chevron_right_rounded),
                  isFirst: true,
                  onTap: () {
                    logic.toDiarySettingPage();
                  },
                ),
                AdaptiveListTile(
                  title: Text(context.l10n.settingThemeMode),
                  leading: const Icon(Icons.invert_colors_rounded),
                  trailing: Text(
                    switch (state.themeMode) {
                      0 => context.l10n.themeModeSystem,
                      1 => context.l10n.themeModeLight,
                      2 => context.l10n.themeModeDark,
                      int() => throw UnimplementedError(),
                    },
                    style: context.textTheme.bodySmall!.copyWith(
                      color: context.theme.colorScheme.primary,
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const ThemeModeDialogComponent();
                      },
                    );
                  },
                ),
                AdaptiveListTile(
                  title: Text(context.l10n.settingColor),
                  leading: const Icon(Icons.color_lens_rounded),
                  trailing: Text(
                    AppColor.colorName(state.color, context),
                    style: context.textTheme.bodySmall!.copyWith(
                      color: context.theme.colorScheme.primary,
                    ),
                  ),
                  onTap: () {
                    showFloatingModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const ColorSheetComponent();
                      },
                    );
                  },
                ),
                AdaptiveListTile(
                  title: Text(context.l10n.settingFontStyle),
                  leading: const Icon(Icons.format_size_rounded),
                  trailing: const Icon(Icons.chevron_right_rounded),
                  onTap: () {
                    logic.toFontSizePage();
                  },
                ),
                AdaptiveListTile(
                  title: Text(context.l10n.settingHomepageName),
                  leading: const Icon(Icons.drive_file_rename_outline_rounded),
                  isLast: true,
                  trailing: GetBuilder<SettingLogic>(
                    id: 'CustomTitle',
                    builder: (_) {
                      return Text(
                        state.customTitle,
                        style: context.textTheme.bodySmall!.copyWith(
                          color: context.theme.colorScheme.primary,
                        ),
                      );
                    },
                  ),
                  onTap: () async {
                    final res = await showTextInputDialog(
                      context: context,
                      textFields: [
                        DialogTextField(initialText: state.customTitle),
                      ],
                      title: context.l10n.settingHomepageName,
                    );
                    if (res != null) {
                      logic.setCustomTitle(title: res.first);
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget buildPrivacy() {
      return Column(
        children: [
          AdaptiveTitleTile(title: context.l10n.settingPrivacy),
          Card.filled(
            color: context.theme.colorScheme.surfaceContainerLow,
            margin: EdgeInsets.zero,
            child: Column(
              children: [
                // GetBuilder<SettingLogic>(
                //     id: 'Local',
                //     builder: (_) {
                //       return AdaptiveSwitchListTile(
                //         value: state.local,
                //         onChanged: null,
                //         title: Text(context.l10n.settingLocal),
                //         subtitle: Text(context.l10n.settingLocalDes),
                //         secondary: const Icon(Icons.cloud_off_rounded),
                //       );
                //     }),
                GetBuilder<SettingLogic>(
                  id: 'Lock',
                  builder: (_) {
                    return AdaptiveListTile(
                      trailing: Text(
                        state.lock
                            ? context.l10n.settingLockOpen
                            : context.l10n.settingLockNotOpen,
                        style: context.textTheme.bodySmall!.copyWith(
                          color: context.theme.colorScheme.primary,
                        ),
                      ),
                      isFirst: true,
                      onTap: () async {
                        final res = await showOkCancelAlertDialog(
                          context: context,
                          title: context.l10n.settingLock,
                          message:
                              state.lock
                                  ? context.l10n.settingLockResetLock
                                  : context.l10n.settingLockChooseLockType,
                          okLabel:
                              state.lock
                                  ? context.l10n.settingLockClose
                                  : context.l10n.settingLockTypeNumber,
                        );
                        if (res == OkCancelResult.ok && context.mounted) {
                          showFloatingModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (context) {
                              return state.lock
                                  ? const RemovePasswordComponent()
                                  : const SetPasswordComponent();
                            },
                          );
                        }
                      },
                      title: Text(context.l10n.settingLock),
                      leading: const Icon(Icons.lock_rounded),
                    );
                  },
                ),
                GetBuilder<SettingLogic>(
                  id: 'Lock',
                  builder: (_) {
                    return AdaptiveSwitchListTile(
                      value: state.lockNow,
                      onChanged:
                          state.lock
                              ? (value) {
                                logic.lockNow(value);
                              }
                              : null,
                      title: Text(context.l10n.settingLockNow),
                      subtitle: context.l10n.settingLockNowDes,
                      secondary: const Icon(Icons.lock_clock_rounded),
                    );
                  },
                ),
                Obx(() {
                  return AdaptiveSwitchListTile(
                    value: state.backendPrivacy.value,
                    onChanged: logic.changeBackendPrivacy,
                    title: context.l10n.settingBackendPrivacyProtection,
                    subtitle: context.l10n.settingBackendPrivacyProtectionDes,
                    secondary: const Icon(Icons.remove_red_eye_rounded),
                    isLast: true,
                  );
                }),
              ],
            ),
          ),
        ],
      );
    }

    Widget buildMore() {
      return Column(
        children: [
          AdaptiveTitleTile(title: context.l10n.settingMore),
          Card.filled(
            color: context.theme.colorScheme.surfaceContainerLow,
            margin: EdgeInsets.zero,
            child: Column(
              children: [
                AdaptiveListTile(
                  title: Text(context.l10n.settingAbout),
                  leading: const Icon(Icons.info_rounded),
                  trailing: const Icon(Icons.chevron_right_rounded),
                  isFirst: true,
                  onTap: () {
                    logic.toAboutPage();
                  },
                ),
                AdaptiveListTile(
                  title: Text(context.l10n.settingLanguage),
                  leading: const Icon(Icons.language_rounded),
                  isLast: true,
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const LanguageDialogComponent();
                      },
                    );
                  },
                  trailing: Obx(() {
                    return Text(
                      state.language.value.l10nText(context),
                      style: context.textTheme.bodySmall!.copyWith(
                        color: context.theme.colorScheme.primary,
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return GetBuilder<SettingLogic>(
      assignId: true,
      builder: (_) {
        return PageClipper(
          child: ListView(
            cacheExtent: size.height * 2,
            children: [
              buildDashboard(),
              buildData(),
              buildDisplay(),
              buildPrivacy(),
              buildMore(),
            ],
          ),
        );
      },
    );
  }
}
