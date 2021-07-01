import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'user_sign_in_bloc.freezed.dart';

class UserSignInBloc extends Bloc<UserSignInEvent, UserSignInState> {
  final AuthProvider _provider;

  UserSignInBloc(this._provider) : super(const UserSignInState.initial());
  String _phone = '';

  @override
  Stream<UserSignInState> mapEventToState(
    UserSignInEvent event,
  ) async* {
    yield* event.map(
      initial: _initialState,
      telephoneChanged: _telephoneChanged,
      telephoneSubmitted: _telephoneSubmitted,
      codeSubmitted: _codeSubmitted,
    );
  }

  Stream<UserSignInState> _initialState(
      _InitialUserSignInEvent event) async* {
    yield const UserSignInState.telephoneState(
      phone: Phone.pure(),
      statusA: FormzStatus.pure,
    );
  }

  Stream<UserSignInState> _telephoneChanged(
      _PhoneChangedUserSignInEvent event) async* {
    if (event.phone.invalid) {
      yield UserSignInState.telephoneState(
        phone: Phone.pure(),
        statusA: FormzStatus.pure,
      );
    } else {
      yield UserSignInState.telephoneState(
        phone: event.phone,
        statusA: Formz.validate([event.phone]),
      );
    }
  }

  Stream<UserSignInState> _telephoneSubmitted(
      _PhoneSubmittedUserSignInEvent event) async* {
    _phone = event.phone.value;
    if (event.phone.valid) {
      try {
        yield UserSignInState.telephoneState(
          phone: event.phone,
          statusA: FormzStatus.submissionInProgress,
        );
        await Future.delayed(Duration(seconds: 2));
        await _provider.signInPhoneUser(_phone);
        yield const UserSignInState.codeState(
          code: Texts.pure(),
          statusB: FormzStatus.pure,
        );
      } on TimeoutException {} catch (_) {
        yield UserSignInState.telephoneState(
          phone: event.phone,
          statusA: FormzStatus.submissionFailure,
        );
      }
    } else {
      yield UserSignInState.telephoneState(
        phone: event.phone,
        statusA: Formz.validate([event.phone]),
      );
    }
  }

  Stream<UserSignInState> _codeSubmitted(
      _CodeSubmittedUserSignInEvent event) async* {
    if (event.code.valid) {
      try {
        yield UserSignInState.codeState(
          code: event.code,
          statusB: FormzStatus.submissionInProgress,
        );
        final result = await _signIn(event.code.value);
        if (result.statusCode == 200 || result.statusCode == 201) {
          yield const UserSignInState.successSignIn();
          yield UserSignInState.codeState(
            code: event.code,
            statusB: FormzStatus.submissionSuccess,
          );
        } else {
          yield UserSignInState.codeState(
            code: event.code,
            statusB: FormzStatus.submissionFailure,
          );
        }
      } on TimeoutException {} on SocketException {} on HttpException {} on FormatException {} catch (_) {
        yield UserSignInState.codeState(
          code: event.code,
          statusB: FormzStatus.submissionFailure,
        );
      }
    } else {
      yield UserSignInState.codeState(
        code: event.code,
        statusB: Formz.validate([event.code]),
      );
    }
  }

  Future<http.Response> _signIn(String code) async {
    final result = await _provider.signInUser(_phone, code);
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
abstract class UserSignInEvent with _$UserSignInEvent {
  const factory UserSignInEvent.initial() = _InitialUserSignInEvent;

  const factory UserSignInEvent.telephoneChanged({
    required final Phone phone,
  }) = _PhoneChangedUserSignInEvent;

  const factory UserSignInEvent.telephoneSubmitted(
      {required final Phone phone}) = _PhoneSubmittedUserSignInEvent;

  const factory UserSignInEvent.codeSubmitted({required final Texts code}) =
      _CodeSubmittedUserSignInEvent;
}

@freezed
abstract class UserSignInState with _$UserSignInState {
  const factory UserSignInState.initial() = InitialUserSignInState;

  const factory UserSignInState.telephoneState({
    required final Phone phone,
    required final FormzStatus statusA,
  }) = TelephoneUserSignInState;

  const factory UserSignInState.codeState({
    required final Texts code,
    required final FormzStatus statusB,
  }) = CodeUserSignInState;

  const factory UserSignInState.successSignIn() = SuccessUserSignInState;
}
