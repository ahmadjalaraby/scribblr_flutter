import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// {@template app_button}
/// A default app button
/// {@endtemplate}
class AppButton extends StatelessWidget {
  /// {@macro app_button}
  const AppButton._({
    required this.child,
    this.onPressed,
    Color? buttonColor,
    Color? disabledButtonColor,
    Color? foregroundColor,
    Color? disabledForegroundColor,
    BorderSide? borderSide,
    double? elevation,
    TextStyle? textStyle,
    Size? maximumSize,
    Size? minimumSize,
    EdgeInsets? padding,
    super.key,
  })  : _buttonColor = buttonColor ?? AppColors.white,
        _disabledButtonColor = disabledButtonColor ?? AppColors.disabledButton,
        _borderSide = borderSide,
        _foregroundColor = foregroundColor ?? AppColors.white,
        _disabledForegroundColor = disabledForegroundColor ?? AppColors.black,
        _elevation = elevation ?? 0,
        _textStyle = textStyle,
        _maximumSize = maximumSize ?? _defaultMaximumSize,
        _minimumSize = minimumSize ?? _defaultMinimumSize,
        _padding = padding ?? _smallPadding;

  /// Filled primary button
  AppButton.light({
    required Widget child,
    Key? key,
    VoidCallback? onPressed,
    double? eleveation,
    TextStyle? textStyle,
  }) : this._(
          key: key,
          child: child,
          onPressed: onPressed,
          buttonColor: AppColors.primary.shade900,
          elevation: eleveation,
          textStyle: textStyle,
        );

  /// Filled tansparent primary button
  AppButton.lightTransparent({
    required Widget child,
    Key? key,
    VoidCallback? onPressed,
    double? eleveation,
    TextStyle? textStyle,
  }) : this._(
          key: key,
          child: child,
          onPressed: onPressed,
          buttonColor: AppColors.primary.shade50,
          foregroundColor: AppColors.primary.shade900,
          elevation: eleveation,
          textStyle: textStyle,
        );

  /// Filled black button
  const AppButton.dark({
    required Widget child,
    Key? key,
    VoidCallback? onPressed,
    double? eleveation,
    TextStyle? textStyle,
  }) : this._(
          key: key,
          child: child,
          onPressed: onPressed,
          buttonColor: AppColors.dark4,
          foregroundColor: AppColors.white,
          elevation: eleveation,
          textStyle: textStyle,
        );

  /// White border button
  AppButton.whiteBorder({
    required Widget child,
    Key? key,
    VoidCallback? onPressed,
    TextStyle? textStyle,
    bool isDarkTheme = false,
  }) : this._(
          key: key,
          child: child,
          onPressed: onPressed,
          buttonColor: isDarkTheme ? AppColors.dark2 : AppColors.white,
          foregroundColor:
              isDarkTheme ? AppColors.white : AppColors.grey.shade900,
          borderSide: BorderSide(
            color: isDarkTheme ? AppColors.dark4 : AppColors.grey.shade200,
          ),
          textStyle: textStyle,
        );

  /// The maximum size of the smalll variant of the button
  static const _smallMaximumSize = Size(double.infinity, 40);

  /// The minimum size of the smalll variant of the button
  static const _smallMinimumSize = Size(0, 40);

  /// The maximum size of the button
  static const _defaultMaximumSize = Size(double.infinity, 60);

  /// The minimum size of the button
  static const _defaultMinimumSize = Size(double.infinity, 60);

  /// The padding of the small variant of the button
  static const _smallPadding = EdgeInsets.symmetric(
    horizontal: AppSpacing.lg,
  );

  /// The padding of the button
  static const _defaultPadding = EdgeInsets.symmetric(
    vertical: AppSpacing.lg,
  );

  /// [VoidCallback] called when the button is pressed
  /// Button is disabled when null
  final VoidCallback? onPressed;

  /// A background color of the button
  ///
  /// Defaults to [Colors.white]
  final Color _buttonColor;

  /// A disabled background color of the button
  ///
  /// Defaults to [AppColors.primary.shade200]
  final Color? _disabledButtonColor;

  /// A color of the texts, icons etc
  ///
  /// Defaults to [AppColors.white]
  final Color _foregroundColor;

  /// Color of the disabled texts, icons etc
  ///
  /// Default to [AppColors.black.shade500]
  final Color _disabledForegroundColor;

  /// A border of the button
  final BorderSide? _borderSide;

  /// Elevation of the button
  final double _elevation;

  /// [TextStyle] of the button text
  ///
  /// Defaults to [LTRTextStyle.bodyLarge]
  final TextStyle? _textStyle;

  /// The maximum size of the button
  ///
  /// Defaults to [_defaultMaximumSize]
  final Size _maximumSize;

  /// The minimum size of the button
  ///
  /// Defaults to [_defaultMinimumSize]
  final Size _minimumSize;

  /// The padding of the button
  ///
  /// Defaults to [_smallPadding]
  final EdgeInsets _padding;

  /// [Widget] displayed on the button
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final textStyle = _textStyle ?? Theme.of(context).textTheme.labelLarge;
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        maximumSize: MaterialStateProperty.all(_maximumSize),
        padding: MaterialStateProperty.all(_padding),
        minimumSize: MaterialStateProperty.all(_minimumSize),
        textStyle: MaterialStateProperty.all(textStyle),
        backgroundColor: onPressed == null
            ? MaterialStateProperty.all(_disabledButtonColor)
            : MaterialStateProperty.all(_buttonColor),
        elevation: MaterialStateProperty.all(_elevation),
        foregroundColor: onPressed == null
            ? MaterialStateProperty.all(_disabledForegroundColor)
            : MaterialStateProperty.all(_foregroundColor),
        side: MaterialStateProperty.all(_borderSide),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
      child: child,
    );
  }
}
