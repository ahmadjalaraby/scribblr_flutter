import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// {@template default_app_bar}
/// A default app bar in app_ui
/// {@endtemplate}
class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// {@macro default_app_bar}
  const DefaultAppBar({
    Size? size,
    double? vPadding,
    double? hPadding,
    this.widget,
    this.actions,
    this.centerTitle,
    super.key,
  })  : size = size ?? _defaultSize,
        vMargin = vPadding ?? _defaultVMargin,
        hMargin = hPadding ?? _defaultHMargin;

  /// A default app bar with title widget
  DefaultAppBar.title({
    required String title,
    Key? key,
  }) : this(
          key: key,
          widget: Text(title),
        );

  /// The default vertical margin for the appbar
  static const double _defaultVMargin = AppSpacing.xlg;

  /// The default horizontal margin for the appbar
  static const double _defaultHMargin = AppSpacing.lg;

  /// The default size of the appbar
  static const Size _defaultSize = Size.fromHeight(80);

  /// The size of the appbar, defaults to [_defaultSize]
  final Size size;

  /// The vertical margin of appbar, defaults to [_defaultVMargin]
  final double vMargin;

  /// The horizontal margin of appbar, defaults to [_defaultHMargin]
  final double hMargin;

  /// The title of the appbar
  final Widget? widget;

  /// The action icons of the appbar
  final List<Widget>? actions;

  /// This determines if the title in center of the app bar or not.
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: EdgeInsets.symmetric(
        vertical: vMargin,
        horizontal: hMargin,
      ),
      child: AppBar(
        title: widget,
        automaticallyImplyLeading: false,
        centerTitle: centerTitle,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: AppColorFiltered(
            color: isDarkTheme ? AppColors.white : AppColors.black,
            child: Assets.images.arrowLeftLight.svg(),
          ),
        ),
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => size;
}
