import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:sap_work/data_provider/auth_provider.dart';
import 'package:sap_work/utils/validator.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'hunter_sign_in_bloc.freezed.dart';

class HunterSignInBloc extends Bloc<HunterSignInEvent, HunterSignInState> {
  final AuthProvider _provider;

  HunterSignInBloc(this._provider) : super(const HunterSignInState.initial());
  String _phone = '';

  @override
  Stream<HunterSignInState> mapEventToState(
    HunterSignInEvent event,
  ) async* {
    yield* event.map(
      initial: _initialState,
      telephoneChanged: _telephoneChanged,
      telephoneSubmitted: _telephoneSubmitted,
      codeSubmitted: _codeSubmitted,
    );
  }

  Stream<HunterSignInState> _initialState(
      _InitialHunterSignInEvent event) async* {
    yield const HunterSignInState.telephoneState(
      phone: Phone.pure(),
      statusA: FormzStatus.pure,
    );
  }

  Stream<HunterSignInState> _telephoneChanged(
      _PhoneChangedHunterSignInEvent event) async* {
    if (event.phone.invalid) {
      yield HunterSignInState.telephoneState(
        phone: Phone.pure(),
        statusA: FormzStatus.pure,
      );
    } else {
      yield HunterSignInState.telephoneState(
        phone: event.phone,
        statusA: Formz.validate([event.phone]),
      );
    }
  }

  Stream<HunterSignInState> _telephoneSubmitted(
      _PhoneSubmittedHunterSignInEvent event) async* {
    _phone = event.phone.value;
    if (event.phone.valid) {
      try {
        yield HunterSignInState.telephoneState(
          phone: event.phone,
          statusA: FormzStatus.submissionInProgress,
        );
        await Future.delayed(Duration(seconds: 2));
        await _provider.signInPhoneHunter(_phone);
        yield const HunterSignInState.codeState(
          code: Texts.pure(),
          statusB: FormzStatus.pure,
        );
      } on TimeoutException {} catch (_) {
        yield HunterSignInState.telephoneState(
          phone: event.phone,
          statusA: FormzStatus.submissionFailure,
        );
      }
    } else {
      yield HunterSignInState.telephoneState(
        phone: event.phone,
        statusA: Formz.validate([event.phone]),
      );
    }
  }

  Stream<HunterSignInState> _codeSubmitted(
      _CodeSubmittedHunterSignInEvent event) async* {
    if (event.code.valid) {
      try {
        yield HunterSignInState.codeState(
          code: event.code,
          statusB: FormzStatus.submissionInProgress,
        );
        final result = await _signIn(event.code.value);
        if (result.statusCode == 400)
          yield HunterSignInState.codeState(
            code: event.code,
            statusB: FormzStatus.submissionFailure,
          );
        else
          yield const HunterSignInState.successSignIn();
      } on TimeoutException {} on SocketException {} on HttpException {} on FormatException {} catch (_) {
        yield HunterSignInState.codeState(
          code: event.code,
          statusB: FormzStatus.submissionFailure,
        );
      }
    } else {
      yield HunterSignInState.codeState(
        code: event.code,
        statusB: Formz.validate([event.code]),
      );
    }
  }

  Future<Response> _signIn(String code) async {
    final result = await _provider.signInHunter(_phone, code);
    print(result.statusCode);
    final token = jsonDecode(result.body)["token"];
    print(token);
    if (token != null) {
      final sharedPref = await SharedPreferences.getInstance();
      await sharedPref.setInt("screen", 1);
      await sharedPref.setString("tokenHunter", token);
    }
    return result;
  }
}

@freezed
abstract class HunterSignInEvent with _$HunterSignInEvent {
  const factory HunterSignInEvent.initial() = _InitialHunterSignInEvent;

  const factory HunterSignInEvent.telephoneChanged({
    required final Phone phone,
  }) = _PhoneChangedHunterSignInEvent;

  const factory HunterSignInEvent.telephoneSubmitted(
      {required final Phone phone}) = _PhoneSubmittedHunterSignInEvent;

  const factory HunterSignInEvent.codeSubmitted({required final Texts code}) =
      _CodeSubmittedHunterSignInEvent;
}

@freezed
abstract class HunterSignInState with _$HunterSignInState {
  const factory HunterSignInState.initial() = InitialHunterSignInState;

  const factory HunterSignInState.telephoneState({
    required final Phone phone,
    required final FormzStatus statusA,
  }) = TelephoneHunterSignInState;

  const factory HunterSignInState.codeState({
    required final Texts code,
    required final FormzStatus statusB,
  }) = CodeHunterSignInState;

  const factory HunterSignInState.successSignIn() = SuccessHunterSignInState;
}
