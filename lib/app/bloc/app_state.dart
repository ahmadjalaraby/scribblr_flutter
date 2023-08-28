part of 'app_bloc.dart';

enum AppStatus {
  onboardingRequired(),
  authenticated(),
  unauthenticated();

  bool get isLoggedIn =>
      this == AppStatus.authenticated || this == AppStatus.onboardingRequired;
}

@immutable
class AppState extends Equatable {
  const AppState({
    required this.status,
  });

  const AppState.authenticated()
      : this(
          status: AppStatus.authenticated,
        );

  const AppState.onboardingRequired()
      : this(
          status: AppStatus.onboardingRequired,
        );

  const AppState.unauthenticated()
      : this(
          status: AppStatus.unauthenticated,
        );

  final AppStatus status;

  @override
  List<Object?> get props => [status];

  AppState copyWith({
    AppStatus? status,
  }) {
    return AppState(
      status: status ?? this.status,
    );
  }
}
