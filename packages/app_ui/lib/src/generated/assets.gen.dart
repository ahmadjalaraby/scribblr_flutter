/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/arrow_left_light.svg
  SvgGenImage get arrowLeftLight =>
      const SvgGenImage('assets/images/arrow_left_light.svg');

  /// File path: assets/images/login_apple_light.svg
  SvgGenImage get loginAppleLight =>
      const SvgGenImage('assets/images/login_apple_light.svg');

  /// File path: assets/images/login_dark.png
  AssetGenImage get loginDark =>
      const AssetGenImage('assets/images/login_dark.png');

  /// File path: assets/images/login_facebook_light.svg
  SvgGenImage get loginFacebookLight =>
      const SvgGenImage('assets/images/login_facebook_light.svg');

  /// File path: assets/images/login_google_light.svg
  SvgGenImage get loginGoogleLight =>
      const SvgGenImage('assets/images/login_google_light.svg');

  /// File path: assets/images/login_light.png
  AssetGenImage get loginLight =>
      const AssetGenImage('assets/images/login_light.png');

  /// File path: assets/images/onboarding_dark_1.png
  AssetGenImage get onboardingDark1 =>
      const AssetGenImage('assets/images/onboarding_dark_1.png');

  /// File path: assets/images/onboarding_dark_2.png
  AssetGenImage get onboardingDark2 =>
      const AssetGenImage('assets/images/onboarding_dark_2.png');

  /// File path: assets/images/onboarding_dark_3.png
  AssetGenImage get onboardingDark3 =>
      const AssetGenImage('assets/images/onboarding_dark_3.png');

  /// File path: assets/images/onboarding_light_1.png
  AssetGenImage get onboardingLight1 =>
      const AssetGenImage('assets/images/onboarding_light_1.png');

  /// File path: assets/images/onboarding_light_2.png
  AssetGenImage get onboardingLight2 =>
      const AssetGenImage('assets/images/onboarding_light_2.png');

  /// File path: assets/images/onboarding_light_3.png
  AssetGenImage get onboardingLight3 =>
      const AssetGenImage('assets/images/onboarding_light_3.png');

  /// File path: assets/images/scribblr_dark.svg
  SvgGenImage get scribblrDark =>
      const SvgGenImage('assets/images/scribblr_dark.svg');

  /// File path: assets/images/scribblr_light.svg
  SvgGenImage get scribblrLight =>
      const SvgGenImage('assets/images/scribblr_light.svg');

  /// File path: assets/images/search_icon_light.svg
  SvgGenImage get searchIconLight =>
      const SvgGenImage('assets/images/search_icon_light.svg');

  /// List of all assets
  List<dynamic> get values => [
        arrowLeftLight,
        loginAppleLight,
        loginDark,
        loginFacebookLight,
        loginGoogleLight,
        loginLight,
        onboardingDark1,
        onboardingDark2,
        onboardingDark3,
        onboardingLight1,
        onboardingLight2,
        onboardingLight3,
        scribblrDark,
        scribblrLight,
        searchIconLight
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package = 'app_ui',
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package = 'app_ui',
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/app_ui/$_assetName';
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package = 'app_ui',
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/app_ui/$_assetName';
}
