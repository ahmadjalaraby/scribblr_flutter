import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart' hide AppButton;
import 'package:scribblr/signup/bloc/bloc.dart';
import 'package:scribblr/signup/widgets/widgets.dart';

/// {@template signup_body}
/// Body of the SignupPage.
///
/// Add what it does
/// {@endtemplate}
class SignupBody extends StatefulWidget {
  /// {@macro signup_body}
  const SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  final _controller = PageController();

  static const _signupPageViewSwitchDuration = Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(
      builder: (context, state) {
        return Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 0.76,
                child: PageView(
                  controller: _controller,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    SignupGroup(
                      title: 'Which country are you from? 🏳️',
                      subtitle:
                          'Please select your country of origin for a better recommendations.',
                      children: [],
                    ),
                    Text('Page 2'),
                    Text('Page 3'),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: AppSpacing.xlg,
                      left: AppSpacing.xlg,
                      right: AppSpacing.xlg,
                      bottom: AppSpacing.sm,
                    ),
                    child: AppButton.light(
                      onPressed: () {},
                      child: const Text('Continue'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class SignupSelectCountryPage extends StatelessWidget {
  const SignupSelectCountryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
