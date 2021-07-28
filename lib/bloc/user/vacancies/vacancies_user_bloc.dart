import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/data_source/user/remote_data.dart';
import 'package:sap_work/models/params_user/filter/filter.dart';
import 'package:sap_work/models/vacancy/vacancy.dart';
import 'package:sap_work/repository/exceptions_failures.dart';
import 'package:sap_work/repository/user/usercases/usercases.dart';

part 'vacancies_user_bloc.freezed.dart';

class VacanciesUserBloc extends Bloc<VacanciesUserEvent, VacanciesUserState> {
  final GetRecommendOrPopularVacanciesUser getVacanciesUser;
  final GetFavoriteVacanciesUser getFavoriteVacancies;
  final UserRemoteDataBase remoteData;

  VacanciesUserBloc(
      this.getVacanciesUser, this.getFavoriteVacancies, this.remoteData)
      : super(const VacanciesUserState.empty());

  @override
  Stream<VacanciesUserState> mapEventToState(VacanciesUserEvent event) async* {
    yield* event.map(
        getVacancies: _getVacanciesEvent,
        getVacanciesPagination: _getVacanciesPaginationEvent,
        selectedView: _selectedViewEvent,
        postOrDeleteFavorites: _postOrDeleteFavoritesEvent,
        filter: _filterEvent,
        search: _searchEvent);
  }

  Stream<VacanciesUserState> _getVacanciesEvent(
      _GetVacanciesUserEvent event) async* {
    yield const VacanciesUserState.loading();
    final vacancies = await getVacanciesUser(1);

    final favoriteVacancies = await getFavoriteVacancies(NoParams());
    yield* favoriteVacancies.fold((failure) async* {
      yield VacanciesUserState.error(message: _mapFailureToMessage(failure));
    }, (favorites) async* {
      yield* vacancies.fold((failure) async* {
        yield VacanciesUserState.error(message: _mapFailureToMessage(failure));
      }, (data) async* {
        data.data.sort((a, b) => DateTime.parse(b.updated_at)
            .compareTo(DateTime.parse(a.updated_at)));
        yield VacanciesUserState.loaded(
            favorites: favorites,
            pagination: data,
            vacancies: List.from(data.data)..whereList((it) => it.active == 1),
            isExtension: false,
            status: EMPTY_BLOC);
      });
    });
  }

  Stream<VacanciesUserState> _getVacanciesPaginationEvent(
      _GetVacanciesPaginationUserEvent event) async* {
    final vacancies = await getVacanciesUser(event.page);
    yield* vacancies.fold((failure) async* {
      yield VacanciesUserState.error(message: _mapFailureToMessage(failure));
    }, (data) async* {
      data.data.sort((a, b) =>
          DateTime.parse(b.updated_at).compareTo(DateTime.parse(a.updated_at)));
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) =>
              _state.copyWith(vacancies: (_state.vacancies + data.data)));
    });
  }

  Stream<VacanciesUserState> _selectedViewEvent(
      _SelectedViewVacanciesUserEvent event) async* {
    yield state.maybeMap(
        orElse: () => state,
        loaded: (_state) => _state.copyWith(isExtension: !event.isExtension));
  }

  Stream<VacanciesUserState> _postOrDeleteFavoritesEvent(
      _PostOrDeleteFavoritesVacanciesUserEvent event) async* {
    try {
      final favorites = await remoteData.postOrDeleteFavoriteVacanciesUser(
          event.id, event.type);
      yield* _status(VACANCIES_USER_BLOC_POST_OR_DELETE_SUCCEED);
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(favorites: List.from(favorites)..whereList((it) => it.active == 1)));
    } catch (_) {
      yield* _status(VACANCIES_USER_BLOC_POST_OR_DELETE_FAILURE);
    }
  }

  Stream<VacanciesUserState> _searchEvent(
      _SearchVacanciesUserEvent event) async* {
    try {
      final result = await remoteData.searchVacanciesUser(event.body);
      yield* _status(VACANCIES_USER_BLOC_SEARCH_VACANCIES_SUCCEED);
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(vacancies: List.from(result.data)..whereList((it) => it.active == 1)));
    } catch (_) {
      yield* _status(VACANCIES_USER_BLOC_SEARCH_VACANCIES_FAILURE);
    }
  }

  Stream<VacanciesUserState> _filterEvent(
      _FilterVacanciesUserEvent event) async* {
    if (event.category > 0) {
      try {

          final result = await remoteData.filterVacanciesUser(ParamsFilter(
            stage: event.stage,
            category: event.category,
            schedule: event.schedule,
            type: event.type,
            city: event.city,
          ));
          _status(VACANCIES_USER_BLOC_FILTER_VACANCIES_SUCCEED);
          yield state.maybeMap(
              orElse: () => state,
              loaded: (_state) => _state.copyWith(vacancies: List.from(result.data)..whereList((it) => it.active == 1)));
      } catch (_) {
        yield* _status(VACANCIES_USER_BLOC_FILTER_VACANCIES_FAILURE);
      }
    } else {
      yield* _status(VACANCIES_USER_BLOC_FILTER_VACANCIES_REQUIRED);
    }
  }

  Stream<VacanciesUserState> _status(String status) async* {
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
abstract class VacanciesUserEvent with _$VacanciesUserEvent {
  const factory VacanciesUserEvent.getVacancies() = _GetVacanciesUserEvent;

  const factory VacanciesUserEvent.getVacanciesPagination(
      {required final int page}) = _GetVacanciesPaginationUserEvent;

  const factory VacanciesUserEvent.selectedView(
      {required final bool isExtension}) = _SelectedViewVacanciesUserEvent;

  const factory VacanciesUserEvent.postOrDeleteFavorites(
      {required final int id,
      required final bool type}) = _PostOrDeleteFavoritesVacanciesUserEvent;

  const factory VacanciesUserEvent.search({required final String body}) =
      _SearchVacanciesUserEvent;

  const factory VacanciesUserEvent.filter({
    required final int category,
    final String? city,
    final String? stage,
    final String? schedule,
    final String? type,
    final int? page,
    required final bool paginate,
  }) = _FilterVacanciesUserEvent;
}

@freezed
abstract class VacanciesUserState with _$VacanciesUserState {
  const factory VacanciesUserState.empty() = EmptyVacancyUserState;

  const factory VacanciesUserState.loading() = LoadingVacanciesUserState;

  const factory VacanciesUserState.loaded(
      {required final List<Vacancy> vacancies,
      required final List<Vacancy> favorites,
      required final bool isExtension,
      required final PaginationVacancy pagination,
      required final String status}) = LoadedVacanciesUserState;

  const factory VacanciesUserState.error({required final String message}) =
      ErrorVacanciesUserState;
}
