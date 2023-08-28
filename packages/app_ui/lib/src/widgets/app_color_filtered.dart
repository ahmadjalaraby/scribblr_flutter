import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// {@template app_color_filter}
/// A color filtered widget in app_ui
/// {@endtemplate}
class AppColorFiltered extends StatelessWidget {
  /// {@macro app_color_filter}
  const AppColorFiltered({
    required this.child,
    super.key,
    BlendMode? blendMode,
    Color? color,
  })  : blendMode = blendMode ?? _defaultBlendMode,
        color = color ?? _defaultColor;

  /// A named constructor for theme, if theme is light then the color
  ///  will be [AppColors.black]
  /// if not then the default color will be [AppColors.white].
  const AppColorFiltered.theme({
    required Widget child,
    Key? key,
    bool isDarkTheme = false,
  }) : this(
          key: key,
          child: child,
          color: isDarkTheme ? AppColors.white : AppColors.black,
        );

  /// The default blend mode for the [AppColorFiltered]
  static const BlendMode _defaultBlendMode = BlendMode.srcIn;

  /// The default color for the [AppColorFiltered]
  static const Color _defaultColor = AppColors.black;

  /// The child widget of the color filter [AppColorFiltered]
  final Widget child;

  /// The color of the filter, if null then the default
  /// color [_defaultBlendMode]
  final Color color;

  /// The blend mode of the filter, if null then the default
  /// blend mode [_defaultBlendMode]
  final BlendMode blendMode;

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        color,
        blendMode,
      ),
      child: child,
    );
  }
}
