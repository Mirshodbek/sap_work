import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../company.dart';

part 'vacancies_company_bloc.freezed.dart';

class VacanciesCompanyBloc
    extends Bloc<VacanciesCompanyEvent, VacanciesCompanyState> {
  final GetVacanciesCompany vacanciesCompany;
  final GetLocalVacanciesCompany localVacanciesName;
  List<LocalVacancyData> nameVacancies = <LocalVacancyData>[];

  VacanciesCompanyBloc(this.vacanciesCompany, this.localVacanciesName)
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
        final localVacancy = await localVacanciesName(Params());
        yield* localVacancy.fold((failure) async* {
          nameVacancies = <LocalVacancyData>[];
          yield VacanciesCompanyState.loaded(
              vacancies: data, localVacanciesName: nameVacancies);
        }, (names) async* {
          nameVacancies = names;
          yield VacanciesCompanyState.loaded(
              vacancies: data, localVacanciesName: names);
        });
      },
    );
  }

  Stream<VacanciesCompanyState> _addOrDeleteLocalVacancyEvent(
      _AddOrDeleteLocalVacanciesCompanyEvent event) async* {
    if (event.delete) {
      final localVacancy = await localVacanciesName(Params(
          writeVacancies: true,
          vacancies: List.from(nameVacancies)
            ..removeWhere((it) => it.name == event.nameVacancy)));
      yield* _updateLocalNames(localVacancy);
    } else {
      final localVacancy = await localVacanciesName(Params(
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
    nameVacancies = List.from(nameVacancies)
      ..replaceWhere((it) => it.id == event.id,
          LocalVacancyData(event.nameVacancy, event.id));
    final localVacancy = await localVacanciesName(
        Params(writeVacancies: true, vacancies: nameVacancies));
    yield* _updateLocalNames(localVacancy);
  }

  Stream<VacanciesCompanyState> _editRemotedName(
      _EditRemotedNameVacanciesCompanyEvent event) async* {}

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
      {required final String nameVacancy,
      required final int id}) = _EditRemotedNameVacanciesCompanyEvent;
}

@freezed
abstract class VacanciesCompanyState with _$VacanciesCompanyState {
  const factory VacanciesCompanyState.empty() = EmptyVacanciesCompanyState;

  const factory VacanciesCompanyState.loading() = LoadingVacanciesCompanyState;

  const factory VacanciesCompanyState.loaded(
          {required final List<VacancyCompany> vacancies,
          required final List<LocalVacancyData> localVacanciesName}) =
      LoadedVacanciesCompanyState;

  const factory VacanciesCompanyState.error({required final String message}) =
      ErrorVacanciesCompanyState;
}
