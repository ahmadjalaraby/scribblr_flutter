import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:scribblr/login/login.dart';

/// {@template login_with_password_page}
/// A login page with a form text fields for email and password. 
/// {@endtemplate}
class LoginWithPasswordPage extends StatelessWidget {
  /// {@macro login_with_password_page}
  const LoginWithPasswordPage({super.key});

  /// The static route for [LoginWithPasswordPage]
  static Route<dynamic> route() {
    return AppSlideTransition(
      page: const LoginWithPasswordPage(),
      transition: AppSlideTransitionValue.bottomToTop,
    ).to();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: DefaultAppBar(),
      body: LoginWithPasswordView(),
    );
  }
}

/// {@template login_with_password_view}
/// Displays the Body of [LoginWithPasswordView]
/// {@endtemplate}
class LoginWithPasswordView extends StatelessWidget {
  /// {@macro login_with_password_view}
  const LoginWithPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginWithPasswordBody();
  }
}
