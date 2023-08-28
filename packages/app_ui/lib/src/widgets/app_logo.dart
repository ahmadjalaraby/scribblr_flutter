import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// {@template app_logo}
/// A default app logo image
/// {@endtemplate}
class AppLogo extends StatelessWidget {
  /// {@macro app_logo}
  const AppLogo({
    required SvgGenImage logo,
    super.key,
    this.width = 150,
    this.height = 200,
  }) : _logo = logo;

  /// App logo for dark mode
  AppLogo.dark({Key? key})
      : this(
          key: key,
          logo: Assets.images.scribblrDark,
        );

  /// App lgoo for light mode
  AppLogo.light({Key? key})
      : this(
          key: key,
          logo: Assets.images.scribblrLight,
        );

  /// The logo to be displayed.
  final SvgGenImage _logo;

  /// The width of the logo
  final double width;

  /// The height of the logo
  final double height;

  @override
  Widget build(BuildContext context) {
    return _logo.svg(
      fit: BoxFit.cover,
      width: width,
      height: height,
    );
  }
}
