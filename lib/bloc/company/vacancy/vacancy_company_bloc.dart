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
        postVacancy: _postVacancyEvent,
        editVacancy: _editVacancyEvent,
        activateOrDeactivate: _activateOrDeactivateVacancyEvent);
  }

  Stream<VacancyCompanyState> _getVacancyEvent(
      _GetVacancyCompanyEvent event) async* {
    yield const VacancyCompanyState.loading();
    final localVacancy = await getLocalVacancy(ParamsLocalVacancy());
    yield* localVacancy.fold((failure) async* {
      yield const VacancyCompanyState.noVacancy(status: EMPTY_BLOC);
    }, (vacancy) async* {
      if (vacancy.id > 0) {
        final vacancyCompany = await getVacancy(vacancy.id);
        yield* vacancyCompany.fold((failure) async* {
          yield const VacancyCompanyState.noVacancy(status: EMPTY_BLOC);
        }, (data) async* {
          if (vacancy.id == data.id) {
            yield VacancyCompanyState.loaded(vacancy: data, status: EMPTY_BLOC);
          } else {
            yield VacancyCompanyState.loaded(
                vacancy: data,
                status: VACANCY_COMPANY_BLOC_GET_VACANCY_FAILURE);
          }
        });
      } else {
        yield const VacancyCompanyState.noVacancy(status: EMPTY_BLOC);
      }
    });
  }

  Stream<VacancyCompanyState> _postVacancyEvent(
      _PostVacancyCompanyEvent event) async* {
    final isValidated = Formz.validate([
      Texts.dirty(event.vacancyName),
      Texts.dirty(event.city),
      Texts.dirty(event.grade),
      Texts.dirty(event.stage),
      Texts.dirty(event.type),
      Texts.dirty(event.body),
      Texts.dirty(event.minsalary),
      Texts.dirty(event.maxsalary),
      Texts.dirty(event.abilities),
      Texts.dirty(event.schedule),
    ]);

    if (isValidated.isValidated &&
        event.categoryId != 0 &&
        event.sphereId != 0) {
      try {
        yield* _statusNoVacancy(VACANCY_COMPANY_BLOC_POST_VACANCY_PROGRESS);
        final result = await remoteData.postVacancyCompany(ParamsVacancy(
          name: event.vacancyName,
          city: event.city,
          grade: event.grade,
          stage: event.stage,
          schedule: event.schedule,
          body: event.body,
          minsalary: event.minsalary,
          maxsalary: event.maxsalary,
          type: event.type,
          abilities: event.abilities,
          category: event.categoryId,
          sphere: event.sphereId,
        ));
        await getLocalVacancy(ParamsLocalVacancy(
            writeVacancy: true,
            vacancy: LocalVacancyData(event.vacancyName, result.id)));
        yield* _statusNoVacancy(VACANCY_COMPANY_BLOC_POST_VACANCY_SUCCEED);
      } catch (_) {
        yield* _statusNoVacancy(VACANCY_COMPANY_BLOC_POST_VACANCY_FAILURE);
      }
    } else {
      yield* _statusNoVacancy(VACANCY_COMPANY_BLOC_POST_VACANCY_REQUIRED);
    }
  }

  Stream<VacancyCompanyState> _activateOrDeactivateVacancyEvent(
      _ActivateOrDeactivateVacancyCompanyEvent event) async* {
    try {
      yield* _statusLoaded(VACANCY_COMPANY_BLOC_ACTIVE_OR_DEACTIVATE_PROGRESS);
      if (event.active == 1) {
        final result = await remoteData
            .activateOrDeactivateVacancy("deactivate?id=${event.id}");
        yield* _statusLoaded(VACANCY_COMPANY_BLOC_ACTIVE_OR_DEACTIVATE_SUCCEED);
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(vacancy: result));
      } else {
        final result = await remoteData
            .activateOrDeactivateVacancy("activate?id=${event.id}");
        yield* _statusLoaded(VACANCY_COMPANY_BLOC_ACTIVE_OR_DEACTIVATE_SUCCEED);
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(vacancy: result));
      }
    } catch (_) {
      yield* _statusLoaded(VACANCY_COMPANY_BLOC_ACTIVE_OR_DEACTIVATE_FAILURE);
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
              category: event.categoryId,
              sphere: event.sphereId));
      yield* _statusLoaded(VACANCY_COMPANY_BLOC_CHANGE_VACANCY_SUCCEED);
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(vacancy: result));
    } catch (_) {
      yield* _statusLoaded(VACANCY_COMPANY_BLOC_CHANGE_VACANCY_FAILURE);
    }
  }

  Stream<VacancyCompanyState> _statusLoaded(String status) async* {
    yield state.maybeMap(
        orElse: () => state,
        loaded: (_state) => _state.copyWith(status: EMPTY_BLOC));
    yield state.maybeMap(
        orElse: () => state,
        loaded: (_state) => _state.copyWith(status: status));
  }

  Stream<VacancyCompanyState> _statusNoVacancy(String status) async* {
    yield state.maybeMap(
        orElse: () => state,
        noVacancy: (_state) => _state.copyWith(status: EMPTY_BLOC));
    yield state.maybeMap(
        orElse: () => state,
        noVacancy: (_state) => _state.copyWith(status: status));
  }
}

@freezed
abstract class VacancyCompanyEvent with _$VacancyCompanyEvent {
  const factory VacancyCompanyEvent.getVacancy() = _GetVacancyCompanyEvent;

  const factory VacancyCompanyEvent.postVacancy(
      {required final String city,
      required final String vacancyName,
      required final String body,
      required final String grade,
      required final String minsalary,
      required final String maxsalary,
      required final String type,
      required final String stage,
      required final String schedule,
      required final String abilities,
      required final int categoryId,
      required final int sphereId}) = _PostVacancyCompanyEvent;

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
      required final int sphereId,
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
      required final String status}) = LoadedVacancyCompanyState;

  const factory VacancyCompanyState.noVacancy({required final String status}) =
      NoVacancyCompanyState;
}
