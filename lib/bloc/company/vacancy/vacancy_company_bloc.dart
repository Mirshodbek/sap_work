import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../company.dart';

part 'vacancy_company_bloc.freezed.dart';

class VacancyCompanyBloc
    extends Bloc<VacancyCompanyEvent, VacancyCompanyState> {
  final GetVacancyCompany getVacancy;
  final GetLocalVacancyCompany getLocalVacancy;
  final CompanyRemoteDataBase remoteData;

  VacancyCompanyBloc(this.getVacancy, this.getLocalVacancy, this.remoteData)
      : super(const VacancyCompanyState.empty());

  @override
  Stream<VacancyCompanyState> mapEventToState(
      VacancyCompanyEvent event) async* {
    yield* event.map(
        getVacancy: _getVacancyEvent,
        editVacancy: _editVacancyEvent,
        activateOrDeactivate: _activateOrDeactivateVacancyEvent);
  }

  Stream<VacancyCompanyState> _getVacancyEvent(
      _GetVacancyCompanyEvent event) async* {
    yield const VacancyCompanyState.loading();
    final localVacancy = await getLocalVacancy(Params());
    yield* localVacancy.fold((failure) async* {
      yield const VacancyCompanyState.noVacancy();
    }, (vacancy) async* {
      if (vacancy.id > 0) {
        final vacancyCompany = await getVacancy(vacancy.id);
        yield* vacancyCompany.fold((failure) async* {
          yield const VacancyCompanyState.noVacancy();
        }, (data) async* {
          if (vacancy.id == data.id) {
            yield VacancyCompanyState.loaded(
                vacancy: data, status: FormzStatus.pure);
          } else {
            yield const VacancyCompanyState.noInternet();
          }
        });
      } else {
        yield const VacancyCompanyState.noVacancy();
      }
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
        final result = await remoteData
            .activateOrDeactivateVacancy("deactivate?id=${event.id}");
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(
                status: FormzStatus.submissionSuccess, vacancy: result));
      } else {
        final result = await remoteData
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

  Stream<VacancyCompanyState> _editVacancyEvent(
      _EditVacancyCompanyEvent event) async* {
    try {
      final result = await remoteData.changeVacancyCompany(
          event.id,
          ParamsVacancy(
              body: event.body,
              city: event.city,
              grade: event.grade,
              stage: event.stage,
              schedule: event.schedule,
              minsalary: event.minsalary,
              maxsalary: event.maxsalary,
              type: event.type,
              abilities: event.abilities,
              category: event.categoryId));
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(vacancy: result));
    } catch (_) {
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(status: FormzStatus.invalid));
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(
              status: FormzStatus.submissionFailure,
              vacancy: _state.vacancy));
    }
  }
}

@freezed
abstract class VacancyCompanyEvent with _$VacancyCompanyEvent {
  const factory VacancyCompanyEvent.getVacancy() = _GetVacancyCompanyEvent;

  const factory VacancyCompanyEvent.editVacancy(
      {final String? city,
      final String? body,
      final String? grade,
      final String? minsalary,
      final String? maxsalary,
      final String? type,
      final String? stage,
      final String? schedule,
      final String? abilities,
      required final int categoryId,
      required final int id}) = _EditVacancyCompanyEvent;

  const factory VacancyCompanyEvent.activateOrDeactivate({
    required final int id,
    required final int active,
  }) = _ActivateOrDeactivateVacancyCompanyEvent;
}

@freezed
abstract class VacancyCompanyState with _$VacancyCompanyState {
  const factory VacancyCompanyState.empty() = EmptyVacancyCompanyState;

  const factory VacancyCompanyState.loading() = LoadingVacancyCompanyState;

  const factory VacancyCompanyState.loaded(
      {required final Vacancy vacancy,
      required final FormzStatus status}) = LoadedVacancyCompanyState;

  const factory VacancyCompanyState.noVacancy() = NoVacancyCompanyState;

  const factory VacancyCompanyState.noInternet() = NoInternetCompanyState;
}
