import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scribblr/splash/splash.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static Route<void> route() => MaterialPageRoute<void>(
        builder: (_) => const SplashPage(),
      );

  static const String name = '/splash';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashCubit()..loadingSplash(),
      child: const SplashView(),
    );
  }
}
