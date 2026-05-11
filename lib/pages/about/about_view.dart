import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moodiary/components/base/button.dart';
import 'package:moodiary/components/base/tile/setting_tile.dart';
import 'package:moodiary/l10n/l10n.dart';

import 'about_logic.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final logic = Bind.find<AboutLogic>();

    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.aboutTitle),
        leading: const PageBackButton(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 32.0,
            children: [
              Image.asset(
                'assets/icons/splash_notebook.png',
                height: 160.0,
                width: 160.0,
              ),
              Card.outlined(
                color: context.theme.colorScheme.surfaceContainerLow,
                child: Column(
                  children: [
                    AdaptiveListTile(
                      leading: const Icon(Icons.file_copy_rounded),
                      title: Text(context.l10n.aboutUserAgreement),
                      isFirst: true,
                      trailing: const Icon(Icons.chevron_right_rounded),
                      onTap: () {
                        logic.toAgreement();
                      },
                    ),
                    AdaptiveListTile(
                      leading: const Icon(Icons.privacy_tip_rounded),
                      title: Text(context.l10n.aboutPrivacyPolicy),
                      isLast: true,
                      trailing: const Icon(Icons.chevron_right_rounded),
                      onTap: () {
                        logic.toPrivacy();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
