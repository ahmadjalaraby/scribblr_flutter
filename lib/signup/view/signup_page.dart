import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:scribblr/signup/bloc/bloc.dart';
import 'package:scribblr/signup/widgets/signup_body.dart';

/// {@template signup_page}
/// A description for SignupPage
/// {@endtemplate}
class SignupPage extends StatelessWidget {
  /// {@macro signup_page}
  const SignupPage({super.key});

  /// The static route for SignupPage
  static Route<dynamic> route() {
    return AppSlideTransition(
      page: const SignupPage(),
      transition: AppSlideTransitionValue.rightToLeft,
    ).to();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;

    return BlocProvider(
      create: (context) => SignupBloc(),
      child: Scaffold(
        appBar: DefaultAppBar(
          centerTitle: true,
          widget: AppHorizontalBar(
            steps: 3,
            currentStep: 1,
            backgroundColor: isDarkTheme ? AppColors.dark4 : null,
          ),
        ),
        body: const SignupView(),
      ),
    );
  }
}

/// {@template signup_view}
/// Displays the Body of SignupView
/// {@endtemplate}
class SignupView extends StatelessWidget {
  /// {@macro signup_view}
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignupBody();
  }
}
