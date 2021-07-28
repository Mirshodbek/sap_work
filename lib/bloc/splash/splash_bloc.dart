import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState.initial());

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    yield* event.map(
      initial: _initialEvent,
      selectedRole: _selectedRoleEvent,
    );
  }

  Stream<SplashState> _initialEvent(_IntialSplashEvent event) async* {
    final sharedPref = await SharedPreferences.getInstance();
    final splash = sharedPref.getInt("screen");
    if (splash == 0) {
      yield const SplashState.selectedRole();
    } else if (splash == 1) {
      yield const SplashState.user();
      // yield const SplashState.splash();
      // ys5VAFG9MbEXuoqPYTrL6pbCyMjIVXaMSeeFkDYCKZFBNIPHTDQrf8Spmuod
      // nllJI5LZnGBQ7GnqaxqimfeC6ND7Ki6igcMkOd12fHISFmjfK3q1iAgyhmYn
    } else if (splash == 2) {
      yield const SplashState.company();
      // yield const SplashState.splash();
      // jkgD4PPpDejBIMxuJeNLhxPN2AuWacZa2ypbmfkpaVJysi2peoRWm6mNV93L
    } else if (splash == 3) {
      yield const SplashState.admin();
      // yield const SplashState.splash();
      // 5zBzare17tYq1upY9ISdElLUTuZQepPxptpP7v60zcecpW3t0Np3rk1BSEeP
    } else {
      yield const SplashState.splash();
    }
  }

  Stream<SplashState> _selectedRoleEvent(
      _SelectedRoleSplashEvent event) async* {
    final sharedPref = await SharedPreferences.getInstance();
    await sharedPref.setInt("screen", 0);
    yield const SplashState.selectedRole();
  }
}

@freezed
abstract class SplashEvent with _$SplashEvent {
  const factory SplashEvent.initial() = _IntialSplashEvent;

  const factory SplashEvent.selectedRole() = _SelectedRoleSplashEvent;
}

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState.initial() = IntialSplashState;

  const factory SplashState.splash() = SplashScreenState;

  const factory SplashState.selectedRole() = SelectedRoleSplashState;

  const factory SplashState.user() = UserSplashState;

  const factory SplashState.company() = CompanySplashState;

  const factory SplashState.admin() = AdminSplashState;
}
