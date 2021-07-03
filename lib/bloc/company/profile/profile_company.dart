import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../company.dart';

part 'profile_company.freezed.dart';

class ProfileCompanyBloc
    extends Bloc<ProfileCompanyEvent, ProfileCompanyState> {
  final GetProfileCompany getProfile;
  final CompanyRemoteDataBase remoteData;

  ProfileCompanyBloc(this.getProfile,this.remoteData)
      : super(const ProfileCompanyState.empty());

  @override
  Stream<ProfileCompanyState> mapEventToState(ProfileCompanyEvent event) async*{
    yield* event.map(
        getProfileData: _getProfileDataEvent, uploadAvatar: _uploadAvatarEvent);
  }


  Stream<ProfileCompanyState> _getProfileDataEvent(
      _GetProfileCompanyEvent event) async* {
    yield const ProfileCompanyState.loading();
    final profile = await getProfile(NoParams());
    yield* profile.fold(
      (failure) async* {
        yield ProfileCompanyState.error(message: _mapFailureToMessage(failure));
      },
      (data) async* {
        yield ProfileCompanyState.loaded(
            profile: data, status: FormzStatus.pure);
      },
    );
  }

  Stream<ProfileCompanyState> _uploadAvatarEvent(
      _UploadAvatarProfileCompanyEvent event) async* {
    try {
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) =>
              _state.copyWith(status: FormzStatus.submissionInProgress));
      await remoteData.updateAvatar(event.path);
      final result = await remoteData.getProfileCompany();
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
abstract class ProfileCompanyEvent with _$ProfileCompanyEvent {
  const factory ProfileCompanyEvent.getProfileData() = _GetProfileCompanyEvent;

  const factory ProfileCompanyEvent.uploadAvatar({required final String path}) =
      _UploadAvatarProfileCompanyEvent;
}

@freezed
abstract class ProfileCompanyState with _$ProfileCompanyState {
  const factory ProfileCompanyState.empty() = EmptyProfileCompanyState;

  const factory ProfileCompanyState.loading() = LoadingProfileCompanyState;

  const factory ProfileCompanyState.loaded(
      {required final TypeProfileCompany profile,
      required final FormzStatus status}) = LoadedProfileCompanyState;

  const factory ProfileCompanyState.error({required final String message}) =
      ErrorProfileCompanyState;
}
