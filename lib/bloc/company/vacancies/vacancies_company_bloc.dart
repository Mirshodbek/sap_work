import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../company.dart';

part 'vacancies_company_bloc.freezed.dart';

class VacanciesCompanyBloc
    extends Bloc<VacanciesCompanyEvent, VacanciesCompanyState> {
  final GetVacanciesCompany vacanciesCompany;
  final GetLocalVacanciesCompany localVacanciesName;
  final CompanyRemoteDataBase remoteData;
  List<LocalVacancyData> nameVacancies = <LocalVacancyData>[];

  VacanciesCompanyBloc(
      this.vacanciesCompany, this.localVacanciesName, this.remoteData)
      : super(const VacanciesCompanyState.empty());

  @override
  Stream<VacanciesCompanyState> mapEventToState(
      VacanciesCompanyEvent event) async* {
    yield* event.map(
        getVacancies: _getVacanciesEvent,
        addOrDeleteLocalVacancy: _addOrDeleteLocalVacancyEvent,
        editLocalName: _editLocalName,
        editRemotedName: _editRemotedName);
  }

  Stream<VacanciesCompanyState> _getVacanciesEvent(
      _GetVacanciesCompanyEvent event) async* {
    yield const VacanciesCompanyState.loading();
    final profile = await vacanciesCompany(NoParams());
    yield* profile.fold(
      (failure) async* {
        yield VacanciesCompanyState.error(
            message: _mapFailureToMessage(failure));
      },
      (data) async* {
        final localVacancy = await localVacanciesName(ParamsLocalVacancy());
        yield* localVacancy.fold((failure) async* {
          yield VacanciesCompanyState.loaded(
              vacancies: data,
              localVacanciesName: nameVacancies,
              status: EMPTY_BLOC);
        }, (names) async* {
          nameVacancies = names;
          yield VacanciesCompanyState.loaded(
              vacancies: data, localVacanciesName: names, status: EMPTY_BLOC);
        });
      },
    );
  }

  Stream<VacanciesCompanyState> _addOrDeleteLocalVacancyEvent(
      _AddOrDeleteLocalVacanciesCompanyEvent event) async* {
    if (event.delete) {
      final localVacancy = await localVacanciesName(ParamsLocalVacancy(
          writeVacancies: true,
          vacancies: List.from(nameVacancies)
            ..removeWhere((it) => it.name == event.nameVacancy)));
      yield* _updateLocalNames(localVacancy);
    } else {
      final localVacancy = await localVacanciesName(ParamsLocalVacancy(
          writeVacancies: true,
          vacancies: <LocalVacancyData>[
            ...nameVacancies,
            LocalVacancyData(event.nameVacancy, nameVacancies.length - 1)
          ]));
      yield* _updateLocalNames(localVacancy);
    }
  }

  Stream<VacanciesCompanyState> _editLocalName(
      _EditLocalNameVacanciesCompanyEvent event) async* {
    final localVacancy = await localVacanciesName(ParamsLocalVacancy(
        writeVacancies: true,
        vacancies: List.from(nameVacancies)
          ..replaceWhere((it) => it.id == event.id,
              LocalVacancyData(event.nameVacancy, event.id))));
    yield* _updateLocalNames(localVacancy);
  }

  Stream<VacanciesCompanyState> _editRemotedName(
      _EditRemotedNameVacanciesCompanyEvent event) async* {
    try {
      final result = await remoteData.changeVacancyCompany(event.id,
          ParamsVacancy(name: event.vacancyName, category: event.category));
      yield* _status(VACANCIES_COMPANY_BLOC_CHANGE_VACANCIES_NAME_SUCCEED);
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(
              vacancies: List.from(_state.vacancies)
                ..replaceWhere((it) => it.id == event.id, result)));
    } catch (_) {
      yield* _status(VACANCIES_COMPANY_BLOC_CHANGE_VACANCIES_NAME_FAILURE);
    }
  }

  Stream<VacanciesCompanyState> _updateLocalNames(
      Either<Failure, List<LocalVacancyData>> localVacancy) async* {
    yield localVacancy.fold((failure) {
      return state.maybeMap(
          orElse: () => state,
          loaded: (_state) =>
              _state.copyWith(localVacanciesName: nameVacancies));
    }, (names) {
      nameVacancies = names;
      return state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(localVacanciesName: names));
    });
  }

  Stream<VacanciesCompanyState> _status(String status) async* {
    yield state.maybeMap(
        orElse: () => state,
        loaded: (_state) => _state.copyWith(status: EMPTY_BLOC));
    yield state.maybeMap(
        orElse: () => state,
        loaded: (_state) => _state.copyWith(status: status));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHE_FAILURE_MESSAGE;
      default:
        return 'Unexpected error';
    }
  }
}

@freezed
abstract class VacanciesCompanyEvent with _$VacanciesCompanyEvent {
  const factory VacanciesCompanyEvent.getVacancies() =
      _GetVacanciesCompanyEvent;

  const factory VacanciesCompanyEvent.addOrDeleteLocalVacancy(
      {required final String nameVacancy,
      required final bool delete}) = _AddOrDeleteLocalVacanciesCompanyEvent;

  const factory VacanciesCompanyEvent.editLocalName(
      {required final String nameVacancy,
      required final int id}) = _EditLocalNameVacanciesCompanyEvent;

  const factory VacanciesCompanyEvent.editRemotedName(
      {required final String vacancyName,
      required final int category,
      required final int id}) = _EditRemotedNameVacanciesCompanyEvent;
}

@freezed
abstract class VacanciesCompanyState with _$VacanciesCompanyState {
  const factory VacanciesCompanyState.empty() = EmptyVacanciesCompanyState;

  const factory VacanciesCompanyState.loading() = LoadingVacanciesCompanyState;

  const factory VacanciesCompanyState.loaded(
          {required final List<Vacancy> vacancies,
          required final String status,
          required final List<LocalVacancyData> localVacanciesName}) =
      LoadedVacanciesCompanyState;

  const factory VacanciesCompanyState.error({required final String message}) =
      ErrorVacanciesCompanyState;
}
