import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:scribblr/login/bloc/bloc.dart';
import 'package:scribblr/login/widgets/login_body.dart';

/// {@template login_page}
/// The login page on the app
/// {@endtemplate}
class LoginPage extends StatelessWidget {
  /// {@macro login_page}
  const LoginPage({super.key});

  /// The static route for LoginPage
  static Route<dynamic> route() {
    return AppSlideTransition(
      page: const LoginPage(),
    ).to();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: const Scaffold(
        body: LoginView(),
      ),
    );
  }
}

/// {@template login_view}
/// Displays the Body of LoginView
/// {@endtemplate}
class LoginView extends StatelessWidget {
  /// {@macro login_view}
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginBody();
  }
}
