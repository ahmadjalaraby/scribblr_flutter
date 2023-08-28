import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import 'package:scribblr/login/login.dart';

/// {@template login_with_password_body}
/// The body of [LoginWithPasswordPage], which contains a login form
/// {@endtemplate}
class LoginWithPasswordBody extends StatelessWidget {
  /// {@macro login_with_password_body}
  const LoginWithPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;

    return CustomScrollView(
      key: const Key('loginWithPasswordBody_scrollable'),
      slivers: [
        SliverToBoxAdapter(
          key: const Key('loginWithPasswordBody_form'),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.xlg,
            ),
            child: Column(
              key: const Key('loginWithPasswordBody_form_column'),
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSpacing.xlg),
                Text('Hello there 👋', style: LTRTextStyle.headline3),
                const SizedBox(height: AppSpacing.lg),
                Text(
                  'Please enter your username/email and password to sign in.',
                  style: LTRTextStyle.bodyXLarge.copyWith(
                    fontWeight: AppFontWeight.regular,
                  ),
                ),
                const SizedBox(height: AppSpacing.sm + AppSpacing.xlg),
                _TextEditingGroupWidget(
                  key: const Key('loginWithPasswordBody_form_email'),
                  text: 'Username / Email',
                  textField: AppTextField.loginTextField(
                    isDarkTheme: isDarkTheme,
                  ),
                ),
                const SizedBox(height: AppSpacing.xlg),
                _TextEditingGroupWidget(
                  key: const Key('loginWithPasswordBody_form_password'),
                  text: 'Password',
                  textField: AppTextField.loginTextField(
                    isDarkTheme: isDarkTheme,
                    suffix: Icon(
                      Icons.remove_red_eye_outlined,
                      color: AppColors.primary.shade900,
                      size: 28,
                    ),
                    obscureText: true,
                  ),
                ),
                const SizedBox(height: AppSpacing.xlg),
                AppCheckbox(
                  key: const Key('loginWithPasswordBody_form_rememberMe'),
                  value: true,
                  text: 'Remember me',
                  onChanged: (value) {},
                ),
                const SizedBox(height: AppSpacing.xlg),
                const Divider(),
                const SizedBox(height: AppSpacing.xlg),
                Center(
                  child: AppTextLinkify(
                    key: const Key('loginWithPasswordBody_form_forgotPassword'),
                    text: 'Forgot Password',
                    textStyle: LTRTextStyle.headline6,
                  ),
                ),
                const SizedBox(height: AppSpacing.lg),
                const AppCommonDivider(
                  key: Key('loginWithPasswordBody_form_orContinueWith'),
                  text: 'or continue with ',
                ),
                const SizedBox(height: AppSpacing.xlg),
                Row(
                  key: const Key('loginWithPasswordBody_socialLogin'),
                  children: [
                    Expanded(
                      child: AppButton.whiteBorder(
                        key: const Key(
                          'loginWithPasswordBody_socialLogin_google',
                        ),
                        onPressed: () {},
                        isDarkTheme: isDarkTheme,
                        child: Center(
                          child: Assets.images.loginGoogleLight.svg(),
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSpacing.lg),
                    Expanded(
                      child: AppButton.whiteBorder(
                        key: const Key(
                          'loginWithPasswordBody_socialLogin_apple',
                        ),
                        onPressed: () {},
                        isDarkTheme: isDarkTheme,
                        child: AppColorFiltered.theme(
                          isDarkTheme: isDarkTheme,
                          child: Assets.images.loginAppleLight.svg(),
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSpacing.lg),
                    Expanded(
                      child: AppButton.whiteBorder(
                        key: const Key(
                          'loginWithPasswordBody_socialLogin_facebook',
                        ),
                        onPressed: () {},
                        isDarkTheme: isDarkTheme,
                        child: Center(
                          child: Assets.images.loginFacebookLight.svg(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.lg),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          key: const Key(
            'loginWithPasswordBody_login_box',
          ),
          child: Column(
            key: const Key(
              'loginWithPasswordBody_login_column',
            ),
            mainAxisSize: MainAxisSize.min,
            children: [
              const Divider(),
              const SizedBox(height: AppSpacing.lg),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.lg,
                ),
                child: AppButton.light(
                  key: const Key(
                    'loginWithPasswordBody_login_signIn',
                  ),
                  onPressed: () {},
                  child: const Text('Sign in'),
                ),
              ),
              const SizedBox(height: AppSpacing.xlg + AppSpacing.md),
            ],
          ),
        ),
      ],
    );
  }
}

class _TextEditingGroupWidget extends StatelessWidget {
  const _TextEditingGroupWidget({
    required this.text,
    required this.textField,
    super.key,
  });

  final Widget textField;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      key: key,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: LTRTextStyle.bodyLarge),
        const SizedBox(height: AppSpacing.xxs),
        textField,
      ],
    );
  }
}
