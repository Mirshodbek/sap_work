import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/screens/authorization/authorization.dart';

part 'company_sign_up_bloc.freezed.dart';

class CompanySignUpBloc extends Bloc<CompanySignUpEvent, CompanySignUpState> {
  final AuthProvider _provider;

  CompanySignUpBloc(this._provider) : super(const CompanySignUpState.initial());
  FormzStatus status = FormzStatus.pure;

  @override
  Stream<CompanySignUpState> mapEventToState(
    CompanySignUpEvent event,
  ) async* {
    yield* event.map(
      initial: _initialEvent,
      pageOne: _pageOneEvent,
      pageTwo: _pageTwoEvent,
    );
  }

  Stream<CompanySignUpState> _initialEvent(
      _InitialCompanySignUpEvent event) async* {
    yield const CompanySignUpState.companyState(
      name: Texts.pure(),
      phone: Phone.pure(),
      inn: Texts.pure(),
      nameCompany: Texts.pure(),
      address: Texts.pure(),
      bin: Texts.pure(),
      bik: Texts.pure(),
      statusA: FormzStatus.pure,
      statusB: FormzStatus.pure,
    );
  }

  Stream<CompanySignUpState> _pageOneEvent(
      _PageOneCompanySignUpEvent event) async* {
    yield CompanySignUpState.companyState(
      name: event.name,
      phone: event.phone,
      inn: event.inn,
      nameCompany: Texts.pure(),
      address: Texts.pure(),
      bin: Texts.pure(),
      bik: Texts.pure(),
      statusA: Formz.validate([event.name, event.phone, event.inn]),
      statusB: FormzStatus.pure,
    );
  }

  Stream<CompanySignUpState> _pageTwoEvent(
      _PageTwoCompanySignUpEvent event) async* {
    final isValidated = Formz.validate([
      event.name,
      event.phone,
      event.inn,
      event.nameCompany,
      event.address,
      event.bin,
      event.bik,
    ]);
    status = isValidated;
    if (isValidated.isValidated) {
      try {
        yield state.maybeMap(
          orElse: () => state,
          companyState: (_state) =>
              _state.copyWith(statusB: FormzStatus.submissionInProgress),
        );
        await _provider.signUpCompany(
            event.phone.value,
            event.name.value,
            event.bin.value,
            event.bik.value,
            event.inn.value,
            event.address.value);
        await _provider.signInPhoneCompany(event.phone.value);
        yield  CompanySignUpState.successSignUp(phone: event.phone.value);
      } catch (_) {
        yield state.maybeMap(
          orElse: () => state,
          companyState: (_state) =>
              _state.copyWith(statusB: FormzStatus.submissionFailure),
        );
      }
    } else {
      yield CompanySignUpState.companyState(
        name: event.name,
        phone: event.phone,
        inn: event.inn,
        nameCompany: event.nameCompany,
        address: event.address,
        bin: event.bin,
        bik: event.bik,
        statusA: FormzStatus.pure,
        statusB: isValidated,
      );
    }
  }
}

@freezed
abstract class CompanySignUpEvent with _$CompanySignUpEvent {
  const factory CompanySignUpEvent.initial() = _InitialCompanySignUpEvent;

  const factory CompanySignUpEvent.pageOne({
    required final Texts name,
    required final Phone phone,
    required final Texts inn,
  }) = _PageOneCompanySignUpEvent;

  const factory CompanySignUpEvent.pageTwo({
    required final Texts name,
    required final Phone phone,
    required final Texts inn,
    required final Texts nameCompany,
    required final Texts address,
    required final Texts bin,
    required final Texts bik,
  }) = _PageTwoCompanySignUpEvent;
}

@freezed
abstract class CompanySignUpState with _$CompanySignUpState {
  const factory CompanySignUpState.initial() = _InitialCompanySignUpState;

  const factory CompanySignUpState.companyState({
    required final Texts name,
    required final Phone phone,
    required final Texts inn,
    required final Texts nameCompany,
    required final Texts address,
    required final Texts bin,
    required final Texts bik,
    required final FormzStatus statusA,
    required final FormzStatus statusB,
  }) = CompanyStateCompanySignUpState;

  const factory CompanySignUpState.successSignUp({required final String phone}) =
      SuccessSignUpCompanySignUpState;
}
