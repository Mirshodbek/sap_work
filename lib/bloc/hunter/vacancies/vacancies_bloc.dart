import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/models/vacancy/vacancy.dart';
import 'package:sap_work/repository/hunter_repository.dart';
import 'package:sap_work/extensions/string_extension.dart';
import 'package:sap_work/extensions/list_extension.dart';

part 'vacancies_bloc.freezed.dart';

class VacanciesBloc extends Bloc<VacanciesEvent, VacanciesState> {
  final HunterRepositoryBase _repository;
  List<FavoriteVacancy> _vacancies = [];
  bool _isExtension = false;
  bool _isFavorite = false;

  VacanciesBloc(this._repository) : super(const VacanciesState.initial());

  @override
  Stream<VacanciesState> mapEventToState(
    VacanciesEvent event,
  ) async* {
    yield* event.map(
      initial: _initialEvent,
      selectedView: _selectedViewEvent,
      searchVacancies: _searchVacanciesEvent,
      toggleVacancies: _toggleVacancies,
    );
  }

  Stream<VacanciesState> _initialEvent(_InitialVacanciesEvent event) async* {
   try {
      yield* _repository.getVacancies().map((event) {
        _vacancies = [
          for (var vacancy in event) FavoriteVacancy(vacancy, _isFavorite),
        ];
        return VacanciesState.loadedState(
          isExtension: _isExtension,
          vacancies: _vacancies,
        );
      });
    } catch(_){

   }
  }

  Stream<VacanciesState> _selectedViewEvent(
      _SelectedViewVacanciesEvent event) async* {
    _isExtension = !event.isExtension;
    yield VacanciesState.loadedState(
      isExtension: _isExtension,
      vacancies: _vacancies,
    );
  }

  Stream<VacanciesState> _searchVacanciesEvent(
      _SearchVacanciesEvent event) async* {
    if (event.search.isEmpty) {
      yield VacanciesState.loadedState(
        isExtension: _isExtension,
        vacancies: _vacancies,
      );
    } else {
      final result = _vacancies.where((it) {
        return it.vacancy.name.containsIgnoreCase(event.search) ||
            it.vacancy.city.containsIgnoreCase(event.search);
      }).toList();
      yield VacanciesState.loadedState(
        isExtension: _isExtension,
        vacancies: result,
      );
    }
  }

  Stream<VacanciesState> _toggleVacancies(_ToggleVacanciesEvent event) async* {
    var vacancy = _vacancies.where((it) => it.vacancy.id == event.id).single;
    vacancy = vacancy.copyWith(isFavorite: !vacancy.isFavorite);
    _vacancies = List.from(_vacancies)
      ..replaceWhere((it) => it.vacancy == vacancy.vacancy, vacancy);
    yield VacanciesState.loadedState(
      isExtension: _isExtension,
      vacancies: _vacancies,
    );
  }

  @override
  Future<void> close() {
    return super.close();
  }
}

@freezed
abstract class VacanciesEvent with _$VacanciesEvent {
  const factory VacanciesEvent.initial() = _InitialVacanciesEvent;

  const factory VacanciesEvent.selectedView({
    required final bool isExtension,
  }) = _SelectedViewVacanciesEvent;

  const factory VacanciesEvent.searchVacancies({
    required final String search,
  }) = _SearchVacanciesEvent;

  const factory VacanciesEvent.toggleVacancies({
    required final int id,
  }) = _ToggleVacanciesEvent;
}

@freezed
abstract class VacanciesState with _$VacanciesState {
  const factory VacanciesState.initial() = InitialVacanciesState;

  const factory VacanciesState.loadedState({
    required final bool isExtension,
    required final List<FavoriteVacancy> vacancies,
  }) = LoadedVacanciesState;
}
