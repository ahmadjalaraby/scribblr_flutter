import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// The app consists of two main style definitions: LTR, RTL
///
/// LTR text style is primarily used for LTR design fonts
///
/// RTL text style is used for RTL design fonts
///
/// The default apps's [TextTheme]  is
///
///
/// LTR Text Style Definitions
///
abstract class LTRTextStyle {
  static const _baseTextStyle = TextStyle(
    package: 'app_ui',
    fontWeight: AppFontWeight.regular,
    fontFamily: FontFamily.urbanist,
    decoration: TextDecoration.none,
    textBaseline: TextBaseline.alphabetic,
  );

  /// Display 2 Text Style
  static final TextStyle display2 = _baseTextStyle.copyWith(
    fontSize: 57,
    fontWeight: AppFontWeight.bold,
    height: 1.12,
    letterSpacing: -0.25,
  );

  /// Display 3 Text Style
  static final TextStyle display3 = _baseTextStyle.copyWith(
    fontSize: 45,
    fontWeight: AppFontWeight.bold,
    height: 1.15,
  );

  /// Headline 1 Text Style
  static final TextStyle headline1 = _baseTextStyle.copyWith(
    fontSize: 48,
    fontWeight: AppFontWeight.bold,
    height: 1.6,
  );
  

  /// Headline 2 Text Style
  static final TextStyle headline2 = _baseTextStyle.copyWith(
    fontSize: 40,
    fontWeight: AppFontWeight.bold,
    height: 1.6,
  );

  /// Headline 3 Text Style
  static final TextStyle headline3 = _baseTextStyle.copyWith(
    fontSize: 32,
    fontWeight: AppFontWeight.bold,
    height: 1.6,
  );

  /// Headline 4 Text Style
  static final TextStyle headline4 = _baseTextStyle.copyWith(
    fontSize: 24,
    fontWeight: AppFontWeight.bold,
    height: 1.6,
  );

  /// Headline 5 Text Style
  static final TextStyle headline5 = _baseTextStyle.copyWith(
    fontSize: 20,
    fontWeight: AppFontWeight.bold,
    height: 1.6,
  );

  /// Headline 6 Text Style
  static final TextStyle headline6 = _baseTextStyle.copyWith(
    fontSize: 18,
    fontWeight: AppFontWeight.bold,
    height: 1.6,
  );

  /// Subtitle 1 Text Style
  static final TextStyle subtitle1 = _baseTextStyle.copyWith(
    fontSize: 16,
    height: 1.5,
    letterSpacing: 0.1,
  );

  /// Subtitle 2 Text Style
  static final TextStyle subtitle2 = _baseTextStyle.copyWith(
    fontSize: 14,
    height: 1.42,
    letterSpacing: 0.1,
  );

  /// Body XLarge Bold Text Style
  static final TextStyle bodyXLarge = _baseTextStyle.copyWith(
    fontSize: 18,
    fontWeight: AppFontWeight.bold,
    height: 1.6,
  );

  /// Body Large Bold Text Style
  static final TextStyle bodyLarge = _baseTextStyle.copyWith(
    fontSize: 16,
    fontWeight: AppFontWeight.bold,
    height: 1.6,
  );

  /// Body Medium Bold Text Style
  static final TextStyle bodyMedium = _baseTextStyle.copyWith(
    fontSize: 14,
    fontWeight: AppFontWeight.bold,
    height: 1.6,
  );

  /// Body Small Bold Text Style
  static final TextStyle bodySmall = _baseTextStyle.copyWith(
    fontSize: 12,
    fontWeight: AppFontWeight.bold,
    height: 1.6,
  );

  /// Body XSmall Bold Text Style
  static final TextStyle bodyXSmall = _baseTextStyle.copyWith(
    fontSize: 10,
    fontWeight: AppFontWeight.bold,
    height: 1.6,
  );
}

/// RTL Text Style Definitions
abstract class RTLTextStyle {
  static const _baseTextStyle = TextStyle(
    package: 'app_ui',
    fontWeight: AppFontWeight.regular,
    fontFamily: FontFamily.rubik,
    decoration: TextDecoration.none,
    textBaseline: TextBaseline.alphabetic,
  );

  /// Display 2 Text Style
  static final TextStyle display2 = _baseTextStyle.copyWith(
    fontSize: 57,
    fontWeight: AppFontWeight.bold,
    height: 1.12,
    letterSpacing: -0.25,
  );

  /// Display 3 Text Style
  static final TextStyle display3 = _baseTextStyle.copyWith(
    fontSize: 45,
    fontWeight: AppFontWeight.bold,
    height: 1.15,
  );

  /// Headline 1 Text Style
  static final TextStyle headline1 = _baseTextStyle.copyWith(
    fontSize: 48,
    fontWeight: AppFontWeight.bold,
    height: 1.6,
  );

  /// Headline 2 Text Style
  static final TextStyle headline2 = _baseTextStyle.copyWith(
    fontSize: 40,
    fontWeight: AppFontWeight.bold,
    height: 1.6,
  );

  /// Headline 3 Text Style
  static final TextStyle headline3 = _baseTextStyle.copyWith(
    fontSize: 32,
    fontWeight: AppFontWeight.bold,
    height: 1.6,
  );

  /// Headline 4 Text Style
  static final TextStyle headline4 = _baseTextStyle.copyWith(
    fontSize: 24,
    fontWeight: AppFontWeight.bold,
    height: 1.6,
  );

  /// Headline 5 Text Style
  static final TextStyle headline5 = _baseTextStyle.copyWith(
    fontSize: 20,
    fontWeight: AppFontWeight.bold,
    height: 1.6,
  );

  /// Headline 6 Text Style
  static final TextStyle headline6 = _baseTextStyle.copyWith(
    fontSize: 18,
    fontWeight: AppFontWeight.bold,
    height: 1.6,
  );

  /// Subtitle 1 Text Style
  static final TextStyle subtitle1 = _baseTextStyle.copyWith(
    fontSize: 16,
    height: 1.5,
    letterSpacing: 0.1,
  );

  /// Subtitle 2 Text Style
  static final TextStyle subtitle2 = _baseTextStyle.copyWith(
    fontSize: 14,
    height: 1.42,
    letterSpacing: 0.1,
  );

  /// Body XLarge Bold Text Style
  static final TextStyle bodyXLarge = _baseTextStyle.copyWith(
    fontSize: 18,
    fontWeight: AppFontWeight.bold,
    height: 1.6,
  );

  /// Body Large Bold Text Style
  static final TextStyle bodyLarge = _baseTextStyle.copyWith(
    fontSize: 16,
    fontWeight: AppFontWeight.bold,
    height: 1.6,
  );

  /// Body Medium Bold Text Style
  static final TextStyle bodyMedium = _baseTextStyle.copyWith(
    fontSize: 14,
    fontWeight: AppFontWeight.bold,
    height: 1.6,
  );

  /// Body Small Bold Text Style
  static final TextStyle bodySmall = _baseTextStyle.copyWith(
    fontSize: 12,
    fontWeight: AppFontWeight.bold,
    height: 1.6,
  );

  /// Body XSmall Bold Text Style
  static final TextStyle bodyXSmall = _baseTextStyle.copyWith(
    fontSize: 10,
    fontWeight: AppFontWeight.bold,
    height: 1.6,
  );
}
