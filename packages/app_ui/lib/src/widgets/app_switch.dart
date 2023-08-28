import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// {@template app_switch}
/// A default switch for the app_ui component
/// {@endtemplate}
class AppSwitch extends StatelessWidget {
  /// {@macro app_switch}
  AppSwitch({
    required this.value,
    required this.onChanged,
    super.key,
    this.onText = '',
    this.offText,
    TextStyle? textStyle,
  }) : textStyle = textStyle ?? _defaultTextStyle;

  /// The default text style for the switch
  static final TextStyle _defaultTextStyle = LTRTextStyle.bodyXLarge.copyWith(
    fontWeight: AppFontWeight.semiBold,
  );

  /// Text displayed when the switch is set to true.
  ///
  /// Defaults to an empty string.
  final String onText;

  /// Text displayed when this switch is set to false.
  ///
  /// if null then the [onText] will show
  final String? offText;

  /// Whether this switch is checked or not.
  final bool value;

  /// Called when the value of the checkbox should change.
  final ValueChanged<bool>? onChanged;

  /// The text style of the switch, if null then the default [_defaultTextStyle]
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Switch(
          value: value,
          onChanged: onChanged,
        ),
        const SizedBox(width: AppSpacing.lg),
        Text(
          value ? onText : (offText ?? onText),
          style: textStyle,
        ),
      ],
    );
  }
}
