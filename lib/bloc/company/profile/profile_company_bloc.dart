import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/bloc/company/profile/profile.dart';

part 'profile_company_bloc.freezed.dart';

class ProfileCompanyBloc
    extends Bloc<ProfileCompanyEvent, ProfileCompanyState> {
  final GetProfileCompany getProfile;

  ProfileCompanyBloc(this.getProfile)
      : super(const ProfileCompanyState.empty());

  @override
  Stream<ProfileCompanyState> mapEventToState(
      ProfileCompanyEvent event) async* {
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
        yield ProfileCompanyState.loaded(profile: data);
      },
    );
  }

  Stream<ProfileCompanyState> _uploadAvatarEvent(
      _UploadAvatarProfileCompanyEvent event) async* {}

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
      {required final TypeProfileCompany profile}) = LoadedProfileCompanyState;

  const factory ProfileCompanyState.error({required final String message}) =
      ErrorProfileCompanyState;
}
