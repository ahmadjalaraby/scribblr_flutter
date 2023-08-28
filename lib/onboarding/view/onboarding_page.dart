import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scribblr/onboarding/onboarding.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  static Page<void> page() => const MaterialPage(
        child: OnboardingPage(),
      );

  static Route<void> route() => MaterialPageRoute(
        builder: (_) => const OnboardingPage(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => OnboardingCubit(),
        child: const OnboardingView(),
      ),
    );
  }
}
