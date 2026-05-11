import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:markdown_widget/markdown_widget.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Privacy Policy')),
      body: MarkdownWidget(
        data: '''# Privacy Policy

Updated: **2026/4/29**

Effective: **2026/4/29**

## Introduction

*Reach* is a private journal app built to help you track your goals and daily progress. Your privacy is our priority. This policy explains what data we collect, how we use it, and how we protect it.

**By using Reach, you agree to this Privacy Policy.**

## 1. Data We Collect

Reach is designed to keep your data on your device. We collect minimal information:

+   **Journal entries and goals**: stored locally on your device only.
+   **App usage data**: we do not collect analytics or behavioral data.
+   **No account required**: we do not collect your name, email, or any personal identifiers.

## 2. Data Storage

+   All your journal data is stored locally on your device.
+   We do not upload your content to any server.
+   You are in full control of your data at all times.

## 3. Data Security

We take security seriously. Your data is stored on-device and can be protected with a PIN lock and background privacy features built into the app.

## 4. Data Sharing

We do not share, sell, or transfer your personal data to any third party.

## 5. Your Rights

You can delete your data at any time directly from the app. Uninstalling the app removes all locally stored data.

## 6. Changes to This Policy

We may update this policy from time to time. Continued use of Reach after changes means you accept the updated policy.''',
        selectable: true,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        config:
            context.isDarkMode
                ? MarkdownConfig.darkConfig
                : MarkdownConfig.defaultConfig,
      ),
    );
  }
}
