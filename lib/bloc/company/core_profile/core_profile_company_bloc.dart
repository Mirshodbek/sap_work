import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../company.dart';

part 'core_profile_company_bloc.freezed.dart';

class CoreProfileCompanyBloc
    extends Bloc<CoreProfileCompanyEvent, CoreProfileCompanyState> {
  final GetLocalVacancyCompany getLocalVacancy;
  final CompanyRemoteDataBase remoteCompany;
  final GetCategoriesCompany getCategories;
  final GetSpheresCompany getSpheres;

  CoreProfileCompanyBloc(this.getLocalVacancy, this.remoteCompany,
      this.getCategories, this.getSpheres)
      : super(const CoreProfileCompanyState.empty());

  @override
  Stream<CoreProfileCompanyState> mapEventToState(
      CoreProfileCompanyEvent event) async* {
    yield* event.map(initial: _initialPagesEvent, onSelect: _onSelectEvent);
  }

  Stream<CoreProfileCompanyState> _initialPagesEvent(
      _InitialCoreProfileCompanyEvent event) async* {
    yield const CoreProfileCompanyState.loading();
    final localVacancy = await getLocalVacancy(ParamsLocalVacancy());
    final categories = await getCategories(NoParams());
    final spheres = await getSpheres(NoParams());
    yield* localVacancy.fold((failure) async* {
      await getLocalVacancy(ParamsLocalVacancy(
          writeVacancy: true,
          vacancy: LocalVacancyData(EMPTY_TITLE_VACANCY, 0)));
      yield* _coreState(
          spheres: spheres,
          categories: categories,
          vacancy: LocalVacancyData(EMPTY_TITLE_VACANCY, 0));
    }, (data) async* {
      yield* _coreState(
          spheres: spheres, categories: categories, vacancy: data);
    });
  }

  Stream<CoreProfileCompanyState> _coreState(
      {required Either<Failure, List<Feature>> spheres,
      required Either<Failure, List<Feature>> categories,
      required LocalVacancyData vacancy}) async* {
    yield* categories.fold((failure) async* {
      yield CoreProfileCompanyState.error(
          message: _mapFailureToMessage(failure));
    }, (categories) async* {
      yield* spheres.fold((failure) async* {
        yield CoreProfileCompanyState.error(
            message: _mapFailureToMessage(failure));
      }, (sphere) async* {
        yield* _attributesState(
            spheres: sphere, vacancy: vacancy, categories: categories);
      });
    });
  }

  Stream<CoreProfileCompanyState> _attributesState(
      {required LocalVacancyData vacancy,
      required List<Feature> categories,
      required List<Feature> spheres}) async* {
    yield CoreProfileCompanyState.attributes(
        spheres: spheres,
        categories: categories,
        localVacancy: vacancy,
        status: EMPTY_BLOC,
        vacancyId: 0);
  }

  Stream<CoreProfileCompanyState> _onSelectEvent(
      _OnSelectCoreProfileCompanyEvent event) async* {
    await getLocalVacancy(ParamsLocalVacancy(
        writeVacancy: true, vacancy: LocalVacancyData(event.title, event.id)));
    yield state.maybeMap(
        orElse: () => state,
        attributes: (_state) => _state.copyWith(
            localVacancy: LocalVacancyData(event.title, event.id),
            vacancyId: event.id));
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
abstract class CoreProfileCompanyEvent with _$CoreProfileCompanyEvent {
  const factory CoreProfileCompanyEvent.initial() =
      _InitialCoreProfileCompanyEvent;

  const factory CoreProfileCompanyEvent.onSelect(
      {required final String title,
      required final int id}) = _OnSelectCoreProfileCompanyEvent;
}

@freezed
abstract class CoreProfileCompanyState with _$CoreProfileCompanyState {
  const factory CoreProfileCompanyState.empty() = EmptyCoreProfileCompanyState;

  const factory CoreProfileCompanyState.loading() =
      LoadingCoreProfileCompanyState;

  const factory CoreProfileCompanyState.attributes(
      {required final LocalVacancyData localVacancy,
      required final int vacancyId,
      required final List<Feature> categories,
      required final List<Feature> spheres,
      required final String status}) = AttributesCoreProfileCompanyState;

  const factory CoreProfileCompanyState.error({required final String message}) =
      ErrorCoreProfileCompanyState;
}
