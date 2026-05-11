import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:markdown_widget/markdown_widget.dart';

class AgreementPage extends StatelessWidget {
  const AgreementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Agreement')),
      body: MarkdownWidget(
        data: '''# User Agreement

*Reach* (hereinafter referred to as "we") provides services to users (hereinafter referred to as "you") in accordance with this agreement. This agreement is legally binding on both you and us.

#### 1. About Reach

Reach is an intelligent, private journal designed to help you track your goals and daily progress. By using Reach, you agree to the terms outlined in this agreement.

#### 2. Your Content

All journal entries and data you create belong to you. We do not access, read, or share your content.

#### 3. Privacy Protection

We are committed to protecting your privacy. Your personal information is handled in accordance with our Privacy Policy.

#### 4. Limitations of Liability

Reach is provided as-is. We are not liable for any loss of data or damages arising from use of the app.

#### 5. Changes to This Agreement

We may update this agreement from time to time. Continued use of Reach after changes constitutes acceptance of the updated terms.''',
        selectable: true,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        config:
            context.theme.colorScheme.brightness == Brightness.dark
                ? MarkdownConfig.darkConfig
                : MarkdownConfig.defaultConfig,
      ),
    );
  }
}
