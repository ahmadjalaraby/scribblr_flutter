import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scribblr/onboarding/onboarding.dart';
import 'package:scribblr/splash/splash.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        switch (state) {
          case SplashInitial():
          case SplashLoading():
            break;
          case SplashEnd():
            Navigator.of(context).pushReplacement(
              OnboardingPage.route(),
            );
        }
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 241),
              AppLogo.light(),
              const SizedBox(height: AppSpacing.lg + AppSpacing.xs),
              Text(
                'Scribblr',
                style: LTRTextStyle.headline1,
              ),
              const SizedBox(height: 184),
              AppProgressLoading.light(),
            ],
          ),
        ),
      ),
    );
  }
}
