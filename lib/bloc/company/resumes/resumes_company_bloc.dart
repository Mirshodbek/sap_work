import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/models/models.dart';
import 'package:sap_work/models/params_user/filter/filter.dart';
import 'package:sap_work/repository/exceptions_failures.dart';
import 'package:sap_work/resources/constants.dart';

part 'resumes_company_bloc.freezed.dart';

class ResumesCompanyBloc
    extends Bloc<ResumesCompanyEvent, ResumesCompanyState> {
  final GetRecommendResumesCompany getRecommendResumes;
  final CompanyRemoteDataBase remoteData;

  ResumesCompanyBloc(this.getRecommendResumes, this.remoteData)
      : super(const ResumesCompanyState.empty());

  @override
  Stream<ResumesCompanyState> mapEventToState(
      ResumesCompanyEvent event) async* {
    yield* event.map(
        getResumesRecommended: _getResumesRecommendedEvent,
        selectedView: _selectedViewEvent,
        search: _searchResumesEvent,
        filter: _filterEvent);
  }

  Stream<ResumesCompanyState> _getResumesRecommendedEvent(
      _GetRecommendedResumesCompanyEvent event) async* {
    yield const ResumesCompanyState.loading();
    final resumes = await getRecommendResumes(1);
    yield* resumes.fold((failure) async* {
      yield ResumesCompanyState.error(message: _mapFailureToMessage(failure));
    }, (data) async* {
      yield ResumesCompanyState.loaded(
          resumes: data.data,
          isExtension: false,
          pagination: data,
          status: EMPTY_BLOC);
    });
  }

  Stream<ResumesCompanyState> _selectedViewEvent(
      _SelectedViewResumesCompanyEvent event) async* {
    yield state.maybeMap(
        orElse: () => state,
        loaded: (_state) => _state.copyWith(isExtension: !event.isExtension));
  }

  Stream<ResumesCompanyState> _searchResumesEvent(
      _SearchResumesCompanyEvent event) async* {
    try {
      final result = await remoteData.searchResumesCompany(event.body);
      yield* _status(RESUMES_COMPANY_BLOC_SEARCH_RESUMES_SUCCEED);
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(resumes: result.data));
    } catch (_) {
      yield* _status(RESUMES_COMPANY_BLOC_SEARCH_RESUMES_FAILURE);
    }
  }

  Stream<ResumesCompanyState> _filterEvent(
      _FilterResumesCompanyEvent event) async* {
    try {
      final result = await remoteData.filterResumesCompany(ParamsFilter(
        city: event.city,
        abilities: event.abilities,
        category: event.category,
      ));
      yield* _status(RESUMES_COMPANY_BLOC_FILTER_RESUMES_SUCCEED);
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(resumes: result.data));
    } catch (_) {
      yield* _status(RESUMES_COMPANY_BLOC_FILTER_RESUMES_FAILURE);
    }
  }

  Stream<ResumesCompanyState> _status(String status) async* {
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
abstract class ResumesCompanyEvent with _$ResumesCompanyEvent {
  const factory ResumesCompanyEvent.getResumesRecommended() =
      _GetRecommendedResumesCompanyEvent;

  const factory ResumesCompanyEvent.selectedView(
      {required final bool isExtension}) = _SelectedViewResumesCompanyEvent;

  const factory ResumesCompanyEvent.search({required final String body}) =
      _SearchResumesCompanyEvent;

  const factory ResumesCompanyEvent.filter(
      {final String? city,
      final String? abilities,
      final int? category}) = _FilterResumesCompanyEvent;
}

@freezed
abstract class ResumesCompanyState with _$ResumesCompanyState {
  const factory ResumesCompanyState.empty() = EmptyResumesCompanyState;

  const factory ResumesCompanyState.loading() = LoadingResumesCompanyState;

  const factory ResumesCompanyState.loaded(
      {required final List<Resume> resumes,
      required final bool isExtension,
      required final PaginationResume pagination,
      required final String status}) = LoadedResumesCompanyState;

  const factory ResumesCompanyState.error({required final String message}) =
      ErrorResumesCompanyState;
}
