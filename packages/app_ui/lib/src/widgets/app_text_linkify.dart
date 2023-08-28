import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// {@template app_text_linkify}
/// A widget for clickable text links.
/// {@endtemplate}
class AppTextLinkify extends StatelessWidget {
  ///{@macro app_text_linkify}
  AppTextLinkify({
    required this.text,
    this.onTap,
    TextStyle? textStyle,
    Color? color,
    super.key,
  })  : textStyle = textStyle ?? _defaultTextStyle,
        color = color ?? _defaultTextColor;

  /// The default text style of the link.
  static final TextStyle _defaultTextStyle = LTRTextStyle.headline6;

  /// The default color of the text link.
  static final Color _defaultTextColor = AppColors.primary.shade900;

  /// The text which will render as the link.
  final String text;

  /// The text style of the link, if null then the default [_defaultTextStyle]
  final TextStyle textStyle;

  /// The color of the link, if null then the default [_defaultTextColor]
  final Color color;

  /// The action to perform when clicking on the link. Default to null.
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: textStyle.copyWith(
          color: color,
        ),
      ),
    );
  }
}
