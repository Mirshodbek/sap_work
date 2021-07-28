// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'admin_sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdminSignInEventTearOff {
  const _$AdminSignInEventTearOff();

  _InitialAdminSignInEvent initial() {
    return const _InitialAdminSignInEvent();
  }

  _SignInAdminEvent signIn(
      {required String username, required String password}) {
    return _SignInAdminEvent(
      username: username,
      password: password,
    );
  }
}

/// @nodoc
const $AdminSignInEvent = _$AdminSignInEventTearOff();

/// @nodoc
mixin _$AdminSignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String username, String password) signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String username, String password)? signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAdminSignInEvent value) initial,
    required TResult Function(_SignInAdminEvent value) signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAdminSignInEvent value)? initial,
    TResult Function(_SignInAdminEvent value)? signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminSignInEventCopyWith<$Res> {
  factory $AdminSignInEventCopyWith(
          AdminSignInEvent value, $Res Function(AdminSignInEvent) then) =
      _$AdminSignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdminSignInEventCopyWithImpl<$Res>
    implements $AdminSignInEventCopyWith<$Res> {
  _$AdminSignInEventCopyWithImpl(this._value, this._then);

  final AdminSignInEvent _value;
  // ignore: unused_field
  final $Res Function(AdminSignInEvent) _then;
}

/// @nodoc
abstract class _$InitialAdminSignInEventCopyWith<$Res> {
  factory _$InitialAdminSignInEventCopyWith(_InitialAdminSignInEvent value,
          $Res Function(_InitialAdminSignInEvent) then) =
      __$InitialAdminSignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialAdminSignInEventCopyWithImpl<$Res>
    extends _$AdminSignInEventCopyWithImpl<$Res>
    implements _$InitialAdminSignInEventCopyWith<$Res> {
  __$InitialAdminSignInEventCopyWithImpl(_InitialAdminSignInEvent _value,
      $Res Function(_InitialAdminSignInEvent) _then)
      : super(_value, (v) => _then(v as _InitialAdminSignInEvent));

  @override
  _InitialAdminSignInEvent get _value =>
      super._value as _InitialAdminSignInEvent;
}

/// @nodoc

class _$_InitialAdminSignInEvent implements _InitialAdminSignInEvent {
  const _$_InitialAdminSignInEvent();

  @override
  String toString() {
    return 'AdminSignInEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialAdminSignInEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String username, String password) signIn,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String username, String password)? signIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAdminSignInEvent value) initial,
    required TResult Function(_SignInAdminEvent value) signIn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAdminSignInEvent value)? initial,
    TResult Function(_SignInAdminEvent value)? signIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialAdminSignInEvent implements AdminSignInEvent {
  const factory _InitialAdminSignInEvent() = _$_InitialAdminSignInEvent;
}

/// @nodoc
abstract class _$SignInAdminEventCopyWith<$Res> {
  factory _$SignInAdminEventCopyWith(
          _SignInAdminEvent value, $Res Function(_SignInAdminEvent) then) =
      __$SignInAdminEventCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class __$SignInAdminEventCopyWithImpl<$Res>
    extends _$AdminSignInEventCopyWithImpl<$Res>
    implements _$SignInAdminEventCopyWith<$Res> {
  __$SignInAdminEventCopyWithImpl(
      _SignInAdminEvent _value, $Res Function(_SignInAdminEvent) _then)
      : super(_value, (v) => _then(v as _SignInAdminEvent));

  @override
  _SignInAdminEvent get _value => super._value as _SignInAdminEvent;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_SignInAdminEvent(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignInAdminEvent implements _SignInAdminEvent {
  const _$_SignInAdminEvent({required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AdminSignInEvent.signIn(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInAdminEvent &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$SignInAdminEventCopyWith<_SignInAdminEvent> get copyWith =>
      __$SignInAdminEventCopyWithImpl<_SignInAdminEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String username, String password) signIn,
  }) {
    return signIn(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String username, String password)? signIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAdminSignInEvent value) initial,
    required TResult Function(_SignInAdminEvent value) signIn,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAdminSignInEvent value)? initial,
    TResult Function(_SignInAdminEvent value)? signIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignInAdminEvent implements AdminSignInEvent {
  const factory _SignInAdminEvent(
      {required String username,
      required String password}) = _$_SignInAdminEvent;

  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SignInAdminEventCopyWith<_SignInAdminEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AdminSignInStateTearOff {
  const _$AdminSignInStateTearOff();

  _InitialAdminSignInState initial() {
    return const _InitialAdminSignInState();
  }

  SignInAdminState signIn({required FormzStatus status}) {
    return SignInAdminState(
      status: status,
    );
  }
}

/// @nodoc
const $AdminSignInState = _$AdminSignInStateTearOff();

/// @nodoc
mixin _$AdminSignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FormzStatus status) signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FormzStatus status)? signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAdminSignInState value) initial,
    required TResult Function(SignInAdminState value) signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAdminSignInState value)? initial,
    TResult Function(SignInAdminState value)? signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminSignInStateCopyWith<$Res> {
  factory $AdminSignInStateCopyWith(
          AdminSignInState value, $Res Function(AdminSignInState) then) =
      _$AdminSignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdminSignInStateCopyWithImpl<$Res>
    implements $AdminSignInStateCopyWith<$Res> {
  _$AdminSignInStateCopyWithImpl(this._value, this._then);

  final AdminSignInState _value;
  // ignore: unused_field
  final $Res Function(AdminSignInState) _then;
}

/// @nodoc
abstract class _$InitialAdminSignInStateCopyWith<$Res> {
  factory _$InitialAdminSignInStateCopyWith(_InitialAdminSignInState value,
          $Res Function(_InitialAdminSignInState) then) =
      __$InitialAdminSignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialAdminSignInStateCopyWithImpl<$Res>
    extends _$AdminSignInStateCopyWithImpl<$Res>
    implements _$InitialAdminSignInStateCopyWith<$Res> {
  __$InitialAdminSignInStateCopyWithImpl(_InitialAdminSignInState _value,
      $Res Function(_InitialAdminSignInState) _then)
      : super(_value, (v) => _then(v as _InitialAdminSignInState));

  @override
  _InitialAdminSignInState get _value =>
      super._value as _InitialAdminSignInState;
}

/// @nodoc

class _$_InitialAdminSignInState implements _InitialAdminSignInState {
  const _$_InitialAdminSignInState();

  @override
  String toString() {
    return 'AdminSignInState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialAdminSignInState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FormzStatus status) signIn,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FormzStatus status)? signIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAdminSignInState value) initial,
    required TResult Function(SignInAdminState value) signIn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAdminSignInState value)? initial,
    TResult Function(SignInAdminState value)? signIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialAdminSignInState implements AdminSignInState {
  const factory _InitialAdminSignInState() = _$_InitialAdminSignInState;
}

/// @nodoc
abstract class $SignInAdminStateCopyWith<$Res> {
  factory $SignInAdminStateCopyWith(
          SignInAdminState value, $Res Function(SignInAdminState) then) =
      _$SignInAdminStateCopyWithImpl<$Res>;
  $Res call({FormzStatus status});
}

/// @nodoc
class _$SignInAdminStateCopyWithImpl<$Res>
    extends _$AdminSignInStateCopyWithImpl<$Res>
    implements $SignInAdminStateCopyWith<$Res> {
  _$SignInAdminStateCopyWithImpl(
      SignInAdminState _value, $Res Function(SignInAdminState) _then)
      : super(_value, (v) => _then(v as SignInAdminState));

  @override
  SignInAdminState get _value => super._value as SignInAdminState;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(SignInAdminState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$SignInAdminState implements SignInAdminState {
  const _$SignInAdminState({required this.status});

  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'AdminSignInState.signIn(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInAdminState &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $SignInAdminStateCopyWith<SignInAdminState> get copyWith =>
      _$SignInAdminStateCopyWithImpl<SignInAdminState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FormzStatus status) signIn,
  }) {
    return signIn(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FormzStatus status)? signIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAdminSignInState value) initial,
    required TResult Function(SignInAdminState value) signIn,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAdminSignInState value)? initial,
    TResult Function(SignInAdminState value)? signIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignInAdminState implements AdminSignInState {
  const factory SignInAdminState({required FormzStatus status}) =
      _$SignInAdminState;

  FormzStatus get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInAdminStateCopyWith<SignInAdminState> get copyWith =>
      throw _privateConstructorUsedError;
}
