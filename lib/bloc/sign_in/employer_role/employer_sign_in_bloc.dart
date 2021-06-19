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

part 'employer_sign_in_bloc.freezed.dart';

class EmployerSignInBloc
    extends Bloc<EmployerSignInEvent, EmployerSignInState> {
  final AuthProvider _provider;

  EmployerSignInBloc(this._provider)
      : super(const EmployerSignInState.initial());
  String _phone = '';

  @override
  Stream<EmployerSignInState> mapEventToState(
    EmployerSignInEvent event,
  ) async* {
    yield* event.map(
      initial: _initialState,
      telephoneChanged: _telephoneChanged,
      telephoneSubmitted: _telephoneSubmitted,
      codeSubmitted: _codeSubmitted,
    );
  }

  Stream<EmployerSignInState> _initialState(
      InitialEmployerSignInEvent event) async* {
    yield EmployerSignInState.telephoneState(
      phone: Phone.pure(),
      statusA: FormzStatus.pure,
    );
  }

  Stream<EmployerSignInState> _telephoneChanged(
      TelephoneChangedEmployerSignInEvent event) async* {
    if (event.phone.invalid) {
      yield const EmployerSignInState.telephoneState(
        phone: Phone.pure(),
        statusA: FormzStatus.pure,
      );
    } else {
      yield EmployerSignInState.telephoneState(
        phone: event.phone,
        statusA: Formz.validate([event.phone]),
      );
    }
  }

  Stream<EmployerSignInState> _telephoneSubmitted(
      TelephoneSubmittedEmployerSignInEvent event) async* {
    _phone = event.phone.value;
    if (event.phone.valid) {
      try {
        yield EmployerSignInState.telephoneState(
          phone: event.phone,
          statusA: FormzStatus.submissionInProgress,
        );
        await Future.delayed(Duration(seconds: 2));
        await _provider.signInPhoneEmployer(event.phone.value);
        yield const EmployerSignInState.codeState(
          code: Texts.pure(),
          statusB: FormzStatus.pure,
        );
      } on TimeoutException {} catch (_) {
        yield EmployerSignInState.telephoneState(
          phone: event.phone,
          statusA: FormzStatus.submissionFailure,
        );
      }
    } else {
      yield EmployerSignInState.telephoneState(
        phone: event.phone,
        statusA: Formz.validate([event.phone]),
      );
    }
  }

  Stream<EmployerSignInState> _codeSubmitted(
      CodeSubmittedEmployerSignInEvent event) async* {
    if (event.code.valid) {
      try {
        yield EmployerSignInState.codeState(
          code: event.code,
          statusB: FormzStatus.submissionInProgress,
        );
        final result = await _signIn(event.code.value);
        if (result.statusCode == 400)
          yield EmployerSignInState.codeState(
            code: event.code,
            statusB: FormzStatus.submissionFailure,
          );
        else
          yield const EmployerSignInState.successSignIn();
      } on TimeoutException {} on SocketException {} on HttpException {} on FormatException {} catch (_) {
        yield EmployerSignInState.codeState(
          code: event.code,
          statusB: FormzStatus.submissionFailure,
        );
      }
    } else {
      yield EmployerSignInState.codeState(
        code: event.code,
        statusB: Formz.validate([event.code]),
      );
    }
  }

  Future<Response> _signIn(String code) async {
    final result = await _provider.signInEmployer(_phone, code);
    final token = jsonDecode(result.body)["token"];
    print(token);
    if (token != null) {
      final sharedPref = await SharedPreferences.getInstance();
      await sharedPref.setInt("screen", 2);
      await sharedPref.setString("tokenEmployer", token);
    }
    return result;
  }
}

@freezed
abstract class EmployerSignInEvent with _$EmployerSignInEvent {
  const factory EmployerSignInEvent.initial() = InitialEmployerSignInEvent;

  const factory EmployerSignInEvent.telephoneChanged(
      {required final Phone phone}) = TelephoneChangedEmployerSignInEvent;

  const factory EmployerSignInEvent.telephoneSubmitted(
      {required final Phone phone}) = TelephoneSubmittedEmployerSignInEvent;

  const factory EmployerSignInEvent.codeSubmitted({required final Texts code}) =
      CodeSubmittedEmployerSignInEvent;
}

@freezed
abstract class EmployerSignInState with _$EmployerSignInState {
  const factory EmployerSignInState.initial() = InitialEmployerSignInState;

  const factory EmployerSignInState.telephoneState({
    required final Phone phone,
    required final FormzStatus statusA,
  }) = TelephoneEmployerSignInState;

  const factory EmployerSignInState.codeState({
    required final Texts code,
    required final FormzStatus statusB,
  }) = CodeEmployerSignInState;

  const factory EmployerSignInState.successSignIn() =
      SuccessEmployerSignInState;
}
