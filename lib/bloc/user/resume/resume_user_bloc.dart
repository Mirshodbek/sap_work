import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/data_source/user/remote_data.dart';
import 'package:sap_work/models/local_resume/resume.dart';
import 'package:sap_work/models/params_user/local_resumes/resumes.dart';
import 'package:sap_work/models/params_user/resume/resume.dart';
import 'package:sap_work/repository/user/usercases/usercases.dart';
import 'package:sap_work/screens/company/profile/widgets/widget.dart';

part 'resume_user_bloc.freezed.dart';

class ResumeUserBloc extends Bloc<ResumeUserEvent, ResumeUserState> {
  final GetLocalResume getLocalResume;
  final GetResumeUser getResumeUser;
  final UserRemoteDataBase remoteData;

  ResumeUserBloc(this.getResumeUser, this.getLocalResume, this.remoteData)
      : super(const ResumeUserState.empty());

  @override
  Stream<ResumeUserState> mapEventToState(ResumeUserEvent event) async* {
    yield* event.map(
        getResume: _getResumeEvent,
        postResume: _postResumeEvent,
        editResume: _editResumeEvent,
        activateOrDeactivate: _activateOrDeactivateEvent,
        addFile: _addFileEvent,
        changeExtraBlocks: _changeExtraBlocksEvent,
        addExtraBlocks: _addExtraBlocksEvent,
        deleteExtraBlocks: _deleteExtraBlocksEvent);
  }

  Stream<ResumeUserState> _getResumeEvent(_GetVResumeUserEvent event) async* {
    yield const ResumeUserState.loading();
    final localResume = await getLocalResume(ParamsLocalResumes());
    yield* localResume.fold((failure) async* {
      yield const ResumeUserState.noResume(status: EMPTY_BLOC);
    }, (resume) async* {
      if (resume.id > 0) {
        final resumeUser = await getResumeUser(resume.id);
        yield* resumeUser.fold((failure) async* {
          yield const ResumeUserState.noResume(status: EMPTY_BLOC);
        }, (data) async* {
          if (resume.id == data.id) {
            yield ResumeUserState.loaded(resume: data, status: EMPTY_BLOC);
          } else {
            yield ResumeUserState.loaded(resume: data, status: EMPTY_BLOC);
            yield ResumeUserState.loaded(
                resume: data, status: RESUME_USER_BLOC_GET_RESUME_FAILURE);
          }
        });
      } else {
        yield const ResumeUserState.noResume(status: EMPTY_BLOC);
      }
    });
  }

  Stream<ResumeUserState> _postResumeEvent(_PostResumeUserEvent event) async* {
    final isValidated = Formz.validate([
      Texts.dirty(event.body),
      Texts.dirty(event.abilities),
      Texts.dirty(event.name),
      Texts.dirty(event.phone),
      Texts.dirty(event.city),
      Texts.dirty(event.email),
      Texts.dirty(event.stages.toString()),
      Texts.dirty(event.grades.toString())
    ]);
    if (isValidated.isValidated && event.category != 0 && event.sphere != 0) {
      try {
        yield* _statusNoResume(RESUME_USER_BLOC_POST_RESUME_PROGRESS);
        final result = await remoteData.postResumeUser(ParamsResume(
            body: event.body,
            sphere: event.sphere,
            abilities: event.abilities,
            name: event.name,
            phone: event.phone,
            email: event.email,
            city: event.city,
            category: event.category,
            stages: event.stages,
            grades: event.grades));
        await getLocalResume(ParamsLocalResumes(
            writeResume: true, resume: LocalResumeData(event.name, result.id)));
        yield* _statusNoResume(RESUME_USER_BLOC_POST_RESUME_SUCCEED);
      } catch (_) {
        yield* _statusNoResume(RESUME_USER_BLOC_POST_RESUME_FAILURE);
      }
    } else {
      yield* _statusNoResume(RESUME_USER_BLOC_POST_RESUME_IS_NOT_VALIDATE);
    }
  }

  Stream<ResumeUserState> _editResumeEvent(_EditResumeUserEvent event) async* {
    try {
      final result = await remoteData.changeResumeUser(
          event.id,
          ParamsResume(
              sphere: event.sphere,
              phone: event.phone,
              email: event.email,
              category: event.category,
              body: event.body,
              city: event.city,
              abilities: event.abilities));
      yield* _statusLoaded(RESUME_USER_BLOC_CHANGE_RESUME_SUCCEED);
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(resume: result));
    } catch (_) {
      yield* _statusLoaded(RESUME_USER_BLOC_CHANGE_RESUME_FAILURE);
    }
  }

  Stream<ResumeUserState> _activateOrDeactivateEvent(
      _ActivateOrDeactivateResumeUserEvent event) async* {
    try {
      yield* _statusLoaded(RESUME_USER_BLOC_ACTIVE_OR_DEACTIVATE_PROGRESS);
      if (event.active == 1) {
        final result = await remoteData.activateOrDeactivateResume(
            "deactivate?id=${event.id}", event.id);
        yield* _statusLoaded(RESUME_USER_BLOC_ACTIVE_OR_DEACTIVATE_SUCCEED);
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(resume: result));
      } else {
        final result = await remoteData.activateOrDeactivateResume(
            "activate?id=${event.id}", event.id);
        yield* _statusLoaded(RESUME_USER_BLOC_ACTIVE_OR_DEACTIVATE_SUCCEED);
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(resume: result));
      }
    } catch (_) {
      yield* _statusLoaded(RESUME_USER_BLOC_ACTIVE_OR_DEACTIVATE_FAILURE);
    }
  }

  Stream<ResumeUserState> _addFileEvent(_AddFileResumeUserEvent event) async* {
    try {
     await remoteData.addFileToResume(event.id, event.path);
      yield* _statusLoaded(RESUME_USER_BLOC_ADD_FILE_SUCCEED);
    } catch (_) {
      yield* _statusLoaded(RESUME_USER_BLOC_ADD_FILE_FAILURE);
    }
  }

  Stream<ResumeUserState> _changeExtraBlocksEvent(
      _ChangeExtraBlocksResumeUserEvent event) async* {
    try {
      if (event.typeBlock == STAGES) {
        final result = await remoteData.changeExtraBlocksResume(
            stageId: event.stageId,
            resumeId: event.resumeId,
            typeBlock: STAGES,
            toMap: event.toMap);
        yield* _statusLoaded(RESUME_USER_BLOC_CHANGE_EXTRA_BLOCK_SUCCEED);
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(resume: result));
      }
      if (event.typeBlock == GRADES) {
        final result = await remoteData.changeExtraBlocksResume(
            gradeId: event.gradeId,
            resumeId: event.resumeId,
            typeBlock: GRADES,
            toMap: event.toMap);
        yield* _statusLoaded(RESUME_USER_BLOC_CHANGE_EXTRA_BLOCK_SUCCEED);
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(resume: result));
      }
    } catch (_) {
      yield* _statusLoaded(RESUME_USER_BLOC_CHANGE_EXTRA_BLOCK_FAILURE);
    }
  }

  Stream<ResumeUserState> _addExtraBlocksEvent(
      _AddExtraBlocksResumeUserEvent event) async* {
    try {
      if (event.typeBlock == STAGES) {
        final result = await remoteData.addExtraBlocksResume(
            event.id, STAGES, ParamsResume(stages: event.toMaps));
        yield* _statusLoaded(RESUME_USER_BLOC_ADD_EXTRA_BLOCKS_SUCCEED);
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(resume: result));
      }
      if (event.typeBlock == GRADES) {
        final result = await remoteData.addExtraBlocksResume(
            event.id, GRADES, ParamsResume(grades: event.toMaps));
        yield* _statusLoaded(RESUME_USER_BLOC_ADD_EXTRA_BLOCKS_SUCCEED);
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(resume: result));
      }
    } catch (_) {
      yield* _statusLoaded(RESUME_USER_BLOC_ADD_EXTRA_BLOCKS_FAILURE);
    }
  }

  Stream<ResumeUserState> _deleteExtraBlocksEvent(
      _DeleteExtraBlocksResumeUserEvent event) async* {
    try {
      if (event.typeBlock == STAGES) {
        final result = await remoteData.deleteExtraBlocksResume(
            typeBlock: STAGES,
            stageId: event.stageId,
            resumeId: event.resumeId);
        yield* _statusLoaded(RESUME_USER_BLOC_DELETE_EXTRA_BLOCK_SUCCEED);
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(resume: result));
      }
      if (event.typeBlock == GRADES) {
        final result = await remoteData.deleteExtraBlocksResume(
            typeBlock: GRADES,
            gradeId: event.gradeId,
            resumeId: event.resumeId);
        yield* _statusLoaded(RESUME_USER_BLOC_DELETE_EXTRA_BLOCK_SUCCEED);
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(resume: result));
      }
    } catch (_) {
      yield* _statusLoaded(RESUME_USER_BLOC_DELETE_EXTRA_BLOCK_FAILURE);
    }
  }

  Stream<ResumeUserState> _statusLoaded(String status) async* {
    yield state.maybeMap(
        orElse: () => state,
        loaded: (_state) => _state.copyWith(status: EMPTY_BLOC));
    yield state.maybeMap(
        orElse: () => state,
        loaded: (_state) => _state.copyWith(status: status));
  }

  Stream<ResumeUserState> _statusNoResume(String status) async* {
    yield state.maybeMap(
        orElse: () => state,
        noResume: (_state) => _state.copyWith(status: EMPTY_BLOC));
    yield state.maybeMap(
        orElse: () => state,
        noResume: (_state) => _state.copyWith(status: status));
  }
}

@freezed
abstract class ResumeUserEvent with _$ResumeUserEvent {
  const factory ResumeUserEvent.getResume() = _GetVResumeUserEvent;

  const factory ResumeUserEvent.editResume(
      {required final String phone,
      required final String email,
      final String? body,
      final String? abilities,
      final String? city,
      required final int sphere,
      required final int category,
      required final int id}) = _EditResumeUserEvent;

  const factory ResumeUserEvent.postResume(
      {required final String body,
      required final String abilities,
      required final String name,
      required final String phone,
      required final String city,
      required final String email,
      required final int category,
      required final int sphere,
      required final List<Map<String, dynamic>> stages,
      required final List<Map<String, dynamic>> grades}) = _PostResumeUserEvent;

  const factory ResumeUserEvent.activateOrDeactivate({
    required final int id,
    required final int active,
  }) = _ActivateOrDeactivateResumeUserEvent;

  const factory ResumeUserEvent.addFile(
      {required final String path,
      required final int id}) = _AddFileResumeUserEvent;

  const factory ResumeUserEvent.changeExtraBlocks(
      {final int? stageId,
      final int? gradeId,
      required final Map<String, dynamic> toMap,
      required final String typeBlock,
      required final int resumeId}) = _ChangeExtraBlocksResumeUserEvent;

  const factory ResumeUserEvent.addExtraBlocks({
    required final int id,
    required final String typeBlock,
    required final List<Map<String, dynamic>> toMaps,
  }) = _AddExtraBlocksResumeUserEvent;

  const factory ResumeUserEvent.deleteExtraBlocks(
      {required final int resumeId,
      required final String typeBlock,
      final int? stageId,
      final int? gradeId}) = _DeleteExtraBlocksResumeUserEvent;
}

@freezed
abstract class ResumeUserState with _$ResumeUserState {
  const factory ResumeUserState.empty() = EmptyResumeUserState;

  const factory ResumeUserState.loading() = LoadingResumeUserState;

  const factory ResumeUserState.loaded(
      {required final Resume resume,
      required final String status}) = LoadedResumeUserState;

  const factory ResumeUserState.noResume({required final String status}) =
      NoResumeUserState;
}
