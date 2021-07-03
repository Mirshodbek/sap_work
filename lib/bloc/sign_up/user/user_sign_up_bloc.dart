import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/screens/authorization/authorization.dart';

part 'user_sign_up_bloc.freezed.dart';

class UserSignUpBloc extends Bloc<UserSignUpEvent, UserSignUpState> {
  final AuthProvider _provider;

  UserSignUpBloc(this._provider) : super(const UserSignUpState.initial());

  @override
  Stream<UserSignUpState> mapEventToState(
    UserSignUpEvent event,
  ) async* {
    yield* event.map(
      initial: _initialEvent,
      professionEvent: _professionEvent,
      userEvent: _userEvent,
    );
  }

  Stream<UserSignUpState> _initialEvent(_InitialUserSignUpEvent event) async* {
    yield const UserSignUpState.userState(
      name: Texts.pure(),
      phone: Phone.pure(),
      prof: Texts.pure(),
      status: FormzStatus.pure,
    );
  }

  Stream<UserSignUpState> _professionEvent(
      _ProfessionEventUserSignUpEvent event) async* {
    yield state.maybeMap(
      orElse: () => state,
      userState: (_state) => _state.copyWith(prof: event.prof),
    );
  }

  Stream<UserSignUpState> _userEvent(_HunterEventUserSignUpEvent event) async* {
    final isValidated = Formz.validate([event.name, event.phone, event.prof]);
    if (isValidated.isValidated) {
      try {
        yield state.maybeMap(
            orElse: () => state,
            userState: (_state) =>
                _state.copyWith(status: FormzStatus.submissionInProgress));
        await _provider.signUpUser(event.phone.value, event.name.value);
        yield const UserSignUpState.successSignUp();
      } catch (_) {
        yield state.maybeMap(
            orElse: () => state,
            userState: (_state) =>
                _state.copyWith(status: FormzStatus.submissionFailure));
      }
    } else {
      yield UserSignUpState.userState(
          name: event.name,
          phone: event.phone,
          prof: event.prof,
          status: isValidated);
    }
  }
}

@freezed
abstract class UserSignUpEvent with _$UserSignUpEvent {
  const factory UserSignUpEvent.initial() = _InitialUserSignUpEvent;

  const factory UserSignUpEvent.professionEvent({required final Texts prof}) =
      _ProfessionEventUserSignUpEvent;

  const factory UserSignUpEvent.userEvent({
    required final Texts name,
    required final Phone phone,
    required final Texts prof,
  }) = _HunterEventUserSignUpEvent;
}

@freezed
abstract class UserSignUpState with _$UserSignUpState {
  const factory UserSignUpState.initial() = _InitialUserSignUpState;

  const factory UserSignUpState.userState({
    required final Texts name,
    required final Phone phone,
    required final Texts prof,
    required final FormzStatus status,
  }) = _HunterStateUserSignUpState;

  const factory UserSignUpState.successSignUp() = _SuccessSignUpUserSignUpState;
}
