import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/data_source/user/remote_data.dart';
import 'package:sap_work/models/feature/feature.dart';
import 'package:sap_work/models/local_resume/resume.dart';
import 'package:sap_work/models/params_user/local_resumes/resumes.dart';
import 'package:sap_work/repository/user/usercases/usercases.dart';

part 'core_profile_user_bloc.freezed.dart';

class CoreProfileUserBloc
    extends Bloc<CoreProfileUserEvent, CoreProfileUserState> {
  final GetLocalResume getLocalResume;
  final GetCategoriesUser getCategories;
  final GetSpheresUser getSpheresUser;
  final UserRemoteDataBase remoteData;

  CoreProfileUserBloc(this.getLocalResume, this.getCategories,
      this.getSpheresUser, this.remoteData)
      : super(const CoreProfileUserState.empty());

  @override
  Stream<CoreProfileUserState> mapEventToState(
      CoreProfileUserEvent event) async* {
    yield* event.map(
        getData: _getDataEvent,
        onSelect: _onSelectEvent,
        deleteLocalResume: _deleteLocalResumeEvent);
  }

  Stream<CoreProfileUserState> _getDataEvent(
      _GetDataCoreProfileUserEvent event) async* {
    yield const CoreProfileUserState.loading();
    final localResume = await getLocalResume(ParamsLocalResumes());
    final categories = await getCategories(NoParams());
    final getSpheres = await getSpheresUser(NoParams());
    yield* localResume.fold((failure) async* {
      await getLocalResume(ParamsLocalResumes(
          writeResume: true, resume: LocalResumeData(EMPTY_TITLE_RESUME, 0)));
      yield* _coreState(
          spheres: getSpheres,
          categories: categories,
          resume: LocalResumeData(EMPTY_TITLE_RESUME, 0));
    }, (resume) async* {
      yield* _coreState(
          spheres: getSpheres, categories: categories, resume: resume);
    });
  }

  Stream<CoreProfileUserState> _coreState(
      {required Either<Failure, List<Feature>> spheres,
      required Either<Failure, List<Feature>> categories,
      required LocalResumeData resume}) async* {
    yield* categories.fold((failure) async* {
      yield CoreProfileUserState.error(message: _mapFailureToMessage(failure));
    }, (categories) async* {
      yield* spheres.fold((failure) async* {
        yield CoreProfileUserState.error(
            message: _mapFailureToMessage(failure));
      }, (sphere) async* {
        yield* _attributesState(
            spheres: sphere, resume: resume, categories: categories);
      });
    });
  }

  Stream<CoreProfileUserState> _attributesState(
      {required LocalResumeData resume,
      required List<Feature> spheres,
      required List<Feature> categories}) async* {
    yield CoreProfileUserState.attributes(
        vacancyId: 0,
        resume: resume,
        categories: categories,
        spheres: spheres,
        status: EMPTY_BLOC);
  }

  Stream<CoreProfileUserState> _onSelectEvent(
      _OnSelectCoreProfileUserEvent event) async* {
    await getLocalResume(ParamsLocalResumes(
        writeResume: true, resume: LocalResumeData(event.title, event.id)));
    yield state.maybeMap(
        orElse: () => state,
        attributes: (_state) => _state.copyWith(
            resume: LocalResumeData(event.title, event.id),
            vacancyId: event.id));
  }

  Stream<CoreProfileUserState> _deleteLocalResumeEvent(
      _DeleteLocalResumeCoreProfileUserEvent event) async* {
    await getLocalResume(ParamsLocalResumes(
        writeResume: true, resume: LocalResumeData(EMPTY_TITLE_RESUME, 0)));
    yield state.maybeMap(
        orElse: () => state,
        attributes: (_state) =>
            _state.copyWith(resume: LocalResumeData(EMPTY_TITLE_RESUME, 0)));
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
abstract class CoreProfileUserEvent with _$CoreProfileUserEvent {
  const factory CoreProfileUserEvent.getData() = _GetDataCoreProfileUserEvent;

  const factory CoreProfileUserEvent.onSelect(
      {required final String title,
      required final int id}) = _OnSelectCoreProfileUserEvent;

  const factory CoreProfileUserEvent.deleteLocalResume(
      {required final int id}) = _DeleteLocalResumeCoreProfileUserEvent;
}

@freezed
abstract class CoreProfileUserState with _$CoreProfileUserState {
  const factory CoreProfileUserState.empty() = EmptyCoreProfileUserState;

  const factory CoreProfileUserState.loading() = LoadingCoreProfileUserState;

  const factory CoreProfileUserState.attributes(
      {required final LocalResumeData resume,
      required final int vacancyId,
      required final List<Feature> categories,
      required final List<Feature> spheres,
      required final String status}) = AttributesCoreProfileUserState;

  const factory CoreProfileUserState.error({required final String message}) =
      ErrorCoreProfileUserState;
}
