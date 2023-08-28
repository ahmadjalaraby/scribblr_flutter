import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nb_utils/nb_utils.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  static const int _splashScreenDuration = 2;

  Future<void> loadingSplash() async {
    emit(SplashLoading());
    await const Duration(seconds: _splashScreenDuration).delay;
    emit(SplashEnd());
  }
}
