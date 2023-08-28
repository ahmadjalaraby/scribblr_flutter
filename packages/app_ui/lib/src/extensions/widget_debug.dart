import 'package:app_ui/app_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// {@template widget_debug}
/// A red border show the widget height and width
/// {@endtemplate}
extension WidgetX on Widget {
  /// Show a debug border arround the widget
  /// if [kDebugMode] is false then will not show the debug border
  ///
  Widget debugBorder() {
    if (kDebugMode) {
      return DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.red,
          ),
        ),
        child: this,
      );
    } else {
      return this;
    }
  }
}
