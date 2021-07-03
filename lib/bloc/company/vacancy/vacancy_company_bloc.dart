import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../company.dart';

part 'vacancy_company_bloc.freezed.dart';

class VacancyCompanyBloc
    extends Bloc<VacancyCompanyEvent, VacancyCompanyState> {
  final GetVacancyCompany getVacancy;
  final GetLocalVacancyCompany getLocalVacancy;
  final CompanyRemoteDataBase switchVacancy;

  VacancyCompanyBloc(this.getVacancy, this.getLocalVacancy, this.switchVacancy)
      : super(const VacancyCompanyState.empty());

  @override
  Stream<VacancyCompanyState> mapEventToState(
      VacancyCompanyEvent event) async* {
    yield* event.map(
        getVacancy: _getVacancyEvent,
        activateOrDeactivate: _activateOrDeactivateVacancyEvent);
  }

  Stream<VacancyCompanyState> _getVacancyEvent(
      _GetVacancyCompanyEvent event) async* {
    yield const VacancyCompanyState.loading();
    final localVacancy = await getLocalVacancy(Params());
    yield* localVacancy.fold((failure) async* {
      final vacancyCompany = await getVacancy(Params());
      yield* vacancyCompany.fold((failure) async* {
        yield const VacancyCompanyState.noVacancy();
      }, (data) async* {
        yield VacancyCompanyState.loaded(
            vacancy: data, status: FormzStatus.pure);
      });
    }, (vacancy) async* {
      // if (vacancy.id > 0) {
      final vacancyCompany = await getVacancy(Params(id: vacancy.id));
      yield* vacancyCompany.fold((failure) async* {
        yield const VacancyCompanyState.noVacancy();
      }, (data) async* {
        yield VacancyCompanyState.loaded(
            vacancy: data, status: FormzStatus.pure);
      });
      // } else {
      //   yield const VacancyCompanyState.noVacancy();
      // }
    });
  }

  Stream<VacancyCompanyState> _activateOrDeactivateVacancyEvent(
      _ActivateOrDeactivateVacancyCompanyEvent event) async* {
    try {
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) =>
              _state.copyWith(status: FormzStatus.submissionInProgress));
      if (event.active == 1) {
        final result = await switchVacancy
            .activateOrDeactivateVacancy("deactivate?id=${event.id}");
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(
                status: FormzStatus.submissionSuccess, vacancy: result));
      } else {
        final result = await switchVacancy
            .activateOrDeactivateVacancy("activate?id=${event.id}");
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(
                status: FormzStatus.submissionSuccess, vacancy: result));
      }
    } catch (_) {
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) =>
              _state.copyWith(status: FormzStatus.submissionFailure));
    }
  }
}

@freezed
abstract class VacancyCompanyEvent with _$VacancyCompanyEvent {
  const factory VacancyCompanyEvent.getVacancy() = _GetVacancyCompanyEvent;

  const factory VacancyCompanyEvent.activateOrDeactivate(
      {required final int id,
      required final int active,}) = _ActivateOrDeactivateVacancyCompanyEvent;
}

@freezed
abstract class VacancyCompanyState with _$VacancyCompanyState {
  const factory VacancyCompanyState.empty() = EmptyVacancyCompanyState;

  const factory VacancyCompanyState.loading() = LoadingVacancyCompanyState;

  const factory VacancyCompanyState.loaded(
      {required final Vacancy vacancy,
      required final FormzStatus status}) = LoadedVacancyCompanyState;

  const factory VacancyCompanyState.noVacancy() = NoVacancyCompanyState;
}
