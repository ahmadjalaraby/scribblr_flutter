part of 'onboarding_cubit.dart';

sealed class OnboardingState extends Equatable {
  const OnboardingState(this.index);

  final int index;

  @override
  List<Object> get props => [index];
}

final class OnboardingInitial extends OnboardingState {
  const OnboardingInitial(super.index);
}

final class OnboardingPageChanged extends OnboardingState {
  const OnboardingPageChanged(super.index);
}

final class OnboardingSkip extends OnboardingState {
  const OnboardingSkip(super.index);
}
