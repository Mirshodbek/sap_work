// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserSignInEventTearOff {
  const _$UserSignInEventTearOff();

  _InitialUserSignInEvent initial() {
    return const _InitialUserSignInEvent();
  }

  _PhoneChangedUserSignInEvent telephoneChanged({required Phone phone}) {
    return _PhoneChangedUserSignInEvent(
      phone: phone,
    );
  }

  _PhoneSubmittedUserSignInEvent telephoneSubmitted({required Phone phone}) {
    return _PhoneSubmittedUserSignInEvent(
      phone: phone,
    );
  }

  _CodeSubmittedUserSignInEvent codeSubmitted({required Texts code}) {
    return _CodeSubmittedUserSignInEvent(
      code: code,
    );
  }
}

/// @nodoc
const $UserSignInEvent = _$UserSignInEventTearOff();

/// @nodoc
mixin _$UserSignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Phone phone) telephoneChanged,
    required TResult Function(Phone phone) telephoneSubmitted,
    required TResult Function(Texts code) codeSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Phone phone)? telephoneChanged,
    TResult Function(Phone phone)? telephoneSubmitted,
    TResult Function(Texts code)? codeSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserSignInEvent value) initial,
    required TResult Function(_PhoneChangedUserSignInEvent value)
        telephoneChanged,
    required TResult Function(_PhoneSubmittedUserSignInEvent value)
        telephoneSubmitted,
    required TResult Function(_CodeSubmittedUserSignInEvent value)
        codeSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserSignInEvent value)? initial,
    TResult Function(_PhoneChangedUserSignInEvent value)? telephoneChanged,
    TResult Function(_PhoneSubmittedUserSignInEvent value)? telephoneSubmitted,
    TResult Function(_CodeSubmittedUserSignInEvent value)? codeSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSignInEventCopyWith<$Res> {
  factory $UserSignInEventCopyWith(
          UserSignInEvent value, $Res Function(UserSignInEvent) then) =
      _$UserSignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSignInEventCopyWithImpl<$Res>
    implements $UserSignInEventCopyWith<$Res> {
  _$UserSignInEventCopyWithImpl(this._value, this._then);

  final UserSignInEvent _value;
  // ignore: unused_field
  final $Res Function(UserSignInEvent) _then;
}

/// @nodoc
abstract class _$InitialUserSignInEventCopyWith<$Res> {
  factory _$InitialUserSignInEventCopyWith(_InitialUserSignInEvent value,
          $Res Function(_InitialUserSignInEvent) then) =
      __$InitialUserSignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialUserSignInEventCopyWithImpl<$Res>
    extends _$UserSignInEventCopyWithImpl<$Res>
    implements _$InitialUserSignInEventCopyWith<$Res> {
  __$InitialUserSignInEventCopyWithImpl(_InitialUserSignInEvent _value,
      $Res Function(_InitialUserSignInEvent) _then)
      : super(_value, (v) => _then(v as _InitialUserSignInEvent));

  @override
  _InitialUserSignInEvent get _value => super._value as _InitialUserSignInEvent;
}

/// @nodoc

class _$_InitialUserSignInEvent implements _InitialUserSignInEvent {
  const _$_InitialUserSignInEvent();

  @override
  String toString() {
    return 'UserSignInEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialUserSignInEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Phone phone) telephoneChanged,
    required TResult Function(Phone phone) telephoneSubmitted,
    required TResult Function(Texts code) codeSubmitted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Phone phone)? telephoneChanged,
    TResult Function(Phone phone)? telephoneSubmitted,
    TResult Function(Texts code)? codeSubmitted,
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
    required TResult Function(_InitialUserSignInEvent value) initial,
    required TResult Function(_PhoneChangedUserSignInEvent value)
        telephoneChanged,
    required TResult Function(_PhoneSubmittedUserSignInEvent value)
        telephoneSubmitted,
    required TResult Function(_CodeSubmittedUserSignInEvent value)
        codeSubmitted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserSignInEvent value)? initial,
    TResult Function(_PhoneChangedUserSignInEvent value)? telephoneChanged,
    TResult Function(_PhoneSubmittedUserSignInEvent value)? telephoneSubmitted,
    TResult Function(_CodeSubmittedUserSignInEvent value)? codeSubmitted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialUserSignInEvent implements UserSignInEvent {
  const factory _InitialUserSignInEvent() = _$_InitialUserSignInEvent;
}

/// @nodoc
abstract class _$PhoneChangedUserSignInEventCopyWith<$Res> {
  factory _$PhoneChangedUserSignInEventCopyWith(
          _PhoneChangedUserSignInEvent value,
          $Res Function(_PhoneChangedUserSignInEvent) then) =
      __$PhoneChangedUserSignInEventCopyWithImpl<$Res>;
  $Res call({Phone phone});
}

/// @nodoc
class __$PhoneChangedUserSignInEventCopyWithImpl<$Res>
    extends _$UserSignInEventCopyWithImpl<$Res>
    implements _$PhoneChangedUserSignInEventCopyWith<$Res> {
  __$PhoneChangedUserSignInEventCopyWithImpl(
      _PhoneChangedUserSignInEvent _value,
      $Res Function(_PhoneChangedUserSignInEvent) _then)
      : super(_value, (v) => _then(v as _PhoneChangedUserSignInEvent));

  @override
  _PhoneChangedUserSignInEvent get _value =>
      super._value as _PhoneChangedUserSignInEvent;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(_PhoneChangedUserSignInEvent(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
    ));
  }
}

/// @nodoc

class _$_PhoneChangedUserSignInEvent implements _PhoneChangedUserSignInEvent {
  const _$_PhoneChangedUserSignInEvent({required this.phone});

  @override
  final Phone phone;

  @override
  String toString() {
    return 'UserSignInEvent.telephoneChanged(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhoneChangedUserSignInEvent &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  _$PhoneChangedUserSignInEventCopyWith<_PhoneChangedUserSignInEvent>
      get copyWith => __$PhoneChangedUserSignInEventCopyWithImpl<
          _PhoneChangedUserSignInEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Phone phone) telephoneChanged,
    required TResult Function(Phone phone) telephoneSubmitted,
    required TResult Function(Texts code) codeSubmitted,
  }) {
    return telephoneChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Phone phone)? telephoneChanged,
    TResult Function(Phone phone)? telephoneSubmitted,
    TResult Function(Texts code)? codeSubmitted,
    required TResult orElse(),
  }) {
    if (telephoneChanged != null) {
      return telephoneChanged(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserSignInEvent value) initial,
    required TResult Function(_PhoneChangedUserSignInEvent value)
        telephoneChanged,
    required TResult Function(_PhoneSubmittedUserSignInEvent value)
        telephoneSubmitted,
    required TResult Function(_CodeSubmittedUserSignInEvent value)
        codeSubmitted,
  }) {
    return telephoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserSignInEvent value)? initial,
    TResult Function(_PhoneChangedUserSignInEvent value)? telephoneChanged,
    TResult Function(_PhoneSubmittedUserSignInEvent value)? telephoneSubmitted,
    TResult Function(_CodeSubmittedUserSignInEvent value)? codeSubmitted,
    required TResult orElse(),
  }) {
    if (telephoneChanged != null) {
      return telephoneChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneChangedUserSignInEvent implements UserSignInEvent {
  const factory _PhoneChangedUserSignInEvent({required Phone phone}) =
      _$_PhoneChangedUserSignInEvent;

  Phone get phone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhoneChangedUserSignInEventCopyWith<_PhoneChangedUserSignInEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PhoneSubmittedUserSignInEventCopyWith<$Res> {
  factory _$PhoneSubmittedUserSignInEventCopyWith(
          _PhoneSubmittedUserSignInEvent value,
          $Res Function(_PhoneSubmittedUserSignInEvent) then) =
      __$PhoneSubmittedUserSignInEventCopyWithImpl<$Res>;
  $Res call({Phone phone});
}

/// @nodoc
class __$PhoneSubmittedUserSignInEventCopyWithImpl<$Res>
    extends _$UserSignInEventCopyWithImpl<$Res>
    implements _$PhoneSubmittedUserSignInEventCopyWith<$Res> {
  __$PhoneSubmittedUserSignInEventCopyWithImpl(
      _PhoneSubmittedUserSignInEvent _value,
      $Res Function(_PhoneSubmittedUserSignInEvent) _then)
      : super(_value, (v) => _then(v as _PhoneSubmittedUserSignInEvent));

  @override
  _PhoneSubmittedUserSignInEvent get _value =>
      super._value as _PhoneSubmittedUserSignInEvent;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(_PhoneSubmittedUserSignInEvent(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
    ));
  }
}

/// @nodoc

class _$_PhoneSubmittedUserSignInEvent
    implements _PhoneSubmittedUserSignInEvent {
  const _$_PhoneSubmittedUserSignInEvent({required this.phone});

  @override
  final Phone phone;

  @override
  String toString() {
    return 'UserSignInEvent.telephoneSubmitted(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhoneSubmittedUserSignInEvent &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  _$PhoneSubmittedUserSignInEventCopyWith<_PhoneSubmittedUserSignInEvent>
      get copyWith => __$PhoneSubmittedUserSignInEventCopyWithImpl<
          _PhoneSubmittedUserSignInEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Phone phone) telephoneChanged,
    required TResult Function(Phone phone) telephoneSubmitted,
    required TResult Function(Texts code) codeSubmitted,
  }) {
    return telephoneSubmitted(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Phone phone)? telephoneChanged,
    TResult Function(Phone phone)? telephoneSubmitted,
    TResult Function(Texts code)? codeSubmitted,
    required TResult orElse(),
  }) {
    if (telephoneSubmitted != null) {
      return telephoneSubmitted(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserSignInEvent value) initial,
    required TResult Function(_PhoneChangedUserSignInEvent value)
        telephoneChanged,
    required TResult Function(_PhoneSubmittedUserSignInEvent value)
        telephoneSubmitted,
    required TResult Function(_CodeSubmittedUserSignInEvent value)
        codeSubmitted,
  }) {
    return telephoneSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserSignInEvent value)? initial,
    TResult Function(_PhoneChangedUserSignInEvent value)? telephoneChanged,
    TResult Function(_PhoneSubmittedUserSignInEvent value)? telephoneSubmitted,
    TResult Function(_CodeSubmittedUserSignInEvent value)? codeSubmitted,
    required TResult orElse(),
  }) {
    if (telephoneSubmitted != null) {
      return telephoneSubmitted(this);
    }
    return orElse();
  }
}

abstract class _PhoneSubmittedUserSignInEvent implements UserSignInEvent {
  const factory _PhoneSubmittedUserSignInEvent({required Phone phone}) =
      _$_PhoneSubmittedUserSignInEvent;

  Phone get phone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhoneSubmittedUserSignInEventCopyWith<_PhoneSubmittedUserSignInEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CodeSubmittedUserSignInEventCopyWith<$Res> {
  factory _$CodeSubmittedUserSignInEventCopyWith(
          _CodeSubmittedUserSignInEvent value,
          $Res Function(_CodeSubmittedUserSignInEvent) then) =
      __$CodeSubmittedUserSignInEventCopyWithImpl<$Res>;
  $Res call({Texts code});
}

/// @nodoc
class __$CodeSubmittedUserSignInEventCopyWithImpl<$Res>
    extends _$UserSignInEventCopyWithImpl<$Res>
    implements _$CodeSubmittedUserSignInEventCopyWith<$Res> {
  __$CodeSubmittedUserSignInEventCopyWithImpl(
      _CodeSubmittedUserSignInEvent _value,
      $Res Function(_CodeSubmittedUserSignInEvent) _then)
      : super(_value, (v) => _then(v as _CodeSubmittedUserSignInEvent));

  @override
  _CodeSubmittedUserSignInEvent get _value =>
      super._value as _CodeSubmittedUserSignInEvent;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_CodeSubmittedUserSignInEvent(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as Texts,
    ));
  }
}

/// @nodoc

class _$_CodeSubmittedUserSignInEvent implements _CodeSubmittedUserSignInEvent {
  const _$_CodeSubmittedUserSignInEvent({required this.code});

  @override
  final Texts code;

  @override
  String toString() {
    return 'UserSignInEvent.codeSubmitted(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CodeSubmittedUserSignInEvent &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$CodeSubmittedUserSignInEventCopyWith<_CodeSubmittedUserSignInEvent>
      get copyWith => __$CodeSubmittedUserSignInEventCopyWithImpl<
          _CodeSubmittedUserSignInEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Phone phone) telephoneChanged,
    required TResult Function(Phone phone) telephoneSubmitted,
    required TResult Function(Texts code) codeSubmitted,
  }) {
    return codeSubmitted(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Phone phone)? telephoneChanged,
    TResult Function(Phone phone)? telephoneSubmitted,
    TResult Function(Texts code)? codeSubmitted,
    required TResult orElse(),
  }) {
    if (codeSubmitted != null) {
      return codeSubmitted(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserSignInEvent value) initial,
    required TResult Function(_PhoneChangedUserSignInEvent value)
        telephoneChanged,
    required TResult Function(_PhoneSubmittedUserSignInEvent value)
        telephoneSubmitted,
    required TResult Function(_CodeSubmittedUserSignInEvent value)
        codeSubmitted,
  }) {
    return codeSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserSignInEvent value)? initial,
    TResult Function(_PhoneChangedUserSignInEvent value)? telephoneChanged,
    TResult Function(_PhoneSubmittedUserSignInEvent value)? telephoneSubmitted,
    TResult Function(_CodeSubmittedUserSignInEvent value)? codeSubmitted,
    required TResult orElse(),
  }) {
    if (codeSubmitted != null) {
      return codeSubmitted(this);
    }
    return orElse();
  }
}

abstract class _CodeSubmittedUserSignInEvent implements UserSignInEvent {
  const factory _CodeSubmittedUserSignInEvent({required Texts code}) =
      _$_CodeSubmittedUserSignInEvent;

  Texts get code => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CodeSubmittedUserSignInEventCopyWith<_CodeSubmittedUserSignInEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserSignInStateTearOff {
  const _$UserSignInStateTearOff();

  InitialUserSignInState initial() {
    return const InitialUserSignInState();
  }

  TelephoneUserSignInState telephoneState(
      {required Phone phone, required FormzStatus statusA}) {
    return TelephoneUserSignInState(
      phone: phone,
      statusA: statusA,
    );
  }

  CodeUserSignInState codeState(
      {required Texts code, required FormzStatus statusB}) {
    return CodeUserSignInState(
      code: code,
      statusB: statusB,
    );
  }

  SuccessUserSignInState successSignIn() {
    return const SuccessUserSignInState();
  }
}

/// @nodoc
const $UserSignInState = _$UserSignInStateTearOff();

/// @nodoc
mixin _$UserSignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Phone phone, FormzStatus statusA) telephoneState,
    required TResult Function(Texts code, FormzStatus statusB) codeState,
    required TResult Function() successSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Phone phone, FormzStatus statusA)? telephoneState,
    TResult Function(Texts code, FormzStatus statusB)? codeState,
    TResult Function()? successSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUserSignInState value) initial,
    required TResult Function(TelephoneUserSignInState value) telephoneState,
    required TResult Function(CodeUserSignInState value) codeState,
    required TResult Function(SuccessUserSignInState value) successSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUserSignInState value)? initial,
    TResult Function(TelephoneUserSignInState value)? telephoneState,
    TResult Function(CodeUserSignInState value)? codeState,
    TResult Function(SuccessUserSignInState value)? successSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSignInStateCopyWith<$Res> {
  factory $UserSignInStateCopyWith(
          UserSignInState value, $Res Function(UserSignInState) then) =
      _$UserSignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSignInStateCopyWithImpl<$Res>
    implements $UserSignInStateCopyWith<$Res> {
  _$UserSignInStateCopyWithImpl(this._value, this._then);

  final UserSignInState _value;
  // ignore: unused_field
  final $Res Function(UserSignInState) _then;
}

/// @nodoc
abstract class $InitialUserSignInStateCopyWith<$Res> {
  factory $InitialUserSignInStateCopyWith(InitialUserSignInState value,
          $Res Function(InitialUserSignInState) then) =
      _$InitialUserSignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialUserSignInStateCopyWithImpl<$Res>
    extends _$UserSignInStateCopyWithImpl<$Res>
    implements $InitialUserSignInStateCopyWith<$Res> {
  _$InitialUserSignInStateCopyWithImpl(InitialUserSignInState _value,
      $Res Function(InitialUserSignInState) _then)
      : super(_value, (v) => _then(v as InitialUserSignInState));

  @override
  InitialUserSignInState get _value => super._value as InitialUserSignInState;
}

/// @nodoc

class _$InitialUserSignInState implements InitialUserSignInState {
  const _$InitialUserSignInState();

  @override
  String toString() {
    return 'UserSignInState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialUserSignInState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Phone phone, FormzStatus statusA) telephoneState,
    required TResult Function(Texts code, FormzStatus statusB) codeState,
    required TResult Function() successSignIn,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Phone phone, FormzStatus statusA)? telephoneState,
    TResult Function(Texts code, FormzStatus statusB)? codeState,
    TResult Function()? successSignIn,
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
    required TResult Function(InitialUserSignInState value) initial,
    required TResult Function(TelephoneUserSignInState value) telephoneState,
    required TResult Function(CodeUserSignInState value) codeState,
    required TResult Function(SuccessUserSignInState value) successSignIn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUserSignInState value)? initial,
    TResult Function(TelephoneUserSignInState value)? telephoneState,
    TResult Function(CodeUserSignInState value)? codeState,
    TResult Function(SuccessUserSignInState value)? successSignIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialUserSignInState implements UserSignInState {
  const factory InitialUserSignInState() = _$InitialUserSignInState;
}

/// @nodoc
abstract class $TelephoneUserSignInStateCopyWith<$Res> {
  factory $TelephoneUserSignInStateCopyWith(TelephoneUserSignInState value,
          $Res Function(TelephoneUserSignInState) then) =
      _$TelephoneUserSignInStateCopyWithImpl<$Res>;
  $Res call({Phone phone, FormzStatus statusA});
}

/// @nodoc
class _$TelephoneUserSignInStateCopyWithImpl<$Res>
    extends _$UserSignInStateCopyWithImpl<$Res>
    implements $TelephoneUserSignInStateCopyWith<$Res> {
  _$TelephoneUserSignInStateCopyWithImpl(TelephoneUserSignInState _value,
      $Res Function(TelephoneUserSignInState) _then)
      : super(_value, (v) => _then(v as TelephoneUserSignInState));

  @override
  TelephoneUserSignInState get _value =>
      super._value as TelephoneUserSignInState;

  @override
  $Res call({
    Object? phone = freezed,
    Object? statusA = freezed,
  }) {
    return _then(TelephoneUserSignInState(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      statusA: statusA == freezed
          ? _value.statusA
          : statusA // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$TelephoneUserSignInState implements TelephoneUserSignInState {
  const _$TelephoneUserSignInState(
      {required this.phone, required this.statusA});

  @override
  final Phone phone;
  @override
  final FormzStatus statusA;

  @override
  String toString() {
    return 'UserSignInState.telephoneState(phone: $phone, statusA: $statusA)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TelephoneUserSignInState &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.statusA, statusA) ||
                const DeepCollectionEquality().equals(other.statusA, statusA)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(statusA);

  @JsonKey(ignore: true)
  @override
  $TelephoneUserSignInStateCopyWith<TelephoneUserSignInState> get copyWith =>
      _$TelephoneUserSignInStateCopyWithImpl<TelephoneUserSignInState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Phone phone, FormzStatus statusA) telephoneState,
    required TResult Function(Texts code, FormzStatus statusB) codeState,
    required TResult Function() successSignIn,
  }) {
    return telephoneState(phone, statusA);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Phone phone, FormzStatus statusA)? telephoneState,
    TResult Function(Texts code, FormzStatus statusB)? codeState,
    TResult Function()? successSignIn,
    required TResult orElse(),
  }) {
    if (telephoneState != null) {
      return telephoneState(phone, statusA);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUserSignInState value) initial,
    required TResult Function(TelephoneUserSignInState value) telephoneState,
    required TResult Function(CodeUserSignInState value) codeState,
    required TResult Function(SuccessUserSignInState value) successSignIn,
  }) {
    return telephoneState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUserSignInState value)? initial,
    TResult Function(TelephoneUserSignInState value)? telephoneState,
    TResult Function(CodeUserSignInState value)? codeState,
    TResult Function(SuccessUserSignInState value)? successSignIn,
    required TResult orElse(),
  }) {
    if (telephoneState != null) {
      return telephoneState(this);
    }
    return orElse();
  }
}

abstract class TelephoneUserSignInState implements UserSignInState {
  const factory TelephoneUserSignInState(
      {required Phone phone,
      required FormzStatus statusA}) = _$TelephoneUserSignInState;

  Phone get phone => throw _privateConstructorUsedError;
  FormzStatus get statusA => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TelephoneUserSignInStateCopyWith<TelephoneUserSignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeUserSignInStateCopyWith<$Res> {
  factory $CodeUserSignInStateCopyWith(
          CodeUserSignInState value, $Res Function(CodeUserSignInState) then) =
      _$CodeUserSignInStateCopyWithImpl<$Res>;
  $Res call({Texts code, FormzStatus statusB});
}

/// @nodoc
class _$CodeUserSignInStateCopyWithImpl<$Res>
    extends _$UserSignInStateCopyWithImpl<$Res>
    implements $CodeUserSignInStateCopyWith<$Res> {
  _$CodeUserSignInStateCopyWithImpl(
      CodeUserSignInState _value, $Res Function(CodeUserSignInState) _then)
      : super(_value, (v) => _then(v as CodeUserSignInState));

  @override
  CodeUserSignInState get _value => super._value as CodeUserSignInState;

  @override
  $Res call({
    Object? code = freezed,
    Object? statusB = freezed,
  }) {
    return _then(CodeUserSignInState(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as Texts,
      statusB: statusB == freezed
          ? _value.statusB
          : statusB // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$CodeUserSignInState implements CodeUserSignInState {
  const _$CodeUserSignInState({required this.code, required this.statusB});

  @override
  final Texts code;
  @override
  final FormzStatus statusB;

  @override
  String toString() {
    return 'UserSignInState.codeState(code: $code, statusB: $statusB)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CodeUserSignInState &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.statusB, statusB) ||
                const DeepCollectionEquality().equals(other.statusB, statusB)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(statusB);

  @JsonKey(ignore: true)
  @override
  $CodeUserSignInStateCopyWith<CodeUserSignInState> get copyWith =>
      _$CodeUserSignInStateCopyWithImpl<CodeUserSignInState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Phone phone, FormzStatus statusA) telephoneState,
    required TResult Function(Texts code, FormzStatus statusB) codeState,
    required TResult Function() successSignIn,
  }) {
    return codeState(code, statusB);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Phone phone, FormzStatus statusA)? telephoneState,
    TResult Function(Texts code, FormzStatus statusB)? codeState,
    TResult Function()? successSignIn,
    required TResult orElse(),
  }) {
    if (codeState != null) {
      return codeState(code, statusB);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUserSignInState value) initial,
    required TResult Function(TelephoneUserSignInState value) telephoneState,
    required TResult Function(CodeUserSignInState value) codeState,
    required TResult Function(SuccessUserSignInState value) successSignIn,
  }) {
    return codeState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUserSignInState value)? initial,
    TResult Function(TelephoneUserSignInState value)? telephoneState,
    TResult Function(CodeUserSignInState value)? codeState,
    TResult Function(SuccessUserSignInState value)? successSignIn,
    required TResult orElse(),
  }) {
    if (codeState != null) {
      return codeState(this);
    }
    return orElse();
  }
}

abstract class CodeUserSignInState implements UserSignInState {
  const factory CodeUserSignInState(
      {required Texts code,
      required FormzStatus statusB}) = _$CodeUserSignInState;

  Texts get code => throw _privateConstructorUsedError;
  FormzStatus get statusB => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeUserSignInStateCopyWith<CodeUserSignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessUserSignInStateCopyWith<$Res> {
  factory $SuccessUserSignInStateCopyWith(SuccessUserSignInState value,
          $Res Function(SuccessUserSignInState) then) =
      _$SuccessUserSignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessUserSignInStateCopyWithImpl<$Res>
    extends _$UserSignInStateCopyWithImpl<$Res>
    implements $SuccessUserSignInStateCopyWith<$Res> {
  _$SuccessUserSignInStateCopyWithImpl(SuccessUserSignInState _value,
      $Res Function(SuccessUserSignInState) _then)
      : super(_value, (v) => _then(v as SuccessUserSignInState));

  @override
  SuccessUserSignInState get _value => super._value as SuccessUserSignInState;
}

/// @nodoc

class _$SuccessUserSignInState implements SuccessUserSignInState {
  const _$SuccessUserSignInState();

  @override
  String toString() {
    return 'UserSignInState.successSignIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SuccessUserSignInState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Phone phone, FormzStatus statusA) telephoneState,
    required TResult Function(Texts code, FormzStatus statusB) codeState,
    required TResult Function() successSignIn,
  }) {
    return successSignIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Phone phone, FormzStatus statusA)? telephoneState,
    TResult Function(Texts code, FormzStatus statusB)? codeState,
    TResult Function()? successSignIn,
    required TResult orElse(),
  }) {
    if (successSignIn != null) {
      return successSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUserSignInState value) initial,
    required TResult Function(TelephoneUserSignInState value) telephoneState,
    required TResult Function(CodeUserSignInState value) codeState,
    required TResult Function(SuccessUserSignInState value) successSignIn,
  }) {
    return successSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUserSignInState value)? initial,
    TResult Function(TelephoneUserSignInState value)? telephoneState,
    TResult Function(CodeUserSignInState value)? codeState,
    TResult Function(SuccessUserSignInState value)? successSignIn,
    required TResult orElse(),
  }) {
    if (successSignIn != null) {
      return successSignIn(this);
    }
    return orElse();
  }
}

abstract class SuccessUserSignInState implements UserSignInState {
  const factory SuccessUserSignInState() = _$SuccessUserSignInState;
}
