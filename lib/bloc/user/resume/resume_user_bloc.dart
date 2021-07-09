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
    final localVacancy = await getLocalResume(ParamsLocalResumes());
    yield* localVacancy.fold((failure) async* {
      yield const ResumeUserState.noVacancy(status: FormzStatus.pure);
    }, (vacancy) async* {
      if (vacancy.id > 0) {
        final vacancyCompany = await getResumeUser(vacancy.id);
        yield* vacancyCompany.fold((failure) async* {
          yield const ResumeUserState.noVacancy(status: FormzStatus.pure);
        }, (data) async* {
          if (vacancy.id == data.id) {
            yield ResumeUserState.loaded(resume: data, status: EMPTY_BLOC);
          } else {
            yield const ResumeUserState.noInternet();
          }
        });
      } else {
        yield const ResumeUserState.noVacancy(status: FormzStatus.pure);
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
      Texts.dirty(event.grades.toString()),
      Texts.dirty(event.category.toString()),
    ]);
    if (isValidated.isValidated) {
      try {
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) =>
                _state.copyWith(status: RESUME_USER_BLOC_POST_RESUME_PROGRESS));
        final result = await remoteData.postResumeUser(ParamsResume(
            body: event.body,
            abilities: event.abilities,
            name: event.name,
            phone: event.phone,
            email: event.email,
            city: event.city,
            category: event.category,
            stages: event.stages,
            grades: event.grades));
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) =>
                _state.copyWith(status: RESUME_USER_BLOC_POST_RESUME_SUCCEED));
        await getLocalResume(ParamsLocalResumes(
            writeResume: true, resume: LocalResumeData(event.name, result.id)));
        add(const ResumeUserEvent.getResume());
      } catch (_) {
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) {
              _state.copyWith(status: RESUME_USER_BLOC_POST_RESUME_FAILURE);
              return _state.copyWith(status: EMPTY_BLOC);
            });
      }
    } else {
      yield state.maybeMap(
          orElse: () => state,
          noVacancy: (_state) => _state.copyWith(status: FormzStatus.pure));
      yield state.maybeMap(
          orElse: () => state,
          noVacancy: (_state) => _state.copyWith(status: isValidated));
    }
  }

  Stream<ResumeUserState> _editResumeEvent(_EditResumeUserEvent event) async* {
    try {
      final result = await remoteData.changeResumeUser(
          event.id,
          ParamsResume(
              phone: event.phone,
              email: event.email,
              category: event.category,
              body: event.body,
              city: event.city,
              abilities: event.abilities));
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(resume: result));
    } catch (_) {
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) {
            _state.copyWith(status: RESUME_USER_BLOC_CHANGE_RESUME_FAILURE);
            return _state.copyWith(status: EMPTY_BLOC);
          });
    }
  }

  Stream<ResumeUserState> _activateOrDeactivateEvent(
      _ActivateOrDeactivateResumeUserEvent event) async* {
    try {
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(
              status: RESUME_USER_BLOC_ACTIVE_OR_DEACTIVATE_PROGRESS));
      if (event.active == 1) {
        final result = await remoteData.activateOrDeactivateResume(
            "deactivate?id=${event.id}", event.id);
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(
                status: RESUME_USER_BLOC_ACTIVE_OR_DEACTIVATE_SUCCEED,
                resume: result));
      } else {
        final result = await remoteData.activateOrDeactivateResume(
            "activate?id=${event.id}", event.id);
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) =>
                _state.copyWith(status: EMPTY_BLOC, resume: result));
      }
    } catch (_) {
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) {
            _state.copyWith(
                status: RESUME_USER_BLOC_ACTIVE_OR_DEACTIVATE_FAILURE);
            return _state.copyWith(status: EMPTY_BLOC);
          });
    }
  }

  Stream<ResumeUserState> _addFileEvent(_AddFileResumeUserEvent event) async* {
    try {
      final result = await remoteData.addFileToResume(event.id, event.path);
    } catch (_) {}
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
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(resume: result));
      }
    } catch (_) {
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) {
            _state.copyWith(
                status: RESUME_USER_BLOC_CHANGE_EXTRA_BLOCK_FAILURE);
            return _state.copyWith(status: EMPTY_BLOC);
          });
    }
  }

  Stream<ResumeUserState> _addExtraBlocksEvent(
      _AddExtraBlocksResumeUserEvent event) async* {
    try {
      if (event.typeBlock == STAGES) {
        final result = await remoteData.addExtraBlocksResume(
            event.id, STAGES, ParamsResume(stages: event.toMaps));
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(resume: result));
      }
      if (event.typeBlock == GRADES) {
        final result = await remoteData.addExtraBlocksResume(
            event.id, GRADES, ParamsResume(grades: event.toMaps));
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(resume: result));
      }
    } catch (_) {
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) {
            _state.copyWith(status: RESUME_USER_BLOC_ADD_STAGES_FAILURE);
            return _state.copyWith(status: EMPTY_BLOC);
          });
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
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(resume: result));
      }
      if (event.typeBlock == GRADES) {
        final result = await remoteData.deleteExtraBlocksResume(
            typeBlock: GRADES,
            gradeId: event.gradeId,
            resumeId: event.resumeId);
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(resume: result));
      }
    } catch (_) {
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) {
            _state.copyWith(
                status: RESUME_USER_BLOC_DELETE_EXTRA_BLOCK_FAILURE);
            return _state.copyWith(status: EMPTY_BLOC);
          });
    }
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

  const factory ResumeUserState.noVacancy({required final FormzStatus status}) =
      NoResumeUserState;

  const factory ResumeUserState.noInternet() = NoInternetUserState;
}
