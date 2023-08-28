import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// {@template app_theme}
/// The Default App [ThemeData]
/// {@endtemplate}
class AppTheme {
  /// {@macro app_theme}
  const AppTheme();

  /// Default `ThemeData` for App UI
  ThemeData get themeData {
    return ThemeData(
      // useMaterial3: true,
      primaryColor: AppColors.primary,
      canvasColor: _backgroundColor,
      appBarTheme: _appBarTheme,
      dividerTheme: _dividerTheme,
      inputDecorationTheme: _inputDecorationTheme,
      buttonTheme: _buttonTheme,
      elevatedButtonTheme: _elevatedButtonThemeData,
      bottomSheetTheme: _bottomSheetTheme,
      bottomNavigationBarTheme: _bottomAppBarTheme,
      snackBarTheme: _snackBarTheme,
      switchTheme: _switchTheme,
      progressIndicatorTheme: _progressIndicatorTheme,
      tabBarTheme: _tabBarTheme,
      chipTheme: _chipTheme,
      colorScheme: _colorScheme,
      textTheme: _textTheme,
      checkboxTheme: _checkBoxTheme,
    );
  }

  Color get _backgroundColor => AppColors.white;

  ColorScheme get _colorScheme {
    return ColorScheme.light(
      // primary: AppColors.primary.shade900,
      secondary: AppColors.primary.shade900,
    );
  }

  SnackBarThemeData get _snackBarTheme {
    return SnackBarThemeData(
      contentTextStyle: LTRTextStyle.bodyMedium.copyWith(
        color: AppColors.white,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.sm),
      ),
    );
  }

  CheckboxThemeData get _checkBoxTheme {
    return CheckboxThemeData(
      side: BorderSide(
        color: AppColors.primary.shade900,
        width: 3,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      materialTapTargetSize: MaterialTapTargetSize.padded,
    );
  }

  AppBarTheme get _appBarTheme {
    return AppBarTheme(
      iconTheme: _iconTheme,
      actionsIconTheme: _iconTheme,
      elevation: 0,
      toolbarHeight: 60,
      titleTextStyle: _textTheme.headlineMedium,
      titleSpacing: AppSpacing.lg,
      backgroundColor: AppColors.white,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: AppColors.white,
        statusBarIconBrightness: Brightness.dark,
        systemStatusBarContrastEnforced: true,
        systemNavigationBarColor: AppColors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
  }

  IconThemeData get _iconTheme {
    return IconThemeData(
      color: AppColors.grey.shade900,
    );
  }

  DividerThemeData get _dividerTheme {
    return DividerThemeData(
      color: AppColors.grey.shade200,
      thickness: AppSpacing.xxxs,
      space: AppSpacing.lg,
    );
  }

  TextTheme get _textTheme => uiTextTheme;

  /// The UI Text Theme based on [LTRTextStyle]
  static final uiTextTheme = TextTheme(
    displayLarge: LTRTextStyle.headline1,
    displayMedium: LTRTextStyle.headline2,
    displaySmall: LTRTextStyle.headline3,
    headlineMedium: LTRTextStyle.headline4,
    headlineSmall: LTRTextStyle.headline5,
    titleLarge: LTRTextStyle.headline6,
    titleMedium: LTRTextStyle.subtitle1,
    titleSmall: LTRTextStyle.subtitle2,
    bodyLarge: LTRTextStyle.bodyLarge,
    bodyMedium: LTRTextStyle.bodyMedium,
    bodySmall: LTRTextStyle.bodySmall,
    labelLarge: LTRTextStyle.bodyLarge,
    labelMedium: LTRTextStyle.bodyMedium,
    labelSmall: LTRTextStyle.bodySmall,
  ).apply(
    bodyColor: AppColors.black,
    displayColor: AppColors.black,
    decorationColor: AppColors.black,
  );

  InputDecorationTheme get _inputDecorationTheme {
    return InputDecorationTheme(
      suffixIconColor: AppColors.grey.shade500,
      prefixIconColor: AppColors.grey.shade500,
      hoverColor: AppColors.primary.shade900,
      fillColor: AppColors.grey.shade50,
      focusColor: AppColors.grey.shade50,
      // focusedBorder: _textFieldBorder,
      labelStyle: _textTheme.bodyLarge,
    );
  }

  InputBorder get _textFieldBorder => UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.primary.shade900,
        ),
        borderRadius: BorderRadius.circular(
          AppSpacing.lg,
        ),
      );

  ButtonThemeData get _buttonTheme {
    return ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppSpacing.lg,
        ),
      ),
      buttonColor: AppColors.primary,
    );
  }

  ElevatedButtonThemeData get _elevatedButtonThemeData {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppSpacing.lg,
          ),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: AppSpacing.lg + AppSpacing.xxs,
          horizontal: AppSpacing.lg,
        ),
        textStyle: _textTheme.bodyLarge,
        backgroundColor: AppColors.primary.shade900,
      ),
    );
  }

  BottomSheetThemeData get _bottomSheetTheme {
    return const BottomSheetThemeData(
      backgroundColor: AppColors.white,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppSpacing.lg),
          topRight: Radius.circular(AppSpacing.lg),
        ),
      ),
    );
  }

  SwitchThemeData get _switchTheme {
    return SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.white;
          }
          return AppColors.white;
        },
      ),
      trackColor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.primary.shade900;
          }
          return AppColors.grey.shade200;
        },
      ),
    );
  }

  ProgressIndicatorThemeData get _progressIndicatorTheme {
    return ProgressIndicatorThemeData(
      color: AppColors.primary.shade900,
    );
  }

  TabBarTheme get _tabBarTheme {
    return TabBarTheme(
      labelStyle: LTRTextStyle.bodyXLarge.copyWith(
        fontWeight: AppFontWeight.semiBold,
      ),
      labelColor: AppColors.primary.shade900,
      labelPadding: const EdgeInsets.symmetric(
        vertical: AppSpacing.lg - AppSpacing.xs,
      ),
      unselectedLabelStyle: LTRTextStyle.bodyXLarge.copyWith(
        fontWeight: AppFontWeight.semiBold,
      ),
      unselectedLabelColor: AppColors.grey.shade500,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: AppColors.primary.shade900,
          width: 4,
        ),
        borderRadius: BorderRadius.circular(AppSpacing.xxxlg),
      ),
      indicatorSize: TabBarIndicatorSize.tab,
    );
  }

  BottomNavigationBarThemeData get _bottomAppBarTheme {
    return BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.primary.shade900,
      selectedIconTheme: IconThemeData(
        color: AppColors.primary.shade900,
      ),
      selectedLabelStyle: LTRTextStyle.bodyXSmall.copyWith(
        color: AppColors.primary.shade900,
        fontWeight: AppFontWeight.medium,
      ),
      unselectedItemColor: AppColors.grey.shade500,
      unselectedIconTheme: IconThemeData(
        color: AppColors.grey.shade500,
      ),
      unselectedLabelStyle: LTRTextStyle.bodyXSmall.copyWith(
        color: AppColors.grey.shade500,
        fontWeight: AppFontWeight.medium,
      ),
      showSelectedLabels: true,
      showUnselectedLabels: true,
    );
  }

  ChipThemeData get _chipTheme {
    return ChipThemeData(
      backgroundColor: AppColors.white,
      selectedColor: AppColors.primary.shade900,
    );
  }
}

/// {@template app_dark_theme}
/// Dark Mode App [ThemeData]
/// {@endtemplate}
class AppDarkTheme extends AppTheme {
  /// {@macro app_theme}
  const AppDarkTheme();

  @override
  ColorScheme get _colorScheme {
    return ColorScheme.dark(
      primary: AppColors.dark4,
      secondary: AppColors.primary.shade900,
      background: AppColors.dark1,
    );
  }

  @override
  Color get _backgroundColor => AppColors.dark1;

  @override
  AppBarTheme get _appBarTheme => super._appBarTheme.copyWith(
        backgroundColor: AppColors.dark1,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarColor: AppColors.dark1,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: AppColors.dark2,
        ),
      );

  @override
  TextTheme get _textTheme => AppTheme.uiTextTheme.apply(
        bodyColor: AppColors.white,
        displayColor: AppColors.white,
        decorationColor: AppColors.white,
      );

  @override
  DividerThemeData get _dividerTheme => const DividerThemeData(
        color: AppColors.dark4,
      );

  @override
  ElevatedButtonThemeData get _elevatedButtonThemeData {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppSpacing.lg,
          ),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: AppSpacing.lg + AppSpacing.xxs,
          horizontal: AppSpacing.lg,
        ),
        textStyle: _textTheme.bodyLarge?.copyWith(
          color: AppColors.white,
        ),
        backgroundColor: AppColors.primary.shade900,
      ),
    );
  }
}
