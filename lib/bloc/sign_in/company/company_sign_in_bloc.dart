import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'company_sign_in_bloc.freezed.dart';

class CompanySignInBloc extends Bloc<CompanySignInEvent, CompanySignInState> {
  final AuthProvider _provider;

  CompanySignInBloc(this._provider) : super(const CompanySignInState.initial());
  String _phone = '';

  @override
  Stream<CompanySignInState> mapEventToState(
    CompanySignInEvent event,
  ) async* {
    yield* event.map(
      initial: _initialState,
      telephoneChanged: _telephoneChanged,
      telephoneSubmitted: _telephoneSubmitted,
      codeSubmitted: _codeSubmitted,
    );
  }

  Stream<CompanySignInState> _initialState(
      InitialCompanySignInEvent event) async* {
    yield CompanySignInState.telephoneState(
      phone: Phone.pure(),
      statusA: FormzStatus.pure,
    );
  }

  Stream<CompanySignInState> _telephoneChanged(
      TelephoneChangedCompanySignInEvent event) async* {
    _phone = event.phone.value;
    if (event.phone.invalid) {
      yield const CompanySignInState.telephoneState(
        phone: Phone.pure(),
        statusA: FormzStatus.pure,
      );
    } else {
      yield CompanySignInState.telephoneState(
        phone: event.phone,
        statusA: Formz.validate([event.phone]),
      );
    }
  }

  Stream<CompanySignInState> _telephoneSubmitted(
      TelephoneSubmittedCompanySignInEvent event) async* {
    _phone = event.phone.value;
    if (event.phone.valid) {
      try {
        yield CompanySignInState.telephoneState(
          phone: event.phone,
          statusA: FormzStatus.submissionInProgress,
        );
        await Future.delayed(Duration(seconds: 2));
        await _provider.signInPhoneCompany(event.phone.value);
        yield const CompanySignInState.codeState(
          code: Texts.pure(),
          statusB: FormzStatus.pure,
        );
      } on TimeoutException {} catch (_) {
        yield CompanySignInState.telephoneState(
          phone: event.phone,
          statusA: FormzStatus.submissionFailure,
        );
      }
    } else {
      yield CompanySignInState.telephoneState(
        phone: event.phone,
        statusA: Formz.validate([event.phone]),
      );
    }
  }

  Stream<CompanySignInState> _codeSubmitted(
      CodeSubmittedCompanySignInEvent event) async* {
    if (event.code.valid) {
      try {
        yield CompanySignInState.codeState(
          code: event.code,
          statusB: FormzStatus.submissionInProgress,
        );
        final result = await _signIn(event.code.value);
        if (result.statusCode == 200 || result.statusCode == 201) {
          yield const CompanySignInState.successSignIn();
          yield CompanySignInState.codeState(
            code: event.code,
            statusB: FormzStatus.submissionSuccess,
          );
        } else {
          yield CompanySignInState.codeState(
            code: event.code,
            statusB: FormzStatus.submissionFailure,
          );
        }
      } on TimeoutException {} on SocketException {} on HttpException {} on FormatException {} catch (_) {
        yield CompanySignInState.codeState(
          code: event.code,
          statusB: FormzStatus.submissionFailure,
        );
      }
    } else {
      yield CompanySignInState.codeState(
        code: event.code,
        statusB: Formz.validate([event.code]),
      );
    }
  }

  Future<http.Response> _signIn(String code) async {
    final result = await _provider.signInCompany(_phone, code);
    final token = jsonDecode(result.body)["token"];
    print(token);
    if (token != null) {
      final sharedPref = await SharedPreferences.getInstance();
      await sharedPref.setInt("screen", 2);
      await sharedPref.setString(COMPANY_TOKEN, token);
    }
    return result;
  }
}

@freezed
abstract class CompanySignInEvent with _$CompanySignInEvent {
  const factory CompanySignInEvent.initial() = InitialCompanySignInEvent;

  const factory CompanySignInEvent.telephoneChanged(
      {required final Phone phone}) = TelephoneChangedCompanySignInEvent;

  const factory CompanySignInEvent.telephoneSubmitted(
      {required final Phone phone}) = TelephoneSubmittedCompanySignInEvent;

  const factory CompanySignInEvent.codeSubmitted({required final Texts code}) =
      CodeSubmittedCompanySignInEvent;
}

@freezed
abstract class CompanySignInState with _$CompanySignInState {
  const factory CompanySignInState.initial() = InitialCompanySignInState;

  const factory CompanySignInState.telephoneState({
    required final Phone phone,
    required final FormzStatus statusA,
  }) = TelephoneCompanySignInState;

  const factory CompanySignInState.codeState({
    required final Texts code,
    required final FormzStatus statusB,
  }) = CodeCompanySignInState;

  const factory CompanySignInState.successSignIn() = SuccessCompanySignInState;
}
