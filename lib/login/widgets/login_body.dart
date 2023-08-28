import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart' hide AppButton;
import 'package:scribblr/login/login.dart';
import 'package:scribblr/signup/view/signup_page.dart';

/// {@template login_body}
/// Body of the LoginPage.
///
/// {@endtemplate}
class LoginBody extends StatelessWidget {
  /// {@macro login_body}
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return AnimatedScrollView(
          key: key,
          children: [
            Padding(
              key: const Key('loginBody_padding'),
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xlg),
              child: Column(
                key: const Key('loginBody_column'),
                children: [
                  const SizedBox(height: AppSpacing.xxxlg + AppSpacing.xxlg),
                  if (isDarkTheme)
                    Assets.images.loginDark.image()
                  else
                    Assets.images.loginLight.image(),
                  const SizedBox(height: AppSpacing.xlg + AppSpacing.xs),
                  Text("Let's you in", style: LTRTextStyle.headline2),
                  const SizedBox(height: AppSpacing.xlg + AppSpacing.xs),
                  AppButton.whiteBorder(
                    onPressed: () {},
                    isDarkTheme: isDarkTheme,
                    child: _SocialButtonWidgetBody(
                      key: const Key('appButton_google'),
                      svgGenImage: Assets.images.loginGoogleLight,
                      text: 'Continue with Google',
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xlg - AppSpacing.xs),
                  AppButton.whiteBorder(
                    onPressed: () {},
                    isDarkTheme: isDarkTheme,
                    child: _SocialButtonWidgetBody(
                      key: const Key('appButton_facebook'),
                      svgGenImage: Assets.images.loginFacebookLight,
                      text: 'Continue with Facebook',
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xlg - AppSpacing.xs),
                  AppButton.whiteBorder(
                    onPressed: () {},
                    isDarkTheme: isDarkTheme,
                    child: _SocialButtonWidgetBody(
                      key: const Key('appButton_apple'),
                      svgGenImage: Assets.images.loginAppleLight,
                      enableColorFilter: true,
                      text: 'Continue with Apple',
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xlg + AppSpacing.xs),
                  const AppCommonDivider(text: 'or'),
                  const SizedBox(height: AppSpacing.xlg + AppSpacing.xs),
                  AppButton.light(
                    onPressed: () => Navigator.of(context).push(
                      LoginWithPasswordPage.route(),
                    ),
                    child: const Text('Sign in with password'),
                  ),
                  const SizedBox(height: AppSpacing.xlg + AppSpacing.xs),
                  const _DontHaveAccountWidget(
                    key: Key('loginbody_dontHaveAccount'),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _SocialButtonWidgetBody extends StatelessWidget {
  const _SocialButtonWidgetBody({
    required this.svgGenImage,
    required this.text,
    this.enableColorFilter = false,
    super.key,
  });

  final SvgGenImage svgGenImage;
  final String text;
  final bool enableColorFilter;
  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    return Center(
      key: key,
      child: Row(
        key: const Key('socialButtonWidgetBody_row'),
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (enableColorFilter) ...[
            AppColorFiltered(
              color: isDarkTheme ? AppColors.white : AppColors.black,
              child: svgGenImage.svg(
                key: const Key('socialButtonWidgetBody_svg'),
              ),
            ),
          ] else ...[
            svgGenImage.svg(
              key: const Key('socialButtonWidgetBody_svg'),
            ),
          ],
          const SizedBox(width: AppSpacing.md),
          Text(
            key: const Key('socialButtonWidgetBody_text'),
            text,
            style: LTRTextStyle.bodyLarge.copyWith(
              fontWeight: AppFontWeight.semiBold,
            ),
          ),
        ],
      ),
    );
  }
}

class _DontHaveAccountWidget extends StatelessWidget {
  const _DontHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      key: key,
      children: [
        Text(
          "Don't have an account?",
          style: LTRTextStyle.bodyLarge.copyWith(
            fontWeight: AppFontWeight.medium,
          ),
        ),
        const SizedBox(width: 12),
        AppTextLinkify(
          text: 'Sign up',
          textStyle: LTRTextStyle.bodyLarge,
          onTap: () => Navigator.of(context).push(
            SignupPage.route(),
          ),
        ),
      ],
    );
  }
}
