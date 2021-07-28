
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/data_source/auth_provider.dart';
import 'package:http/http.dart' as http;
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'admin_sign_in_bloc.freezed.dart';

class AdminSignInBloc extends Bloc<AdminSignInEvent, AdminSignInState> {
  final AuthProvider _provider;

  AdminSignInBloc(this._provider) : super(const AdminSignInState.initial());

  @override
  Stream<AdminSignInState> mapEventToState(AdminSignInEvent event) async* {
    yield* event.map(initial: _initialEvent, signIn: _signInEvent);
  }

  Stream<AdminSignInState> _initialEvent(
      _InitialAdminSignInEvent event) async* {
    yield AdminSignInState.signIn(status: FormzStatus.pure);
  }

  Stream<AdminSignInState> _signInEvent(_SignInAdminEvent event) async* {
    final isValidated = Formz.validate([
      Texts.dirty(event.username),
      Texts.dirty(event.password),
    ]);
    if (isValidated.isValidated) {
      try {
        yield state.maybeMap(
            orElse: () => state,
            signIn: (_state) =>
                _state.copyWith(status: FormzStatus.submissionInProgress));
        await _signIn(event.username, event.password);
        yield state.maybeMap(
            orElse: () => state,
            signIn: (_state) =>
                _state.copyWith(status: FormzStatus.submissionSuccess));
      } catch (_) {
        yield state.maybeMap(
            orElse: () => state,
            signIn: (_state) =>
                _state.copyWith(status: FormzStatus.submissionFailure));
      }
    } else {
      yield state.maybeMap(
          orElse: () => state,
          signIn: (_state) => _state.copyWith(status: isValidated));
    }
  }

  Future<http.Response> _signIn(String username, String password) async {
    final result = await _provider.signInAdmin(username, password);
    final token = result.body;
    print(token);
    if (token.isNotEmpty) {
      final sharedPref = await SharedPreferences.getInstance();
      await sharedPref.setInt("screen", 3);
      await sharedPref.setString(ADMIN_TOKEN, token);
    }
    return result;
  }
}

@freezed
abstract class AdminSignInEvent with _$AdminSignInEvent {
  const factory AdminSignInEvent.initial() = _InitialAdminSignInEvent;

  const factory AdminSignInEvent.signIn(
      {required final String username,
      required final String password}) = _SignInAdminEvent;
}

@freezed
abstract class AdminSignInState with _$AdminSignInState {
  const factory AdminSignInState.initial() = _InitialAdminSignInState;

  const factory AdminSignInState.signIn({required final FormzStatus status}) =
      SignInAdminState;
}
