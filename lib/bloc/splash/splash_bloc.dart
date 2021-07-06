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
      // yield const SplashState.user();
      yield const SplashState.splash();
    } else if (splash == 2) {
      yield const SplashState.company();
      // yield const SplashState.splash();
      // tGvclV6QCZh3Rm0AYCJyzpeh4hz5Fb3tVBoqGzIFU3kkmSGg2AuGkkY8W0mT
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
}
