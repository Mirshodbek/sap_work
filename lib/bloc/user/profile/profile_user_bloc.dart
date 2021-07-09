import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/data_source/user/remote_data.dart';
import 'package:sap_work/models/profile_user/profile.dart';
import 'package:sap_work/repository/user/usercases/usercases.dart';

part 'profile_user_bloc.freezed.dart';

class ProfileUserBloc extends Bloc<ProfileUserEvent, ProfileUserState> {
  final GetProfileUser getProfile;
  final UserRemoteDataBase remoteData;

  ProfileUserBloc(this.getProfile,this.remoteData) : super(const ProfileUserState.empty());

  @override
  Stream<ProfileUserState> mapEventToState(ProfileUserEvent event) async* {
    yield* event.map(
        getProfileData: _getProfileDataEvent, uploadAvatar: _uploadAvatarEvent);
  }

  Stream<ProfileUserState> _getProfileDataEvent(
      _GetProfileUserEvent event) async* {
    yield const ProfileUserState.loading();
    final profile = await getProfile(NoParams());
    yield* profile.fold((failure) async* {
      yield ProfileUserState.error(message: _mapFailureToMessage(failure));
    }, (profile) async* {
      yield ProfileUserState.loaded(profile: profile, status: FormzStatus.pure);
    });
  }

  Stream<ProfileUserState> _uploadAvatarEvent(
      _UploadAvatarProfileUserEvent event) async* {
    try {
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) =>
              _state.copyWith(status: FormzStatus.submissionInProgress));
      await remoteData.updateAvatarUser(event.path);
      final result = await remoteData.getProfileUser();
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(
              status: FormzStatus.submissionSuccess, profile: result));
    } catch (_) {
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) =>
              _state.copyWith(status: FormzStatus.submissionFailure));
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
abstract class ProfileUserEvent with _$ProfileUserEvent {
  const factory ProfileUserEvent.getProfileData() = _GetProfileUserEvent;

  const factory ProfileUserEvent.uploadAvatar({required final String path}) =
      _UploadAvatarProfileUserEvent;
}

@freezed
abstract class ProfileUserState with _$ProfileUserState {
  const factory ProfileUserState.empty() = EmptyProfileUserState;

  const factory ProfileUserState.loading() = LoadingProfileUserState;

  const factory ProfileUserState.loaded(
      {required final TypeProfileUser profile,
      required final FormzStatus status}) = LoadedProfileUserState;

  const factory ProfileUserState.error({required final String message}) =
      ErrorProfileUserState;
}
