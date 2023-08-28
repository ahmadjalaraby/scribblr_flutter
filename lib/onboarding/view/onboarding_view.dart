import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart' hide AppButton;
import 'package:scribblr/login/login.dart';
import 'package:scribblr/onboarding/onboarding.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final _controller = PageController();

  static const _onboardingItemSwitchDuration = Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = context.theme.brightness == Brightness.dark;
    return BlocListener<OnboardingCubit, OnboardingState>(
      listener: (context, state) {
        switch (state) {
          case OnboardingInitial():
            break;
          case OnboardingPageChanged():
            _controller.animateToPage(
              state.index,
              duration: _onboardingItemSwitchDuration,
              curve: Curves.easeInOut,
            );
          case OnboardingSkip():
            Navigator.of(context).pushReplacement(LoginPage.route());
        }
      },
      child: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              key: const Key('onboarding_scrollableColumn'),
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: AppSpacing.xxlg - AppSpacing.xs,
                  ),
                  height: MediaQuery.sizeOf(context).height * 0.8,
                  child: PageView(
                    key: const Key('onboarding_pageview'),
                    controller: _controller,
                    onPageChanged: (int index) =>
                        context.read<OnboardingCubit>().goToNextPage(index),
                    children: [
                      OnboardingViewItem(
                        key: const Key('onboarding_pageOne'),
                        index: 0,
                        title: 'Read interesting articles every single day!',
                        subtitle:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                            ' sed do eiusmod tempor...',
                        image: isDarkTheme
                            ? Assets.images.onboardingDark1
                            : Assets.images.onboardingLight1,
                      ),
                      OnboardingViewItem(
                        key: const Key('onboarding_pageTwo'),
                        index: 1,
                        title:
                            'Create & publish your own articles to the world!',
                        subtitle:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                            ' sed do eiusmod tempor...',
                        image: isDarkTheme
                            ? Assets.images.onboardingDark2
                            : Assets.images.onboardingLight2,
                      ),
                      OnboardingViewItem(
                        key: const Key('onboarding_pageThree'),
                        index: 2,
                        title: "Let's connect with others right now!",
                        subtitle:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                            ' sed do eiusmod tempor...',
                        image: isDarkTheme
                            ? Assets.images.onboardingDark3
                            : Assets.images.onboardingLight3,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                DotIndicator(
                  pageController: _controller,
                  currentDotSize: 32,
                  currentDotWidth: 8,
                  indicatorColor: AppColors.primary,
                  currentBoxShape: BoxShape.rectangle,
                  currentBorderRadius: BorderRadius.circular(15),
                  unselectedIndicatorColor:
                      isDarkTheme ? AppColors.dark4 : AppColors.grey.shade300,
                  boxShape: BoxShape.rectangle,
                  dotSize: 8,
                  borderRadius: BorderRadius.circular(50),
                  pages: const [
                    SizedBox(),
                    SizedBox(),
                    SizedBox(),
                  ],
                  onDotTap: (int index) {
                    context.read<OnboardingCubit>().goToNextPage(index);
                  },
                ),
                const SizedBox(height: AppSpacing.xlg),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.xlg,
                    vertical: AppSpacing.lg - AppSpacing.xxs,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: isDarkTheme
                            ? AppButton.dark(
                                onPressed: () => context
                                    .read<OnboardingCubit>()
                                    .skipOnboarding(),
                                child: const Text('Skip'),
                              )
                            : AppButton.lightTransparent(
                                onPressed: () => context
                                    .read<OnboardingCubit>()
                                    .skipOnboarding(),
                                child: const Text('Skip'),
                              ),
                      ),
                      const SizedBox(width: AppSpacing.lg),
                      Expanded(
                        child: AppButton.light(
                          onPressed: () =>
                              context.read<OnboardingCubit>().goToNextPage(),
                          child: const Text('Next'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
