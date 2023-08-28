import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// {@template app_checkbox}
/// A default checkbox for the app_ui component
/// {@endtemplate}
class AppCheckbox extends StatelessWidget {
  /// {@macro app_checkbox}
  AppCheckbox({
    required this.value,
    required this.onChanged,
    super.key,
    this.text,
    TextStyle? textStyle,
  }) : textStyle = textStyle ?? _defaultTextStyle;

  /// The default text style for the switch
  static final TextStyle _defaultTextStyle = LTRTextStyle.bodyXLarge.copyWith(
    fontWeight: AppFontWeight.semiBold,
  );

  /// Text displayed when the checkbox is set to true.
  ///
  /// Defaults to an empty string.
  final String? text;

  /// Whether this checkbox is checked or not.
  final bool value;

  /// Called when the value of the checkbox should change.
  final ValueChanged<bool?>? onChanged;

  /// The text style of the checkbox, if null then the
  ///  default [_defaultTextStyle]
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Transform.scale(
            scale: 1.3,
            child: Checkbox(
              value: value,
              onChanged: onChanged,
            ),
          ),
        ),
        const SizedBox(width: AppSpacing.lg),
        if (text != null) ...[
          Text(
            text!,
            style: textStyle,
          ),
        ],
      ],
    );
  }
}
