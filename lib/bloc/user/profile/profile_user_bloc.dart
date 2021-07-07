import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/models/profile_user/profile.dart';
import 'package:sap_work/repository/user/usercases/usercases.dart';

part 'profile_user_bloc.freezed.dart';

class ProfileUserBloc extends Bloc<ProfileUserEvent, ProfileUserState> {
  final GetProfileUser getProfile;

  ProfileUserBloc(this.getProfile) : super(const ProfileUserState.empty());

  @override
  Stream<ProfileUserState> mapEventToState(ProfileUserEvent event) async* {
    yield* event.map(getProfileData: _getProfileDataEvent);
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
