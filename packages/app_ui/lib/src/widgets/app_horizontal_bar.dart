import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// {@template app_horizontal_bar}
/// A horizontal bar with custom style and animation
/// {@endtemplate}
class AppHorizontalBar extends StatelessWidget {
  /// {@macro app_horizontal_bar}
  AppHorizontalBar({
    required this.steps,
    required this.currentStep,
    double? height,
    Color? color,
    Color? backgroundColor,
    Duration? duration,
    Cubic? curve,
    EdgeInsets? margin,
    super.key,
  })  : assert(
          steps > 0,
          'Steps must be greater than 0',
        ),
        assert(
          currentStep >= 0,
          'Current Step must be greater than or equal to 0',
        ),
        assert(
          steps >= currentStep,
          'Current step must be smaller or equal to steps',
        ),
        height = height ?? _defaultBarHeight,
        color = color ?? _defaultBarColor,
        backgroundColor = backgroundColor ?? _defaultBarBackgroundColor,
        duration = duration ?? _defaultBarDuration,
        margin = margin ?? _defaultBarMargin,
        curve = curve ?? _defaultAnimationCurve;

  /// The default height of the horizontal bar
  static const double _defaultBarHeight = 12;

  /// The default color of the horizontal bar
  static final Color _defaultBarColor = AppColors.primary.shade900;

  /// The default background color of the horizontal bar
  static final Color _defaultBarBackgroundColor = AppColors.grey.shade200;

  /// The default duration of the animated container
  static const Duration _defaultBarDuration = Duration(milliseconds: 300);

  /// The default margin of the horizontal bar
  static const EdgeInsets _defaultBarMargin = EdgeInsets.only(
    right: AppSpacing.xlg,
    left: AppSpacing.sm,
  );

  /// The default curve of the animation of the horizontal bar
  static const Cubic _defaultAnimationCurve = Curves.easeInOut;

  /// The height of the horizontal bar, defaults to [_defaultBarHeight]
  final double height;

  /// The color of the horizontal bar, defaults to [_defaultBarColor]
  final Color color;

  /// The background color of the horizontal bar, defaults
  /// to [_defaultBarBackgroundColor]
  final Color backgroundColor;

  /// The duration of the animation for horizontal bar, defaults
  /// to [_defaultBarDuration]
  final Duration duration;

  /// The steps which the horizontal bar will be divided into
  final int steps;

  /// The current step of the horizontal bar, must be between 0 and [steps]
  final int currentStep;

  /// The margin of the horizontal bar, defaults to [_defaultBarMargin]
  final EdgeInsets margin;

  /// The curve of the animation, defaults to [_defaultAnimationCurve]
  final Cubic curve;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final oneStepWidth = constraints.maxWidth / (steps * 1.0);
          return Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: AnimatedContainer(
                  duration: duration,
                  height: height,
                  width: oneStepWidth * currentStep,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
