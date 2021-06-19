import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/data_provider/auth_provider.dart';
import 'package:sap_work/utils/validator.dart';

part 'hunter_sign_up_bloc.freezed.dart';

class HunterSignUpBloc extends Bloc<HunterSignUpEvent, HunterSignUpState> {
  final AuthProvider _provider;

  HunterSignUpBloc(this._provider) : super(const HunterSignUpState.initial());

  @override
  Stream<HunterSignUpState> mapEventToState(
    HunterSignUpEvent event,
  ) async* {
    yield* event.map(
      initial: _initialEvent,
      professionEvent: _professionEvent,
      hunterEvent: _hunterEvent,
    );
  }

  Stream<HunterSignUpState> _initialEvent(
      _InitialHunterSignUpEvent event) async* {
    yield const HunterSignUpState.hunterState(
      name: Texts.pure(),
      phone: Phone.pure(),
      prof: Texts.pure(),
      status: FormzStatus.pure,
    );
  }

  Stream<HunterSignUpState> _professionEvent(
      _ProfessionEventHunterSignUpEvent event) async* {
    yield state.maybeMap(
      orElse: () => state,
      hunterState: (_state) => _state.copyWith(prof: event.prof),
    );
  }

  Stream<HunterSignUpState> _hunterEvent(
      _HunterEventHunterSignUpEvent event) async* {
    final isValidated = Formz.validate([event.name, event.phone, event.prof]);
    if (isValidated.isValidated) {
      try {
        yield state.maybeMap(
          orElse: () => state,
          hunterState: (_state) =>
              _state.copyWith(status: FormzStatus.submissionInProgress),
        );
        await Future.delayed(Duration(seconds: 2));
       final result = await _provider.signUpHunter(event.phone.value, event.name.value);
       print(result.statusCode);
        yield const HunterSignUpState.successSignUp();
      } catch (_) {
        yield state.maybeMap(
          orElse: () => state,
          hunterState: (_state) =>
              _state.copyWith(status: FormzStatus.submissionFailure),
        );
      }
    } else {
      yield HunterSignUpState.hunterState(
        name: event.name,
        phone: event.phone,
        prof: event.prof,
        status: isValidated,
      );
    }
  }
}

@freezed
abstract class HunterSignUpEvent with _$HunterSignUpEvent {
  const factory HunterSignUpEvent.initial() = _InitialHunterSignUpEvent;

  const factory HunterSignUpEvent.professionEvent({required final Texts prof}) =
      _ProfessionEventHunterSignUpEvent;

  const factory HunterSignUpEvent.hunterEvent({
    required final Texts name,
    required final Phone phone,
    required final Texts prof,
  }) = _HunterEventHunterSignUpEvent;
}

@freezed
abstract class HunterSignUpState with _$HunterSignUpState {
  const factory HunterSignUpState.initial() = _InitialHunterSignUpState;

  const factory HunterSignUpState.hunterState({
    required final Texts name,
    required final Phone phone,
    required final Texts prof,
    required final FormzStatus status,
  }) = _HunterStateHunterSignUpState;

  const factory HunterSignUpState.successSignUp() =
      _SuccessSignUpHunterSignUpState;
}
