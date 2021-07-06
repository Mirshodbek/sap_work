import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/models/stage.dart';
import 'package:sap_work/repository/hunter/hunter_repository.dart';
import 'package:sap_work/resources/lists.dart';
import 'package:sap_work/resources/extensions/list_extension.dart';
import 'package:sap_work/resources/extensions/string_extension.dart';

part 'filter_bloc.freezed.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  final HunterRepositoryBase _repository;

  FilterBloc(this._repository) : super(const FilterState.initial());
  List<StageList> _checkBoxes = [];
  List<String> _countries = [];
  List<String> _professions = [];
  String _country = 'Город';
  String _profession = 'Профессиональная область';
  String? _employmentType = '';

  @override
  Stream<FilterState> mapEventToState(
    FilterEvent event,
  ) async* {
    yield* event.map(
      initial: _initialEvent,
      toggleCheckbox: _toggleCheckboxEvent,
      onTap: _onTapEvent,
      search: _searchEvent,
      onTapType: _onTapTypeEvent,
      save: _saveEvent,
    );
  }

  Stream<FilterState> _initialEvent(_InitialFilterEvent event) async* {
    _checkBoxes = [];
    _countries = Lists.countryList;
    _professions = Lists.listProfessions;
    yield FilterState.filter(
      checkBoxes: _checkBoxes,
      countries: _countries,
      professions: _professions,
      country: _country,
      profession: _profession,
      employmentType: _employmentType,
    );
  }

  Stream<FilterState> _toggleCheckboxEvent(
      _ToggleCheckboxFilterEvent event) async* {
    var checkBox = _checkBoxes.where((it) => it.title == event.title).single;
    checkBox = checkBox.copyWith(value: !checkBox.value);
    _checkBoxes = List.from(_checkBoxes)
      ..replaceWhere((it) => it.title == event.title, checkBox);
    yield state.maybeMap(
      orElse: () => state,
      filter: (_state) => _state.copyWith(
        checkBoxes: _checkBoxes,
      ),
    );
  }

  Stream<FilterState> _searchEvent(_SearchFilterEvent event) async* {
    final resultCountry = _countries.where((it) {
      return it.containsIgnoreCase(event.search);
    }).toList();
    final resultProfession = _professions.where((it) {
      return it.containsIgnoreCase(event.search);
    }).toList();
    yield state.maybeMap(
      orElse: () => state,
      filter: (_state) => _state.copyWith(
        countries: resultCountry,
        professions: resultProfession,
      ),
    );
  }

  Stream<FilterState> _onTapEvent(_OnTapFilterEvent event) async* {
    yield state.maybeMap(
      orElse: () => state,
      filter: (_state) => _state.copyWith(
        country: event.country,
        profession: event.profession,
      ),
    );
  }

  Stream<FilterState> _onTapTypeEvent(_OnTapTypeFilterEvent event) async* {
    yield state.maybeMap(
      orElse: () => state,
      filter: (_state) => _state.copyWith(employmentType: event.employmentType),
    );
  }

  Stream<FilterState> _saveEvent(_SaveFilterEvent event) async* {
    try {
      await _repository.getVacancies(
        city: "Краснодар",
        type: _employmentType!,
      );
      yield const FilterState.savedState();
      yield FilterState.filter(
        checkBoxes: _checkBoxes,
        countries: _countries,
        professions: _professions,
        country: _country,
        profession: _profession,
        employmentType: _employmentType,
      );
    } catch (_) {}
  }
}

@freezed
abstract class FilterEvent with _$FilterEvent {
  const factory FilterEvent.initial() = _InitialFilterEvent;

  const factory FilterEvent.toggleCheckbox({
    required final String title,
  }) = _ToggleCheckboxFilterEvent;

  const factory FilterEvent.onTap({
    required final String country,
    required final String profession,
  }) = _OnTapFilterEvent;

  const factory FilterEvent.onTapType({
    required final String? employmentType,
  }) = _OnTapTypeFilterEvent;

  const factory FilterEvent.search({
    required final String search,
  }) = _SearchFilterEvent;

  const factory FilterEvent.save() = _SaveFilterEvent;
}

@freezed
abstract class FilterState with _$FilterState {
  const factory FilterState.initial() = InitialFilterState;

  const factory FilterState.savedState() = SavedStateFilterState;

  const factory FilterState.filter({
    required final List<StageList> checkBoxes,
    required final List<String> countries,
    required final List<String> professions,
    required final String country,
    required final String profession,
    required final String? employmentType,
  }) = FilterScreenState;
}
