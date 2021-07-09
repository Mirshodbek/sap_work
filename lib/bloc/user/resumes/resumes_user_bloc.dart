import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/data_source/user/remote_data.dart';
import 'package:sap_work/models/local_resume/resume.dart';
import 'package:sap_work/models/models.dart';
import 'package:sap_work/models/params_user/local_resumes/resumes.dart';
import 'package:sap_work/models/params_user/resume/resume.dart';
import 'package:sap_work/repository/exceptions_failures.dart';
import 'package:sap_work/repository/user/usercases/usercases.dart';
import 'package:sap_work/repository/usercases.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/resources/extensions/list_extension.dart';

part 'resumes_user_bloc.freezed.dart';

class ResumesUserBloc extends Bloc<ResumesUserEvent, ResumesUserState> {
  final GetResumesUser resumesUser;
  final GetLocalResumes localResumes;
  final UserRemoteDataBase remoteData;
  List<LocalResumeData> nameResumes = <LocalResumeData>[];

  ResumesUserBloc(this.resumesUser, this.localResumes, this.remoteData)
      : super(const ResumesUserState.empty());

  @override
  Stream<ResumesUserState> mapEventToState(ResumesUserEvent event) async* {
    yield* event.map(
        getResumes: _getResumesEvent,
        addOrDeleteLocalResume: _addOrDeleteLocalResumeEvent,
        editLocalName: _editLocalNameEvent,
        editRemotedName: _editRemotedNameEvent,
        deleteResumes: _deleteResumesEvent);
  }

  Stream<ResumesUserState> _getResumesEvent(_GetResumesUserEvent event) async* {
    yield const ResumesUserState.loading();
    final resumes = await resumesUser(NoParams());
    yield* resumes.fold(
      (failure) async* {
        yield ResumesUserState.error(message: _mapFailureToMessage(failure));
      },
      (data) async* {
        final localVacancy = await localResumes(ParamsLocalResumes());
        yield* localVacancy.fold((failure) async* {
          yield ResumesUserState.loaded(
              resumes: data,
              localResumesName: nameResumes,
              id: 0,
              status: EMPTY_BLOC);
        }, (names) async* {
          nameResumes = names;
          yield ResumesUserState.loaded(
              id: 0,
              resumes: data,
              localResumesName: names,
              status: EMPTY_BLOC);
        });
      },
    );
  }

  Stream<ResumesUserState> _addOrDeleteLocalResumeEvent(
      _AddOrDeleteLocalResumesUserEvent event) async* {
    if (event.delete) {
      final localResume = await localResumes(ParamsLocalResumes(
          writeResumes: true,
          resumes: List.from(nameResumes)
            ..removeWhere((it) => it.name == event.nameResume)));
      yield* _updateLocalNames(localResume);
    } else {
      final localResume = await localResumes(ParamsLocalResumes(
          writeResumes: true,
          resumes: <LocalResumeData>[
            ...nameResumes,
            LocalResumeData(event.nameResume, nameResumes.length - 1)
          ]));
      yield* _updateLocalNames(localResume);
    }
  }

  Stream<ResumesUserState> _updateLocalNames(
      Either<Failure, List<LocalResumeData>> localResume) async* {
    yield localResume.fold((failure) {
      return state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(localResumesName: nameResumes));
    }, (names) {
      nameResumes = names;
      return state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(localResumesName: names));
    });
  }

  Stream<ResumesUserState> _editLocalNameEvent(
      _EditLocalNameResumesUserEvent event) async* {
    final localVacancy = await localResumes(ParamsLocalResumes(
        writeResumes: true,
        resumes: List.from(nameResumes)
          ..replaceWhere((it) => it.id == event.id,
              LocalResumeData(event.nameResume, event.id))));
    yield* _updateLocalNames(localVacancy);
  }

  Stream<ResumesUserState> _editRemotedNameEvent(
      _EditRemotedNameResumesUserEvent event) async* {
    try {
      final result = await remoteData.changeResumeUser(
          event.id,
          ParamsResume(
              name: event.nameResume,
              category: event.category,
              phone: event.phone,
              email: event.email));

      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(
              resumes: List.from(_state.resumes)
                ..replaceWhere((it) => it.id == event.id, result)));
    } catch (_) {
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) {
            _state.copyWith(
                status: RESUMES_USER_BLOC_FAILURE_EDIT_RESUMES_NAME,
                resumes: _state.resumes);
            return _state.copyWith(status: EMPTY_BLOC);
          });
    }
  }

  Stream<ResumesUserState> _deleteResumesEvent(
      _DeleteResumesUserEvent event) async* {
    try {
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(status: EMPTY_BLOC));
      final result = await remoteData.deleteResumesUser(event.id);
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(
              resumes: result,
              status: RESUMES_USER_BLOC_SUCCEED_DELETE_RESUMES));
    } catch (_) {
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) {
            _state.copyWith(
                status: RESUMES_USER_BLOC_FAILURE_DELETE_RESUMES,
                resumes: _state.resumes);
            return _state.copyWith(status: EMPTY_BLOC);
          });
    }
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
abstract class ResumesUserEvent with _$ResumesUserEvent {
  const factory ResumesUserEvent.getResumes() = _GetResumesUserEvent;

  const factory ResumesUserEvent.addOrDeleteLocalResume(
      {required final String nameResume,
      required final bool delete}) = _AddOrDeleteLocalResumesUserEvent;

  const factory ResumesUserEvent.editLocalName(
      {required final String nameResume,
      required final int id}) = _EditLocalNameResumesUserEvent;

  const factory ResumesUserEvent.editRemotedName(
      {required final String nameResume,
      required final String phone,
      required final String email,
      required final int category,
      required final int id}) = _EditRemotedNameResumesUserEvent;

  const factory ResumesUserEvent.deleteResumes({required final int id}) =
      _DeleteResumesUserEvent;
}

@freezed
abstract class ResumesUserState with _$ResumesUserState {
  const factory ResumesUserState.empty() = EmptyResumesUserState;

  const factory ResumesUserState.loading() = LoadingResumesUserState;

  const factory ResumesUserState.loaded(
          {required final List<Resume> resumes,
          required final int id,
          required final String status,
          required final List<LocalResumeData> localResumesName}) =
      LoadedResumesUserState;

  const factory ResumesUserState.error({required final String message}) =
      ErrorResumesUserState;
}
