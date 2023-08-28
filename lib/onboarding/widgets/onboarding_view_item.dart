import 'dart:ui';

import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class OnboardingViewItem extends StatelessWidget {
  const OnboardingViewItem({
    required this.index,
    required this.title,
    required this.subtitle,
    required this.image,
    super.key,
  });

  final int index;
  final String title;
  final String subtitle;
  final AssetGenImage image;

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = context.theme.brightness == Brightness.dark;
    return Stack(
      children: [
        Positioned(
          left: -10,
          child: ShaderMask(
            key: const Key('onboardingitem_shadermask'),
            shaderCallback: (rect) {
              return LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: isDarkTheme
                    ? AppColors.transparentDarkColors
                    : AppColors.transparentLightColors,
              ).createShader(
                Rect.fromLTRB(
                  rect.width / 2,
                  rect.height / 0.6,
                  0,
                  0,
                ),
              );
            },
            blendMode: BlendMode.dstIn,
            child: image.image(
              key: const Key('onboardingitem_image'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 475,
          left: 10,
          right: 10,
          child: Text(
            title,
            key: const Key('onboardingitem_title'),
            style: LTRTextStyle.headline3,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Positioned(
          top: 610,
          left: 0,
          right: 0,
          child: Text(
            subtitle,
            key: const Key('onboardingitem_subtitle'),
            style: LTRTextStyle.bodyXLarge.copyWith(
              fontWeight: AppFontWeight.regular,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
