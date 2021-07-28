import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/repository/user/usercases/usercases.dart';

part 'vacancy_user_bloc.freezed.dart';

class VacancyUserBloc extends Bloc<VacancyUserEvent, VacancyUserState> {
  final GetVacancyUser getVacancyUser;

  VacancyUserBloc(this.getVacancyUser) : super(const VacancyUserState.empty());

  @override
  Stream<VacancyUserState> mapEventToState(VacancyUserEvent event) async* {
    yield* event.map(
        getVacancy: _getVacancyEvent, selectResume: _selectResumeEvent);
  }

  Stream<VacancyUserState> _getVacancyEvent(_GetVacancyUserEvent event) async* {
    yield const VacancyUserState.loading();
    final vacancy = await getVacancyUser(event.id);
    yield* vacancy.fold((failure) async* {
      yield VacancyUserState.error(message: _mapFailureToMessage(failure));
    }, (data) async* {
      yield VacancyUserState.loaded(vacancy: data, status: EMPTY_BLOC);
    });
  }

  Stream<VacancyUserState> _selectResumeEvent(
      _SelectResumeVacancyUserEvent event) async* {
    yield state.maybeMap(
        orElse: () => state,
        loaded: (_state) => _state.copyWith(status: EMPTY_BLOC));
    yield state.maybeMap(
        orElse: () => state,
        loaded: (_state) =>
            _state.copyWith(status: VACANCY_USER_BLOC_SELECT_RESUME));
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
abstract class VacancyUserEvent with _$VacancyUserEvent {
  const factory VacancyUserEvent.getVacancy({required final int id}) =
      _GetVacancyUserEvent;

  const factory VacancyUserEvent.selectResume() = _SelectResumeVacancyUserEvent;
}

@freezed
abstract class VacancyUserState with _$VacancyUserState {
  const factory VacancyUserState.empty() = EmptyVacancyUserState;

  const factory VacancyUserState.loading() = LoadingVacancyUserState;

  const factory VacancyUserState.loaded(
      {required final Vacancy vacancy,
      required final String status}) = LoadedVacancyUserState;

  const factory VacancyUserState.error({required final String message}) =
      ErrorVacancyUserState;
}
