import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/models/params_user/contacts/contacts.dart';
import '../company.dart';

part 'profile_company_bloc.freezed.dart';

class ProfileCompanyBloc
    extends Bloc<ProfileCompanyEvent, ProfileCompanyState> {
  final GetProfileCompany getProfile;
  final CompanyRemoteDataBase remoteData;

  ProfileCompanyBloc(this.getProfile, this.remoteData)
      : super(const ProfileCompanyState.empty());

  @override
  Stream<ProfileCompanyState> mapEventToState(
      ProfileCompanyEvent event) async* {
    yield* event.map(
        getProfileData: _getProfileDataEvent,
        uploadAvatar: _uploadAvatarEvent,
        addContact: _addContactEvent,
        deleteContact: _deleteContactEvent);
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
        yield ProfileCompanyState.loaded(profile: data, status: EMPTY_BLOC);
      },
    );
  }

  Stream<ProfileCompanyState> _uploadAvatarEvent(
      _UploadAvatarProfileCompanyEvent event) async* {
    try {
      yield* _status(PROFILE_COMPANY_BLOC_UPLOAD_AVATAR_PROGRESS);
      await remoteData.updateAvatarCompany(event.path);
      final result = await remoteData.getProfileCompany();
      yield* _status(PROFILE_COMPANY_BLOC_UPLOAD_AVATAR_SUCCEED);
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(profile: result));
    } catch (_) {
      yield* _status(PROFILE_COMPANY_BLOC_UPLOAD_AVATAR_FAILURE);
    }
  }

  Stream<ProfileCompanyState> _addContactEvent(
      _AddContactProfileCompanyEvent event) async* {
    try {
      final result = await remoteData
          .addContactCompany(ParamsContacts(event.name, event.url));
      print("as");
      yield* _status(PROFILE_COMPANY_BLOC_ADD_CONTACT_SUCCEED);
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(profile: result));
    } catch (_) {
      yield* _status(PROFILE_COMPANY_BLOC_ADD_CONTACT_FAILURE);
    }
  }

  Stream<ProfileCompanyState> _deleteContactEvent(
      _DeleteContactProfileCompanyEvent event) async* {
    try {
      final result = await remoteData.deleteContactCompany(event.id);
      yield* _status(PROFILE_COMPANY_BLOC_DELETE_CONTACT_SUCCEED);
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(profile: result));
    } catch (_) {
      yield* _status(PROFILE_COMPANY_BLOC_DELETE_CONTACT_FAILURE);
    }
  }

  Stream<ProfileCompanyState> _status(String status) async* {
    yield state.maybeMap(
        orElse: () => state,
        loaded: (_state) => _state.copyWith(status: EMPTY_BLOC));
    yield state.maybeMap(
        orElse: () => state,
        loaded: (_state) => _state.copyWith(status: status));
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

  const factory ProfileCompanyEvent.addContact(
      {required final String name,
      required final String url}) = _AddContactProfileCompanyEvent;

  const factory ProfileCompanyEvent.deleteContact({required final int id}) =
      _DeleteContactProfileCompanyEvent;
}

@freezed
abstract class ProfileCompanyState with _$ProfileCompanyState {
  const factory ProfileCompanyState.empty() = EmptyProfileCompanyState;

  const factory ProfileCompanyState.loading() = LoadingProfileCompanyState;

  const factory ProfileCompanyState.loaded(
      {required final TypeProfileCompany profile,
      required final String status}) = LoadedProfileCompanyState;

  const factory ProfileCompanyState.error({required final String message}) =
      ErrorProfileCompanyState;
}
