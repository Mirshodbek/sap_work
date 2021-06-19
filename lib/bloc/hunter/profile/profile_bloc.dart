import 'dart:async';

import 'package:formz/formz.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/bloc/internet/internet_cubit.dart';
import 'package:sap_work/data_provider/prof_provider.dart';
import 'package:sap_work/models/feedback/feedback.dart';
import 'package:sap_work/models/profile/profile.dart';
import 'package:sap_work/models/resume/resume.dart';
import 'package:sap_work/repository/hunter_repository.dart';
import 'package:sap_work/screens/authorization/authorization.dart';

part 'profile_bloc.freezed.dart';

class ProfileBloc extends HydratedBloc<ProfileEvent, ProfileState> {
  final HunterRepositoryBase _repository;
  final InternetCubit internetCubit;
  late final StreamSubscription internetStreamSubscription;

  final ProfProvider _provider = ProfProvider();
  var _profile;
  var _resume;
  List<FeedbackResume> _feedbacks = [];
  List<Resume> _resumes = [];
  bool _isAdd = false;
  int _id = 0;

  ProfileBloc(this._repository, this.internetCubit)
      : super(ProfileState.profileState(
          profile: ProfileHunter("Имя", "", "", "", "", 0),
          feedbacksCount: 2,
          resume: Resume(0, 0, "Введите название резюме", "", "", 0, "", ""),
          id: 0,
        )) {
    monitorInternetCubit();
  }

  StreamSubscription<InternetState> monitorInternetCubit() {
    return internetStreamSubscription =
        internetCubit.stream.listen((internetState) {
      if (internetState is ConnectedInternetState &&
          internetState.connectionType == ConnectionType.Wifi) {
        add(ProfileEvent.refresh());
      } else if (internetState is ConnectedInternetState &&
          internetState.connectionType == ConnectionType.Mobile) {
        add(ProfileEvent.refresh());
      }
    });
  }

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.map(
      initial: _initialEvent,
      refresh: _refreshEvent,
      selectResumes: _selectResumesEvent,
      toggleResume: _toggleResumeEvent,
      addResumeButton: _addResumeButtonEvent,
      addResumeName: _addResumeNameEvent,
    );
  }

  Stream<ProfileState> _initialEvent(_IntialProfileEvent event) async* {}

  Stream<ProfileState> _refreshEvent(_RefreshProfileEvent event) async* {
    try {
      _profile = await _repository.getProfileHunter();
      _feedbacks = await _repository.getFeedbacks();
      _resume = await _provider.resumeHunter(_id);
      yield ProfileState.profileState(
        profile: _profile,
        feedbacksCount: _feedbacks.length,
        resume: _resume,
        id: _id,
      );
    } catch (_) {}
  }

  Stream<ProfileState> _selectResumesEvent(
      _SelectResumesProfileEvent event) async* {
    try {
      _profile = await _repository.getProfileHunter();
      _feedbacks = await _repository.getFeedbacks();
      yield* _repository.getResumes().map((_event) {
        return ProfileState.selectResumesState(
          profile: _profile,
          feedbacksCount: _feedbacks.length,
          resumes: _event,
          isAdd: _isAdd,
          status: FormzStatus.pure,
          id: 0,
        );
      });
    } catch (_) {}
  }

  Stream<ProfileState> _toggleResumeEvent(
      _ToggleResumeProfileEvent event) async* {
    _id = event.id;
    yield state.maybeMap(
      orElse: () => state,
      selectResumesState: (_state) => _state.copyWith(id: event.id),
    );
    _feedbacks = await _repository.getFeedbacks(id: event.id);
    _resume = await _provider.resumeHunter(_id);
    yield ProfileState.profileState(
      profile: _profile,
      feedbacksCount: _feedbacks.length,
      resume: _resume,
      id: event.id,
    );
  }

  Stream<ProfileState> _addResumeNameEvent(
      _AddResumeNameProfileEvent event) async* {
    final isValidated = Formz.validate([Texts.dirty(event.name)]);
    if (isValidated.isValidated) {
      try {
        yield state.maybeMap(
          orElse: () => state,
          selectResumesState: (_state) =>
              _state.copyWith(status: FormzStatus.submissionInProgress),
        );
        await _provider.createResume(event.name);
        yield* _repository.getResumes().map((_event) {
          return state.maybeMap(
            orElse: () => state,
            selectResumesState: (_state) => _state.copyWith(
              resumes: _event,
              isAdd: false,
            ),
          );
        });
      } catch (_) {}
    } else {
      yield state.maybeMap(
        orElse: () => state,
        selectResumesState: (_state) => _state.copyWith(status: isValidated),
      );
    }
  }

  Stream<ProfileState> _addResumeButtonEvent(
      _AddResumeButtonProfileEvent event) async* {
    _isAdd = !event.isAdd;
    yield state.maybeMap(
      orElse: () => state,
      selectResumesState: (_state) => _state.copyWith(isAdd: _isAdd),
    );
  }

  @override
  ProfileState? fromJson(Map<String, dynamic> json){
    return ProfileState.profileState(
      profile: ProfileHunter.fromJson(
          json['profile_hunter'] as Map<String, dynamic>),
      feedbacksCount: json['resume_feedbacks'] as int,
      resume: Resume.fromJson(json['resume'] as Map<String, dynamic>),
      id: json['id'] as int,
    );
  }

  @override
  Map<String, dynamic>? toJson(ProfileState state) {
    if (state is ProfileScreenState) {
      return {
        'profile_hunter': state.profile.toJson(),
        'resume': state.resume.toJson(),
        'resume_feedbacks': state.feedbacksCount,
        'id': state.id,
      };
    }
  }

  @override
  Future<void> close() {
    internetStreamSubscription.cancel();
    return super.close();
  }


}

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.initial() = _IntialProfileEvent;

  const factory ProfileEvent.refresh() = _RefreshProfileEvent;

  const factory ProfileEvent.selectResumes() = _SelectResumesProfileEvent;

  const factory ProfileEvent.toggleResume({
    required final int id,
  }) = _ToggleResumeProfileEvent;

  const factory ProfileEvent.addResumeButton({required final bool isAdd}) =
      _AddResumeButtonProfileEvent;

  const factory ProfileEvent.addResumeName({required final String name}) =
      _AddResumeNameProfileEvent;
}

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = InitialProfileState;

  const factory ProfileState.profileState({
    required final ProfileHunter profile,
    required final int feedbacksCount,
    required final Resume resume,
    required final int id,
  }) = ProfileScreenState;

  const factory ProfileState.selectResumesState({
    required final ProfileHunter profile,
    required final int feedbacksCount,
    required final List<Resume> resumes,
    required final bool isAdd,
    required final FormzStatus status,
    required final int id,
  }) = SelectResumesProfileState;
}
