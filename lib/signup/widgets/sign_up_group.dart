import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class SignupGroup extends StatelessWidget {
  const SignupGroup({
    required this.title,
    required this.subtitle,
    required this.children,
    super.key,
  });

  final String title;

  final String subtitle;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.xlg),
      child: AnimatedScrollView(
        children: [
          Text(
            title,
            style: LTRTextStyle.headline3,
          ),
          const SizedBox(height: AppSpacing.lg),
          Text(
            subtitle,
            style: LTRTextStyle.bodyXLarge.copyWith(
              fontWeight: AppFontWeight.regular,
            ),
          ),
          const SizedBox(height: AppSpacing.xlg),
          ...children,
        ],
      ),
    );
  }
}
