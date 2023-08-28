import 'package:flutter/material.dart';

/// Define the color palette for the App UI Kit
abstract class AppColors {
  /// Black Color
  static const Color black = Color(0xFF000000);

  /// Light Black
  static const Color lightBlack = Colors.black54;

  /// White Color
  static const white = Color(0xFFFFFFFF);

  /// Transparent Color
  static const Color transparent = Color(0x00000000);

  /// The grey primary color and swatch
  static const MaterialColor grey = Colors.grey;

  /// The primary color and swatch
  static const MaterialColor primary = MaterialColor(
    0xFFA4634D,
    <int, Color>{
      50: Color(0xFFF6EFED),
      100: Color(0xFFEDE0DB),
      200: Color(0xFFE4D0CA),
      300: Color(0xFFDBC1B8),
      400: Color(0xFFD2B1A6),
      500: Color(0xFFC8A194),
      600: Color(0xFFBF9282),
      700: Color(0xFFB68271),
      800: Color(0xFFAD735F),
      900: Color(0xFFA4634D),
    },
  );

  /// Secondary Color and Swatch
  static const MaterialColor secondary = MaterialColor(
    0xFF4A5F7A,
    <int, Color>{
      50: Color(0xFFEDEFF2),
      100: Color(0xFFDBDFE4),
      200: Color(0xFFC9CFD7),
      300: Color(0xFFB7BFCA),
      400: Color(0xFFA5AFBD),
      500: Color(0xFF929FAF),
      600: Color(0xFF808FA2),
      700: Color(0xFF6E7F95),
      800: Color(0xFF5C6F87),
      900: Color(0xFF4A5F7A),
    },
  );

  /// Success Color
  static const Color success = Color(0xFF12D18E);

  /// Info Color
  static const Color info = Color(0xFF246BFD);

  /// Warning Color
  static const Color warning = Color(0xFFFACC15);

  /// Error Color
  static const Color error = Color(0xFFF75555);

  /// Disabled Color
  static const Color disabled = Color(0xFFD8D8D8);

  /// Disabled Button Color
  static const Color disabledButton = Color(0xFF834F3E);

  /// Brown Gradient Color
  static const LinearGradient gradientBrown = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Color(0xFFAC7E6E),
      Color(0xFFA4634D),
    ],
  );

  /// Red Gradient Color
  static const LinearGradient gradientRed = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Color(0xFFFF7475),
      Color(0xFFF5484A),
    ],
  );

  /// Yellow Gradient Color
  static const LinearGradient gradientYellow = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Color(0xFFFFE580),
      Color(0xFFFACC15),
    ],
  );

  /// Orange Gradient Color
  static const LinearGradient gradientOrange = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Color(0xFFFFBB58),
      Color(0xFFF89300),
    ],
  );

  /// Green Gradient Color
  static const LinearGradient gradientGreen = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Color(0xFF71E3BB),
      Color(0xFF12D18E),
    ],
  );

  /// Blue Gradient Color
  static const LinearGradient gradientBlue = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Color(0xFF5089FD),
      Color(0xFF246BFD),
    ],
  );

  /// Purple Gradient Color
  static const LinearGradient gradientPurple = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Color(0xFF876DFF),
      Color(0xFF6949FF),
    ],
  );

  /// Teal Gradient Color
  static const LinearGradient gradientTeal = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Color(0xFF18C6AB),
      Color(0xFF019B83),
    ],
  );

  /// Dark 1 Color
  static const Color dark1 = Color(0xFF181A20);

  /// Dark 2 Color
  static const Color dark2 = Color(0xFF1F222A);

  /// Dark 3 Color
  static const Color dark3 = Color(0xFF262A35);

  /// Dark 4 Color
  static const Color dark4 = Color(0xFF35383F);

  /// Red Color
  static const Color red = Color(0xFFF54336);

  /// Pink Color
  static const Color pink = Color(0xFFEA1E61);

  /// Purple Color
  static const Color purple = Color(0xFF9D28AC);

  /// Deep Purple Color
  static const Color deepPurple = Color(0xFF673AB3);

  /// Indigo Color
  static const Color indigo = Color(0xFF3F51B2);

  /// Blue Color
  static const Color blue = Color(0xFF1A96F0);

  /// Light Blue Color
  static const Color lightBlue = Color(0xFF00A9F1);

  /// Cyan Color
  static const Color cyan = Color(0xFF00BCD3);

  /// Teal Color
  static const Color teal = Color(0xFF009689);

  /// Green Color
  static const Color green = Color(0xFF4AAF57);

  /// Light Green Color
  static const Color lightGreen = Color(0xFF8BC255);

  /// Lime Color
  static const Color lime = Color(0xFFCDDC4C);

  /// Yellow Color
  static const Color yellow = Color(0xFFFFEB4F);

  /// Amber Color
  static const Color amber = Color(0xFFFFC02D);

  /// Orange Color
  static const Color orange = Color(0xFFFF981F);

  /// Deep Orange Color
  static const Color deepOrange = Color(0xFFFF5726);

  /// Brown Color
  static const Color brown = Color(0xFF7A5548);

  /// Blue Grey Color
  static const Color blueGrey = Color(0xFF607D8A);

  /// Brown Background Color
  static const Color brownBackground = Color(0xFFFAF5F3);

  /// Red Background Color
  static const Color redBackground = Color(0xFFFFF4F4);

  /// Yellow Background Color
  static const Color yellowBackground = Color(0xFFFFFCEB);

  /// Orange Background Color
  static const Color orangeBackground = Color(0xFFFFF8EE);

  /// Green Background Color
  static const Color greenBackground = Color(0xFFF1FCF5);

  /// Blue Background Color
  static const Color blueBackground = Color(0xFFF6F9FF);

  /// Purple Background Color
  static const Color purpleBackground = Color(0xFFF9F8FF);

  /// Teal Background Color
  static const Color tealBackground = Color(0xFFF2FFFC);

  /// Transparent Brown Background Color
  static const Color transparentBrownBackground = Color(0x14A4634D);

  /// Transparent Red Background Color
  static const Color transparentRedBackground = Color(0x14F5484A);

  /// Transparent Yellow Background Color
  static const Color transparentYellowBackground = Color(0x14FFD300);

  /// Transparent Orange Background Color
  static const Color transparentOrangeBackground = Color(0x14F89300);

  /// Transparent Green Background Color
  static const Color transparentGreenBackground = Color(0x141BAC4B);

  /// Transparent Blue Background Color
  static const Color transparentBlueBackground = Color(0x14246BFD);

  /// Transparent Purple Background Color
  static const Color transparentPurpleBackground = Color(0x146949FF);

  /// Transparent Teal Background Color
  static const Color transparentTealBackground = Color(0x14019B83);

  /// Transparent light faded image gradient colors
  static const List<Color> transparentLightColors = [
    Color.fromRGBO(255, 255, 255, 1),
    Color.fromRGBO(255, 255, 255, 0.9),
    Color.fromRGBO(255, 255, 255, 0.8),
    Color.fromRGBO(255, 255, 255, 0.5),
    Color.fromRGBO(255, 255, 255, 0.02),
  ];

  /// Transparent dark fadded image gradient colors
  static const List<Color> transparentDarkColors = [
    Color.fromRGBO(24, 26, 32, 1),
    Color.fromRGBO(24, 26, 32, 0.9),
    Color.fromRGBO(24, 26, 32, 0.8),
    Color.fromRGBO(24, 26, 32, 0.5),
    Color.fromRGBO(24, 26, 32, 0),
  ];
}
