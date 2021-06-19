import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/data_provider/auth_provider.dart';
import 'package:sap_work/utils/validator.dart';

part 'employer_sign_up_bloc.freezed.dart';

class EmployerSignUpBloc
    extends Bloc<EmployerSignUpEvent, EmployerSignUpState> {
  final AuthProvider _provider;

  EmployerSignUpBloc(this._provider)
      : super(const EmployerSignUpState.initial());
  FormzStatus status = FormzStatus.pure;

  @override
  Stream<EmployerSignUpState> mapEventToState(
    EmployerSignUpEvent event,
  ) async* {
    yield* event.map(
      initial: _initialEvent,
      pageOne: _pageOneEvent,
      pageTwo: _pageTwoEvent,
    );
  }

  Stream<EmployerSignUpState> _initialEvent(
      _InitialEmployerSignUpEvent event) async* {
    yield const EmployerSignUpState.employerState(
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

  Stream<EmployerSignUpState> _pageOneEvent(
      _PageOneEmployerSignUpEvent event) async* {
    yield EmployerSignUpState.employerState(
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

  Stream<EmployerSignUpState> _pageTwoEvent(
      _PageTwoEmployerSignUpEvent event) async* {
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
          employerState: (_state) =>
              _state.copyWith(statusB: FormzStatus.submissionInProgress),
        );
        await Future.delayed(Duration(seconds: 2));
        await _provider.signUpEmployer(
            event.phone.value,
            event.name.value,
            event.bin.value,
            event.bik.value,
            event.inn.value,
            event.address.value);
        yield const EmployerSignUpState.successSignUp();
      } catch (_) {
        yield state.maybeMap(
          orElse: () => state,
          employerState: (_state) =>
              _state.copyWith(statusB: FormzStatus.submissionFailure),
        );
      }
    } else {
      yield EmployerSignUpState.employerState(
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
abstract class EmployerSignUpEvent with _$EmployerSignUpEvent {
  const factory EmployerSignUpEvent.initial() = _InitialEmployerSignUpEvent;

  const factory EmployerSignUpEvent.pageOne({
    required final Texts name,
    required final Phone phone,
    required final Texts inn,
  }) = _PageOneEmployerSignUpEvent;

  const factory EmployerSignUpEvent.pageTwo({
    required final Texts name,
    required final Phone phone,
    required final Texts inn,
    required final Texts nameCompany,
    required final Texts address,
    required final Texts bin,
    required final Texts bik,
  }) = _PageTwoEmployerSignUpEvent;
}

@freezed
abstract class EmployerSignUpState with _$EmployerSignUpState {
  const factory EmployerSignUpState.initial() = _InitialEmployerSignUpState;

  const factory EmployerSignUpState.employerState({
    required final Texts name,
    required final Phone phone,
    required final Texts inn,
    required final Texts nameCompany,
    required final Texts address,
    required final Texts bin,
    required final Texts bik,
    required final FormzStatus statusA,
    required final FormzStatus statusB,
  }) = EmployerStateEmployerSignUpState;

  const factory EmployerSignUpState.successSignUp() =
      _SuccessSignUpEmployerSignUpState;
}
