import 'dart:async';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/screens/hunter/hunter.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  var _profile;
  int _resumeId = 0;
  int _editButton = 0;
  List<Resume> _resumes = [];
  late SharedPreferences _prefs;
  List<String> _localResumes = [];
  List<FeedbackResume> _feedbacks = [];
  final HunterRepositoryBase _repository;
  List<Block> _blocks = Lists.blocksResumeList;
  List<Map<String, dynamic>> grades = <Map<String, dynamic>>[];
  List<Map<String, dynamic>> stages = <Map<String, dynamic>>[];
  Resume _resume = Resume(
      0, 0, "Введите название резюме", empty, empty, empty, empty, 0, [], []);

  ProfileBloc(this._repository) : super(const ProfileState.initial());

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.map(
      initial: _initialEvent,
      refresh: _refreshEvent,
      onClick: _onClickEvent,
      toggleBlocks: _toggleBlocks,
      resumeData: _resumeDataEvent,
      toggleResume: _toggleResumeEvent,
      createResume: _createResumeEvent,
      resumeButtons: _resumeButtonsEvent,
      addResumeName: _addResumeNameEvent,
      editResumeName: _editResumeNameEvent,
      addFileToResume: _addFileToResumeEvent,
      deActivatedResume: _deActivatedResumeEvent,
    );
  }

  Stream<ProfileState> _initialEvent(_InitialProfileEvent event) async* {
    _prefs = await SharedPreferences.getInstance();
    if (_prefs.getString("feedbacks_saved") != null) {
      _feedbacks = FeedbackResume.decode(_prefs.getString("feedbacks_saved")!);
    }
    if (_prefs.getString("profile_saved") != null) {
      _profile = TypeProfileUser.fromJson(
          jsonDecode(_prefs.getString("profile_saved")!));
    }
    if (_prefs.getString("resumes_saved") != null) {
      _resumes = Resume.decode(_prefs.getString("resumes_saved")!);
    }
    if (_prefs.getInt('resume_id') != null) {
      _resumeId = _prefs.getInt('resume_id')!;
    }
    if (_prefs.getString("resume_saved") != null) {
      _resume = Resume.fromJson(jsonDecode(_prefs.getString("resume_saved")!));
    }
    if (_prefs.getStringList("local_resumes") != null) {
      _localResumes = _prefs.getStringList("local_resumes")!;
    }
    if (_profile == null) {
      yield const ProfileState.initial();
    }
    yield state.maybeMap(
      orElse: () => state,
      profileState: (_state) => _state.copyWith(
        id: _resumeId,
        blocks: _blocks,
        resume: _resume,
        profile: _profile,
        resumes: _resumes,
        localResumes: _localResumes,
        feedbacksCount: _feedbacks.length,
      ),
    );
  }

  Stream<ProfileState> _refreshEvent(_RefreshProfileEvent event) async* {
    try {
      _prefs = await SharedPreferences.getInstance();
      if (_prefs.getStringList("local_resumes") != null) {
        _localResumes = _prefs.getStringList("local_resumes")!;
      }
      _profile = await _repository.getProfile();
      await _prefs.setString("profile_saved", jsonEncode(_profile));
      yield* _repository.getResumes().map((event) {
        _resumes = event;
        if (_resumes.isNotEmpty && _prefs.getInt('resume_id') != null) {
          _resume =
              event.singleWhere((it) => it.id == _prefs.getInt('resume_id'));
        }
        return ProfileState.profileState(
          id: _resumeId,
          title: "",
          buttons: 0,
          resume: _resume,
          isEnabled: true,
          blocks: _blocks,
          feedbacksCount: _feedbacks.length,
          status: FormzStatus.pure,
          resumes: _resumes,
          profile: _profile,
          localResumes: _localResumes,
          stages: [],
          grades: [],
        );
      });
      await _prefs.setString("resumes_saved", Resume.encode(_resumes));
    } catch (_) {
      add(const ProfileEvent.initial());
    }
  }

  Stream<ProfileState> _toggleBlocks(_ToggleBlocksProfileEvent event) async* {
    var block = _blocks.where((it) => it.id == event.id).single;
    if (event.isSelectBlocks) {
      var deleteBloc = _blocks.where((it) => it.title == event.title).last;
      _blocks = List.from(_blocks)..removeWhere((it) => it.id == deleteBloc.id);
    } else {
      int current = _blocks.indexOf(block);
      block = block.copyWith(
        id: _blocks.length + 50,
        firstId: block.text1 + 50,
        secondId: block.text2 + 50,
        thirdId: block.text3 + 50,
        fourthId: block.text4 + 50,
      );
      _blocks = List.from(_blocks)..insert(current + 1, block);
    }
    yield state.maybeMap(
      orElse: () => state,
      profileState: (_state) => _state.copyWith(blocks: _blocks),
    );
  }

  Stream<ProfileState> _onClickEvent(_OnClickProfileEvent event) async* {
    if (event.isMoved) {
      yield ProfileState.screens(page: event.page);
      yield state.maybeMap(orElse: () => state);
    } else {
      yield* _repository.getResumes().map((_event) {
        _resumes = _event;
        return state.maybeMap(
          orElse: () => state,
          profileState: (_state) =>
              _state.copyWith(buttons: 1, resumes: _event),
        );
      });
      await _prefs.setString("resumes_saved", Resume.encode(_resumes));
    }
  }

  Stream<ProfileState> _toggleResumeEvent(
      _ToggleResumeProfileEvent event) async* {
    if (event.isPublished) {
      try {
        _feedbacks = await _repository.getFeedbacks(event.id);
        yield state.maybeMap(
          orElse: () => state,
          profileState: (_state) => _state.copyWith(id: event.id),
        );
        await _prefs.setInt("resume_id", event.id);
        await _prefs.setString(
            "feedbacks_saved", FeedbackResume.encode(_feedbacks));
        final _resume = await _repository.getResume(event.id);
        yield const ProfileState.screens(page: 1);
        yield state.maybeMap(
          orElse: () => state,
          profileState: (_state) => _state.copyWith(
            id: event.id,
            buttons: 1,
            resume: _resume,
            feedbacksCount: _feedbacks.length,
          ),
        );
      } catch (_) {}
    } else {
      var _localResume = _prefs.getStringList("local_resumes")!
          .singleWhere((it) => it == event.title);
      _resume = Resume(0, 0, _localResume, empty, empty, empty, empty, 2, [], []);
      yield const ProfileState.screens(page: 1);
      yield state.maybeMap(
        orElse: () => state,
        profileState: (_state) => _state.copyWith(
          id: event.id,
          buttons: 1,
          resume: _resume,
          title: _localResume,
          feedbacksCount: _feedbacks.length,
        ),
      );
    }
  }

  Stream<ProfileState> _addResumeNameEvent(
      _AddResumeNameProfileEvent event) async* {
    final isValidated = Formz.validate([Texts.dirty(event.name)]);
    if (isValidated.isValidated) {
      _localResumes = [..._localResumes, event.name];
      await _prefs.setStringList("local_resumes", _localResumes);
      yield state.maybeMap(
        orElse: () => state,
        profileState: (_state) =>
            _state.copyWith(localResumes: _localResumes, buttons: 1),
      );
    } else {
      yield state.maybeMap(
        orElse: () => state,
        profileState: (_state) => _state.copyWith(status: isValidated),
      );
    }
  }

  Stream<ProfileState> _resumeButtonsEvent(
      _ResumeButtonsProfileEvent event) async* {
    yield state.maybeMap(
      orElse: () => state,
      profileState: (_state) => _state.copyWith(buttons: event.number),
    );
  }

  Stream<ProfileState> _resumeDataEvent(_ResumeDataEvent event) async* {
    if (event.title == Lists.blocksResumeList[0].title) {
      stages = <Map<String, dynamic>>[
        ...stages,
        Stage.toMap(event.firstField, event.secondField, event.thirdField,
            event.fourthField)
      ];
      yield state.maybeMap(
        orElse: () => state,
        profileState: (_state) => _state.copyWith(stages: stages),
      );
    } else if (event.title == Lists.blocksResumeList[1].title) {
      grades = <Map<String, dynamic>>[
        ...grades,
        Grade.toMap(event.firstField, event.secondField, event.thirdField)
      ];
      yield state.maybeMap(
        orElse: () => state,
        profileState: (_state) => _state.copyWith(grades: grades),
      );
    }
  }

  Stream<ProfileState> _createResumeEvent(_CreateResumeEvent event) async* {
    try {
      await _repository.createResume(
          event.name, event.stages, event.grades, event.emails, event.phones);
    } catch (_) {}
  }

  Stream<ProfileState> _editResumeNameEvent(
      _EditResumeNameProfileEvent event) async* {
    if (event.name.isNotEmpty) {
      if (event.isPublished) {
        try {
          await _repository.editResumeName(event.id, event.name);
        } catch (_) {
          // yield state.maybeMap(
          //   orElse: () => state,
          //   profileState: (_state) => _state.copyWith(isEnabled: false),
          // );
        }
      } else {
        _localResumes = List.from(_localResumes)
          ..replaceWhere((it) => it == event.name, event.name);
        yield state.maybeMap(
          orElse: () => state,
          profileState: (_state) =>
              _state.copyWith(localResumes: _localResumes),
        );
        await _prefs.setStringList("local_resumes", _localResumes);
      }
    } else {
      _editButton = 3;
      yield* _repository.getResumes().map((_event) {
        _resumes = _event;
        return state.maybeMap(
          orElse: () => state,
          profileState: (_state) =>
              _state.copyWith(buttons: _editButton, resumes: _event),
        );
      });
      await _prefs.setString("resumes_saved", Resume.encode(_resumes));
    }
  }

  Stream<ProfileState> _deActivatedResumeEvent(
      _DeActivatedResumeProfileEvent event) async* {
    try {
      if (_prefs.getInt('resume_id') != null) {
        if (event.active == 1) {
          await _repository.activatedDeactivatedResume(
              "deactivate", _prefs.getInt('resume_id')!);
        } else {
          await _repository.activatedDeactivatedResume(
              "activate", _prefs.getInt('resume_id')!);
        }
        _resume = await _repository.getResume(_prefs.getInt('resume_id')!);
        yield* _repository.getResumes().map((event) {
          _resumes = event;
          return state.maybeMap(
            orElse: () => state,
            profileState: (_state) => _state.copyWith(resume: _resume),
          );
        });
        await _prefs.setString("resumes_saved", Resume.encode(_resumes));
      } else {
        yield const ProfileState.accessResume();
        yield state.maybeMap(orElse: () => state);
      }
    } catch (_) {}
  }

  Stream<ProfileState> _addFileToResumeEvent(
      _AddFileToResumeProfileEvent event) async* {
    try {
      if (_prefs.getInt('resume_id') != null) {
        await _repository.addFileToResume(
            _prefs.getInt('resume_id')!, event.filename);
      } else {
        yield const ProfileState.accessResume();
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
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.initial() = _InitialProfileEvent;

  const factory ProfileEvent.refresh() = _RefreshProfileEvent;

  const factory ProfileEvent.onClick({
    required final int page,
    required final bool isMoved,
  }) = _OnClickProfileEvent;

  const factory ProfileEvent.toggleBlocks({
    required final int id,
    required final String title,
    required final bool isSelectBlocks,
  }) = _ToggleBlocksProfileEvent;

  const factory ProfileEvent.toggleResume({
    required final String title,
    required final int id,
    required final bool isPublished,
  }) = _ToggleResumeProfileEvent;

  const factory ProfileEvent.resumeData({
    required final String firstField,
    required final String secondField,
    required final String thirdField,
    required final String fourthField,
    required final String title,
  }) = _ResumeDataEvent;

  const factory ProfileEvent.createResume({
    required final String name,
    required final List<Map<String, dynamic>> stages,
    required final List<Map<String, dynamic>> grades,
    required final String emails,
    required final String phones,
  }) = _CreateResumeEvent;

  const factory ProfileEvent.resumeButtons({required final int number}) =
      _ResumeButtonsProfileEvent;

  const factory ProfileEvent.addFileToResume({
    required final String title,
    required final String filename,
  }) = _AddFileToResumeProfileEvent;

  const factory ProfileEvent.addResumeName(
      {required final String name,
      required final int id}) = _AddResumeNameProfileEvent;

  const factory ProfileEvent.editResumeName({
    required final String name,
    required final bool isPublished,
    required final int id,
  }) = _EditResumeNameProfileEvent;

  const factory ProfileEvent.deActivatedResume({
    required final int active,
  }) = _DeActivatedResumeProfileEvent;
}

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = InitialProfileState;

  const factory ProfileState.accessResume() = AccessResumeProfileState;

  const factory ProfileState.profileState({
    required final int id,
    required final int buttons,
    required final String title,
    required final Resume resume,
    required final bool isEnabled,
    required final List<Block> blocks,
    required final int feedbacksCount,
    required final FormzStatus status,
    required final List<Resume> resumes,
    required final TypeProfileUser profile,
    required final List<String> localResumes,
    required final List<Map<String, dynamic>> stages,
    required final List<Map<String, dynamic>> grades,
  }) = ProfileScreenState;

  const factory ProfileState.screens({required final int page}) =
      ScreensProfileState;
}
