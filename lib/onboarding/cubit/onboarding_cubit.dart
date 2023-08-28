import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(const OnboardingInitial(0));

  static const int _onboardingPagesCount = 3;

  void goToNextPage([int? index]) {
    if (index != null) {
      emit(OnboardingPageChanged(index));
      return;
    }

    if (state.index < _onboardingPagesCount - 1) {
      emit(OnboardingPageChanged(state.index + 1));
      return;
    }

    skipOnboarding();
  }

  void skipOnboarding() {
    emit(const OnboardingSkip(_onboardingPagesCount));
  }
}
