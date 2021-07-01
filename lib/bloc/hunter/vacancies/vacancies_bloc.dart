import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sap_work/screens/hunter/hunter.dart';

part 'vacancies_bloc.freezed.dart';

const String empty = '';

class VacanciesBloc extends Bloc<VacanciesEvent, VacanciesState> {
  bool _isExtension = false;
  List<int> _feedbackIds = [];
  late SharedPreferences _prefs;
  List<FavoriteVacancy> _vacancies = [];
  final HunterRepositoryBase _repository;
  List<FavoriteVacancy> _favoriteVacancies = [];
  Resume _resume = Resume(0, 0, empty, empty, empty, empty, empty, 0, [], []);

  VacanciesBloc(this._repository) : super(const VacanciesState.initial());

  @override
  Stream<VacanciesState> mapEventToState(
    VacanciesEvent event,
  ) async* {
    yield* event.map(
      onTap: _onTapEvent,
      initial: _initialEvent,
      refresh: _refreshEvent,
      toggle: _toggleVacancies,
      search: _searchVacanciesEvent,
      sendFeedback: _feedbackVacancy,
      selectedView: _selectedViewEvent,
    );
  }

  Stream<VacanciesState> _initialEvent(_InitialVacanciesEvent event) async* {
    _prefs = await SharedPreferences.getInstance();
    if (_prefs.getString("resume_saved") != null) {
      _resume = Resume.fromJson(jsonDecode(_prefs.getString("resume_saved")!));
    }
    if (_prefs.getString("favorite_vacancies") != null) {
      _vacancies =
          FavoriteVacancy.decode(_prefs.getString("favorite_vacancies")!);
    }
    yield VacanciesState.loadedState(
      isExtension: _isExtension,
      resume: _resume,
      vacancies: _vacancies,
      favoriteVacancies: _favoriteVacancies,
    );
  }

  Stream<VacanciesState> _refreshEvent(_RefreshVacanciesEvent event) async* {
    try {
      _prefs = await SharedPreferences.getInstance();
      if (_prefs.getInt('resume_id') != null) {
        _resume = await _repository.getResume(_prefs.getInt('resume_id')!);
        await _prefs.setString("resume_saved", jsonEncode(_resume));
      }
      if (_prefs.getInt('resume_id') != null) {
        final _feedbacks =
            await _repository.getFeedbacks(_prefs.getInt('resume_id')!);
        await _prefs.setString(
            "feedbacks_saved", FeedbackResume.encode(_feedbacks));
        _feedbackIds = [for (var feedback in _feedbacks) feedback.vacancy_id];
      }
      final _favoriteVacancy = await _repository.getFavoriteVacancies();
      yield* _repository.getVacancies().map((event) {
        event = event.where((it) => it.active == 1).toList();
        _vacancies = [
          for (var vacancy in event)
            if (_favoriteVacancy.any((it) => it.id == vacancy.id))
              if (_feedbackIds.contains(vacancy.id))
                FavoriteVacancy(
                    vacancy, true, true, DateTime.parse(vacancy.updated_at))
              else
                FavoriteVacancy(
                    vacancy, true, false, DateTime.parse(vacancy.updated_at))
            else if (_feedbackIds.contains(vacancy.id))
              FavoriteVacancy(
                  vacancy, false, true, DateTime.parse(vacancy.updated_at))
            else
              FavoriteVacancy(
                  vacancy, false, false, DateTime.parse(vacancy.updated_at)),
        ];
        _vacancies.sort((a, b) => b.dateTime.compareTo(a.dateTime));
        return VacanciesState.loadedState(
          isExtension: _isExtension,
          resume: _resume,
          vacancies: _vacancies,
          favoriteVacancies: _vacancies.where((it) => it.isFavorite).toList(),
        );
      });
      await _prefs.setString(
          "favorite_vacancies", FavoriteVacancy.encode(_vacancies));
    } catch (_) {
      add(const VacanciesEvent.initial());
    }
  }

  Stream<VacanciesState> _selectedViewEvent(
      _SelectedViewVacanciesEvent event) async* {
    _isExtension = !event.isExtension;
    yield state.maybeMap(
      orElse: () => state,
      loadedState: (_state) => _state.copyWith(isExtension: _isExtension),
    );
  }

  Stream<VacanciesState> _searchVacanciesEvent(
      _SearchVacanciesEvent event) async* {
    if (event.search.isEmpty) {
      yield state.maybeMap(
        orElse: () => state,
        loadedState: (_state) => _state.copyWith(vacancies: _vacancies),
      );
    } else {
      final result = _vacancies.where((it) {
        return it.vacancy.name.containsIgnoreCase(event.search) ||
            it.vacancy.city.containsIgnoreCase(event.search);
      }).toList();
      yield state.maybeMap(
        orElse: () => state,
        loadedState: (_state) => _state.copyWith(vacancies: result),
      );
    }
  }

  Stream<VacanciesState> _toggleVacancies(_ToggleVacanciesEvent event) async* {
    try {
      var vacancy = _vacancies.where((it) => it.vacancy.id == event.id).single;
      vacancy = vacancy.copyWith(isFavorite: !vacancy.isFavorite);
      if (!vacancy.isFavorite) {
        await _repository.clickFavoriteVacancy("/delete?vacancy=", event.id);
      } else {
        await _repository.clickFavoriteVacancy("/add?vacancy=", event.id);
      }
      _vacancies = List.from(_vacancies)
        ..replaceWhere((it) => it.vacancy == vacancy.vacancy, vacancy);
      await _prefs.setString(
          "favorite_vacancies", FavoriteVacancy.encode(_vacancies));
      yield state.maybeMap(
        orElse: () => state,
        loadedState: (_state) => _state.copyWith(
          vacancies: _vacancies,
          favoriteVacancies: _vacancies.where((it) => it.isFavorite).toList(),
        ),
      );
    } catch (_) {}
  }

  Stream<VacanciesState> _onTapEvent(_OnTapVacanciesEvent event) async* {
    yield VacanciesState.screens(id: event.id);
    yield state.maybeMap(orElse: () => state);
  }

  Stream<VacanciesState> _feedbackVacancy(
      _SendFeedbackVacanciesEvent event) async* {
    await _prefs.setInt("vacancy_id", event.id);
    final resumeId = _prefs.getInt('resume_id');
    try {
      if (resumeId != null) {
        await _repository.postFeedback(resumeId, event.id);
        yield const SuccessFeedbackVacanciesState();
        yield state.maybeMap(orElse: () => state);
      }
    } catch (_) {}
  }

  @override
  Future<void> close() {
    return super.close();
  }
}

@freezed
abstract class VacanciesEvent with _$VacanciesEvent {
  const factory VacanciesEvent.initial() = _InitialVacanciesEvent;

  const factory VacanciesEvent.refresh() = _RefreshVacanciesEvent;

  const factory VacanciesEvent.search({
    required final String search,
  }) = _SearchVacanciesEvent;

  const factory VacanciesEvent.selectedView({
    required final bool isExtension,
  }) = _SelectedViewVacanciesEvent;

  const factory VacanciesEvent.toggle({
    required final int id,
  }) = _ToggleVacanciesEvent;

  const factory VacanciesEvent.onTap({
    required final int id,
  }) = _OnTapVacanciesEvent;

  const factory VacanciesEvent.sendFeedback({
    required final int id,
  }) = _SendFeedbackVacanciesEvent;
}

@freezed
abstract class VacanciesState with _$VacanciesState {
  const factory VacanciesState.initial() = InitialVacanciesState;

  const factory VacanciesState.screens({
    final int? id,
  }) = ScreensVacanciesState;

  const factory VacanciesState.successFeedback() =
      SuccessFeedbackVacanciesState;

  const factory VacanciesState.loadedState({
    required final bool isExtension,
    required final List<FavoriteVacancy> vacancies,
    required final List<FavoriteVacancy> favoriteVacancies,
    required final Resume resume,
  }) = LoadedVacanciesState;
}
