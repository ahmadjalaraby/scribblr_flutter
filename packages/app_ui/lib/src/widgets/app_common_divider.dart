import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// {@template app_common_divider}
/// A default divider to use in the app_ui
/// {@endtemplate}
class AppCommonDivider extends StatelessWidget {
  /// {@macro app_common_divider}
  const AppCommonDivider({
    super.key,
    String? text,
    double? height,
    double? thickness,
    Color? color,
  })  : _text = text,
        _height = height ?? _defaultDividerHeight,
        _thickness = thickness ?? _defaultDividerThickness,
        _color = color;

  /// Default height of the divider
  static const double _defaultDividerHeight = 1;

  /// default thickness of the divider
  static const double _defaultDividerThickness = 1;

  /// The middle text between the two dividers, if null then one divider will
  /// render
  final String? _text;

  /// The height of the divider, if null then the
  /// value will be [_defaultDividerHeight]
  final double? _height;

  /// The thickness of the divider, if null then the default
  /// value will be [_defaultDividerThickness]
  final double? _thickness;

  /// The color of the divider, if null then the default theme color
  final Color? _color;

  @override
  Widget build(BuildContext context) {
    final dividerColor = _color ?? Theme.of(context).dividerTheme.color;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: _color,
            thickness: _thickness,
            height: _height,
          ),
        ),
        if (_text != null) ...[
          const SizedBox(width: AppSpacing.lg),
          Text(
            _text!,
            style: LTRTextStyle.headline6.copyWith(
              fontWeight: AppFontWeight.medium,
              color: AppColors.grey.shade700,
            ),
          ),
          const SizedBox(width: AppSpacing.lg),
        ],
        Expanded(
          child: Divider(
            color: dividerColor,
            thickness: _thickness,
            height: _height,
          ),
        ),
      ],
    );
  }
}
