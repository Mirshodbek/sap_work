// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'hunter_sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HunterSignInEventTearOff {
  const _$HunterSignInEventTearOff();

  _InitialHunterSignInEvent initial() {
    return const _InitialHunterSignInEvent();
  }

  _PhoneChangedHunterSignInEvent telephoneChanged({required Phone phone}) {
    return _PhoneChangedHunterSignInEvent(
      phone: phone,
    );
  }

  _PhoneSubmittedHunterSignInEvent telephoneSubmitted({required Phone phone}) {
    return _PhoneSubmittedHunterSignInEvent(
      phone: phone,
    );
  }

  _CodeSubmittedHunterSignInEvent codeSubmitted({required Texts code}) {
    return _CodeSubmittedHunterSignInEvent(
      code: code,
    );
  }
}

/// @nodoc
const $HunterSignInEvent = _$HunterSignInEventTearOff();

/// @nodoc
mixin _$HunterSignInEvent {
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
    required TResult Function(_InitialHunterSignInEvent value) initial,
    required TResult Function(_PhoneChangedHunterSignInEvent value)
        telephoneChanged,
    required TResult Function(_PhoneSubmittedHunterSignInEvent value)
        telephoneSubmitted,
    required TResult Function(_CodeSubmittedHunterSignInEvent value)
        codeSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHunterSignInEvent value)? initial,
    TResult Function(_PhoneChangedHunterSignInEvent value)? telephoneChanged,
    TResult Function(_PhoneSubmittedHunterSignInEvent value)?
        telephoneSubmitted,
    TResult Function(_CodeSubmittedHunterSignInEvent value)? codeSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HunterSignInEventCopyWith<$Res> {
  factory $HunterSignInEventCopyWith(
          HunterSignInEvent value, $Res Function(HunterSignInEvent) then) =
      _$HunterSignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HunterSignInEventCopyWithImpl<$Res>
    implements $HunterSignInEventCopyWith<$Res> {
  _$HunterSignInEventCopyWithImpl(this._value, this._then);

  final HunterSignInEvent _value;
  // ignore: unused_field
  final $Res Function(HunterSignInEvent) _then;
}

/// @nodoc
abstract class _$InitialHunterSignInEventCopyWith<$Res> {
  factory _$InitialHunterSignInEventCopyWith(_InitialHunterSignInEvent value,
          $Res Function(_InitialHunterSignInEvent) then) =
      __$InitialHunterSignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialHunterSignInEventCopyWithImpl<$Res>
    extends _$HunterSignInEventCopyWithImpl<$Res>
    implements _$InitialHunterSignInEventCopyWith<$Res> {
  __$InitialHunterSignInEventCopyWithImpl(_InitialHunterSignInEvent _value,
      $Res Function(_InitialHunterSignInEvent) _then)
      : super(_value, (v) => _then(v as _InitialHunterSignInEvent));

  @override
  _InitialHunterSignInEvent get _value =>
      super._value as _InitialHunterSignInEvent;
}

/// @nodoc

class _$_InitialHunterSignInEvent implements _InitialHunterSignInEvent {
  const _$_InitialHunterSignInEvent();

  @override
  String toString() {
    return 'HunterSignInEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialHunterSignInEvent);
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
    required TResult Function(_InitialHunterSignInEvent value) initial,
    required TResult Function(_PhoneChangedHunterSignInEvent value)
        telephoneChanged,
    required TResult Function(_PhoneSubmittedHunterSignInEvent value)
        telephoneSubmitted,
    required TResult Function(_CodeSubmittedHunterSignInEvent value)
        codeSubmitted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHunterSignInEvent value)? initial,
    TResult Function(_PhoneChangedHunterSignInEvent value)? telephoneChanged,
    TResult Function(_PhoneSubmittedHunterSignInEvent value)?
        telephoneSubmitted,
    TResult Function(_CodeSubmittedHunterSignInEvent value)? codeSubmitted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialHunterSignInEvent implements HunterSignInEvent {
  const factory _InitialHunterSignInEvent() = _$_InitialHunterSignInEvent;
}

/// @nodoc
abstract class _$PhoneChangedHunterSignInEventCopyWith<$Res> {
  factory _$PhoneChangedHunterSignInEventCopyWith(
          _PhoneChangedHunterSignInEvent value,
          $Res Function(_PhoneChangedHunterSignInEvent) then) =
      __$PhoneChangedHunterSignInEventCopyWithImpl<$Res>;
  $Res call({Phone phone});
}

/// @nodoc
class __$PhoneChangedHunterSignInEventCopyWithImpl<$Res>
    extends _$HunterSignInEventCopyWithImpl<$Res>
    implements _$PhoneChangedHunterSignInEventCopyWith<$Res> {
  __$PhoneChangedHunterSignInEventCopyWithImpl(
      _PhoneChangedHunterSignInEvent _value,
      $Res Function(_PhoneChangedHunterSignInEvent) _then)
      : super(_value, (v) => _then(v as _PhoneChangedHunterSignInEvent));

  @override
  _PhoneChangedHunterSignInEvent get _value =>
      super._value as _PhoneChangedHunterSignInEvent;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(_PhoneChangedHunterSignInEvent(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
    ));
  }
}

/// @nodoc

class _$_PhoneChangedHunterSignInEvent
    implements _PhoneChangedHunterSignInEvent {
  const _$_PhoneChangedHunterSignInEvent({required this.phone});

  @override
  final Phone phone;

  @override
  String toString() {
    return 'HunterSignInEvent.telephoneChanged(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhoneChangedHunterSignInEvent &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  _$PhoneChangedHunterSignInEventCopyWith<_PhoneChangedHunterSignInEvent>
      get copyWith => __$PhoneChangedHunterSignInEventCopyWithImpl<
          _PhoneChangedHunterSignInEvent>(this, _$identity);

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
    required TResult Function(_InitialHunterSignInEvent value) initial,
    required TResult Function(_PhoneChangedHunterSignInEvent value)
        telephoneChanged,
    required TResult Function(_PhoneSubmittedHunterSignInEvent value)
        telephoneSubmitted,
    required TResult Function(_CodeSubmittedHunterSignInEvent value)
        codeSubmitted,
  }) {
    return telephoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHunterSignInEvent value)? initial,
    TResult Function(_PhoneChangedHunterSignInEvent value)? telephoneChanged,
    TResult Function(_PhoneSubmittedHunterSignInEvent value)?
        telephoneSubmitted,
    TResult Function(_CodeSubmittedHunterSignInEvent value)? codeSubmitted,
    required TResult orElse(),
  }) {
    if (telephoneChanged != null) {
      return telephoneChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneChangedHunterSignInEvent implements HunterSignInEvent {
  const factory _PhoneChangedHunterSignInEvent({required Phone phone}) =
      _$_PhoneChangedHunterSignInEvent;

  Phone get phone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhoneChangedHunterSignInEventCopyWith<_PhoneChangedHunterSignInEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PhoneSubmittedHunterSignInEventCopyWith<$Res> {
  factory _$PhoneSubmittedHunterSignInEventCopyWith(
          _PhoneSubmittedHunterSignInEvent value,
          $Res Function(_PhoneSubmittedHunterSignInEvent) then) =
      __$PhoneSubmittedHunterSignInEventCopyWithImpl<$Res>;
  $Res call({Phone phone});
}

/// @nodoc
class __$PhoneSubmittedHunterSignInEventCopyWithImpl<$Res>
    extends _$HunterSignInEventCopyWithImpl<$Res>
    implements _$PhoneSubmittedHunterSignInEventCopyWith<$Res> {
  __$PhoneSubmittedHunterSignInEventCopyWithImpl(
      _PhoneSubmittedHunterSignInEvent _value,
      $Res Function(_PhoneSubmittedHunterSignInEvent) _then)
      : super(_value, (v) => _then(v as _PhoneSubmittedHunterSignInEvent));

  @override
  _PhoneSubmittedHunterSignInEvent get _value =>
      super._value as _PhoneSubmittedHunterSignInEvent;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(_PhoneSubmittedHunterSignInEvent(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
    ));
  }
}

/// @nodoc

class _$_PhoneSubmittedHunterSignInEvent
    implements _PhoneSubmittedHunterSignInEvent {
  const _$_PhoneSubmittedHunterSignInEvent({required this.phone});

  @override
  final Phone phone;

  @override
  String toString() {
    return 'HunterSignInEvent.telephoneSubmitted(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhoneSubmittedHunterSignInEvent &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  _$PhoneSubmittedHunterSignInEventCopyWith<_PhoneSubmittedHunterSignInEvent>
      get copyWith => __$PhoneSubmittedHunterSignInEventCopyWithImpl<
          _PhoneSubmittedHunterSignInEvent>(this, _$identity);

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
    required TResult Function(_InitialHunterSignInEvent value) initial,
    required TResult Function(_PhoneChangedHunterSignInEvent value)
        telephoneChanged,
    required TResult Function(_PhoneSubmittedHunterSignInEvent value)
        telephoneSubmitted,
    required TResult Function(_CodeSubmittedHunterSignInEvent value)
        codeSubmitted,
  }) {
    return telephoneSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHunterSignInEvent value)? initial,
    TResult Function(_PhoneChangedHunterSignInEvent value)? telephoneChanged,
    TResult Function(_PhoneSubmittedHunterSignInEvent value)?
        telephoneSubmitted,
    TResult Function(_CodeSubmittedHunterSignInEvent value)? codeSubmitted,
    required TResult orElse(),
  }) {
    if (telephoneSubmitted != null) {
      return telephoneSubmitted(this);
    }
    return orElse();
  }
}

abstract class _PhoneSubmittedHunterSignInEvent implements HunterSignInEvent {
  const factory _PhoneSubmittedHunterSignInEvent({required Phone phone}) =
      _$_PhoneSubmittedHunterSignInEvent;

  Phone get phone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhoneSubmittedHunterSignInEventCopyWith<_PhoneSubmittedHunterSignInEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CodeSubmittedHunterSignInEventCopyWith<$Res> {
  factory _$CodeSubmittedHunterSignInEventCopyWith(
          _CodeSubmittedHunterSignInEvent value,
          $Res Function(_CodeSubmittedHunterSignInEvent) then) =
      __$CodeSubmittedHunterSignInEventCopyWithImpl<$Res>;
  $Res call({Texts code});
}

/// @nodoc
class __$CodeSubmittedHunterSignInEventCopyWithImpl<$Res>
    extends _$HunterSignInEventCopyWithImpl<$Res>
    implements _$CodeSubmittedHunterSignInEventCopyWith<$Res> {
  __$CodeSubmittedHunterSignInEventCopyWithImpl(
      _CodeSubmittedHunterSignInEvent _value,
      $Res Function(_CodeSubmittedHunterSignInEvent) _then)
      : super(_value, (v) => _then(v as _CodeSubmittedHunterSignInEvent));

  @override
  _CodeSubmittedHunterSignInEvent get _value =>
      super._value as _CodeSubmittedHunterSignInEvent;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_CodeSubmittedHunterSignInEvent(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as Texts,
    ));
  }
}

/// @nodoc

class _$_CodeSubmittedHunterSignInEvent
    implements _CodeSubmittedHunterSignInEvent {
  const _$_CodeSubmittedHunterSignInEvent({required this.code});

  @override
  final Texts code;

  @override
  String toString() {
    return 'HunterSignInEvent.codeSubmitted(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CodeSubmittedHunterSignInEvent &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$CodeSubmittedHunterSignInEventCopyWith<_CodeSubmittedHunterSignInEvent>
      get copyWith => __$CodeSubmittedHunterSignInEventCopyWithImpl<
          _CodeSubmittedHunterSignInEvent>(this, _$identity);

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
    required TResult Function(_InitialHunterSignInEvent value) initial,
    required TResult Function(_PhoneChangedHunterSignInEvent value)
        telephoneChanged,
    required TResult Function(_PhoneSubmittedHunterSignInEvent value)
        telephoneSubmitted,
    required TResult Function(_CodeSubmittedHunterSignInEvent value)
        codeSubmitted,
  }) {
    return codeSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHunterSignInEvent value)? initial,
    TResult Function(_PhoneChangedHunterSignInEvent value)? telephoneChanged,
    TResult Function(_PhoneSubmittedHunterSignInEvent value)?
        telephoneSubmitted,
    TResult Function(_CodeSubmittedHunterSignInEvent value)? codeSubmitted,
    required TResult orElse(),
  }) {
    if (codeSubmitted != null) {
      return codeSubmitted(this);
    }
    return orElse();
  }
}

abstract class _CodeSubmittedHunterSignInEvent implements HunterSignInEvent {
  const factory _CodeSubmittedHunterSignInEvent({required Texts code}) =
      _$_CodeSubmittedHunterSignInEvent;

  Texts get code => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CodeSubmittedHunterSignInEventCopyWith<_CodeSubmittedHunterSignInEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$HunterSignInStateTearOff {
  const _$HunterSignInStateTearOff();

  InitialHunterSignInState initial() {
    return const InitialHunterSignInState();
  }

  TelephoneHunterSignInState telephoneState(
      {required Phone phone, required FormzStatus statusA}) {
    return TelephoneHunterSignInState(
      phone: phone,
      statusA: statusA,
    );
  }

  CodeHunterSignInState codeState(
      {required Texts code, required FormzStatus statusB}) {
    return CodeHunterSignInState(
      code: code,
      statusB: statusB,
    );
  }

  SuccessHunterSignInState successSignIn() {
    return const SuccessHunterSignInState();
  }
}

/// @nodoc
const $HunterSignInState = _$HunterSignInStateTearOff();

/// @nodoc
mixin _$HunterSignInState {
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
    required TResult Function(InitialHunterSignInState value) initial,
    required TResult Function(TelephoneHunterSignInState value) telephoneState,
    required TResult Function(CodeHunterSignInState value) codeState,
    required TResult Function(SuccessHunterSignInState value) successSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHunterSignInState value)? initial,
    TResult Function(TelephoneHunterSignInState value)? telephoneState,
    TResult Function(CodeHunterSignInState value)? codeState,
    TResult Function(SuccessHunterSignInState value)? successSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HunterSignInStateCopyWith<$Res> {
  factory $HunterSignInStateCopyWith(
          HunterSignInState value, $Res Function(HunterSignInState) then) =
      _$HunterSignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HunterSignInStateCopyWithImpl<$Res>
    implements $HunterSignInStateCopyWith<$Res> {
  _$HunterSignInStateCopyWithImpl(this._value, this._then);

  final HunterSignInState _value;
  // ignore: unused_field
  final $Res Function(HunterSignInState) _then;
}

/// @nodoc
abstract class $InitialHunterSignInStateCopyWith<$Res> {
  factory $InitialHunterSignInStateCopyWith(InitialHunterSignInState value,
          $Res Function(InitialHunterSignInState) then) =
      _$InitialHunterSignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialHunterSignInStateCopyWithImpl<$Res>
    extends _$HunterSignInStateCopyWithImpl<$Res>
    implements $InitialHunterSignInStateCopyWith<$Res> {
  _$InitialHunterSignInStateCopyWithImpl(InitialHunterSignInState _value,
      $Res Function(InitialHunterSignInState) _then)
      : super(_value, (v) => _then(v as InitialHunterSignInState));

  @override
  InitialHunterSignInState get _value =>
      super._value as InitialHunterSignInState;
}

/// @nodoc

class _$InitialHunterSignInState implements InitialHunterSignInState {
  const _$InitialHunterSignInState();

  @override
  String toString() {
    return 'HunterSignInState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialHunterSignInState);
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
    required TResult Function(InitialHunterSignInState value) initial,
    required TResult Function(TelephoneHunterSignInState value) telephoneState,
    required TResult Function(CodeHunterSignInState value) codeState,
    required TResult Function(SuccessHunterSignInState value) successSignIn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHunterSignInState value)? initial,
    TResult Function(TelephoneHunterSignInState value)? telephoneState,
    TResult Function(CodeHunterSignInState value)? codeState,
    TResult Function(SuccessHunterSignInState value)? successSignIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialHunterSignInState implements HunterSignInState {
  const factory InitialHunterSignInState() = _$InitialHunterSignInState;
}

/// @nodoc
abstract class $TelephoneHunterSignInStateCopyWith<$Res> {
  factory $TelephoneHunterSignInStateCopyWith(TelephoneHunterSignInState value,
          $Res Function(TelephoneHunterSignInState) then) =
      _$TelephoneHunterSignInStateCopyWithImpl<$Res>;
  $Res call({Phone phone, FormzStatus statusA});
}

/// @nodoc
class _$TelephoneHunterSignInStateCopyWithImpl<$Res>
    extends _$HunterSignInStateCopyWithImpl<$Res>
    implements $TelephoneHunterSignInStateCopyWith<$Res> {
  _$TelephoneHunterSignInStateCopyWithImpl(TelephoneHunterSignInState _value,
      $Res Function(TelephoneHunterSignInState) _then)
      : super(_value, (v) => _then(v as TelephoneHunterSignInState));

  @override
  TelephoneHunterSignInState get _value =>
      super._value as TelephoneHunterSignInState;

  @override
  $Res call({
    Object? phone = freezed,
    Object? statusA = freezed,
  }) {
    return _then(TelephoneHunterSignInState(
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

class _$TelephoneHunterSignInState implements TelephoneHunterSignInState {
  const _$TelephoneHunterSignInState(
      {required this.phone, required this.statusA});

  @override
  final Phone phone;
  @override
  final FormzStatus statusA;

  @override
  String toString() {
    return 'HunterSignInState.telephoneState(phone: $phone, statusA: $statusA)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TelephoneHunterSignInState &&
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
  $TelephoneHunterSignInStateCopyWith<TelephoneHunterSignInState>
      get copyWith =>
          _$TelephoneHunterSignInStateCopyWithImpl<TelephoneHunterSignInState>(
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
    required TResult Function(InitialHunterSignInState value) initial,
    required TResult Function(TelephoneHunterSignInState value) telephoneState,
    required TResult Function(CodeHunterSignInState value) codeState,
    required TResult Function(SuccessHunterSignInState value) successSignIn,
  }) {
    return telephoneState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHunterSignInState value)? initial,
    TResult Function(TelephoneHunterSignInState value)? telephoneState,
    TResult Function(CodeHunterSignInState value)? codeState,
    TResult Function(SuccessHunterSignInState value)? successSignIn,
    required TResult orElse(),
  }) {
    if (telephoneState != null) {
      return telephoneState(this);
    }
    return orElse();
  }
}

abstract class TelephoneHunterSignInState implements HunterSignInState {
  const factory TelephoneHunterSignInState(
      {required Phone phone,
      required FormzStatus statusA}) = _$TelephoneHunterSignInState;

  Phone get phone => throw _privateConstructorUsedError;
  FormzStatus get statusA => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TelephoneHunterSignInStateCopyWith<TelephoneHunterSignInState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeHunterSignInStateCopyWith<$Res> {
  factory $CodeHunterSignInStateCopyWith(CodeHunterSignInState value,
          $Res Function(CodeHunterSignInState) then) =
      _$CodeHunterSignInStateCopyWithImpl<$Res>;
  $Res call({Texts code, FormzStatus statusB});
}

/// @nodoc
class _$CodeHunterSignInStateCopyWithImpl<$Res>
    extends _$HunterSignInStateCopyWithImpl<$Res>
    implements $CodeHunterSignInStateCopyWith<$Res> {
  _$CodeHunterSignInStateCopyWithImpl(
      CodeHunterSignInState _value, $Res Function(CodeHunterSignInState) _then)
      : super(_value, (v) => _then(v as CodeHunterSignInState));

  @override
  CodeHunterSignInState get _value => super._value as CodeHunterSignInState;

  @override
  $Res call({
    Object? code = freezed,
    Object? statusB = freezed,
  }) {
    return _then(CodeHunterSignInState(
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

class _$CodeHunterSignInState implements CodeHunterSignInState {
  const _$CodeHunterSignInState({required this.code, required this.statusB});

  @override
  final Texts code;
  @override
  final FormzStatus statusB;

  @override
  String toString() {
    return 'HunterSignInState.codeState(code: $code, statusB: $statusB)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CodeHunterSignInState &&
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
  $CodeHunterSignInStateCopyWith<CodeHunterSignInState> get copyWith =>
      _$CodeHunterSignInStateCopyWithImpl<CodeHunterSignInState>(
          this, _$identity);

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
    required TResult Function(InitialHunterSignInState value) initial,
    required TResult Function(TelephoneHunterSignInState value) telephoneState,
    required TResult Function(CodeHunterSignInState value) codeState,
    required TResult Function(SuccessHunterSignInState value) successSignIn,
  }) {
    return codeState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHunterSignInState value)? initial,
    TResult Function(TelephoneHunterSignInState value)? telephoneState,
    TResult Function(CodeHunterSignInState value)? codeState,
    TResult Function(SuccessHunterSignInState value)? successSignIn,
    required TResult orElse(),
  }) {
    if (codeState != null) {
      return codeState(this);
    }
    return orElse();
  }
}

abstract class CodeHunterSignInState implements HunterSignInState {
  const factory CodeHunterSignInState(
      {required Texts code,
      required FormzStatus statusB}) = _$CodeHunterSignInState;

  Texts get code => throw _privateConstructorUsedError;
  FormzStatus get statusB => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeHunterSignInStateCopyWith<CodeHunterSignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessHunterSignInStateCopyWith<$Res> {
  factory $SuccessHunterSignInStateCopyWith(SuccessHunterSignInState value,
          $Res Function(SuccessHunterSignInState) then) =
      _$SuccessHunterSignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessHunterSignInStateCopyWithImpl<$Res>
    extends _$HunterSignInStateCopyWithImpl<$Res>
    implements $SuccessHunterSignInStateCopyWith<$Res> {
  _$SuccessHunterSignInStateCopyWithImpl(SuccessHunterSignInState _value,
      $Res Function(SuccessHunterSignInState) _then)
      : super(_value, (v) => _then(v as SuccessHunterSignInState));

  @override
  SuccessHunterSignInState get _value =>
      super._value as SuccessHunterSignInState;
}

/// @nodoc

class _$SuccessHunterSignInState implements SuccessHunterSignInState {
  const _$SuccessHunterSignInState();

  @override
  String toString() {
    return 'HunterSignInState.successSignIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SuccessHunterSignInState);
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
    required TResult Function(InitialHunterSignInState value) initial,
    required TResult Function(TelephoneHunterSignInState value) telephoneState,
    required TResult Function(CodeHunterSignInState value) codeState,
    required TResult Function(SuccessHunterSignInState value) successSignIn,
  }) {
    return successSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHunterSignInState value)? initial,
    TResult Function(TelephoneHunterSignInState value)? telephoneState,
    TResult Function(CodeHunterSignInState value)? codeState,
    TResult Function(SuccessHunterSignInState value)? successSignIn,
    required TResult orElse(),
  }) {
    if (successSignIn != null) {
      return successSignIn(this);
    }
    return orElse();
  }
}

abstract class SuccessHunterSignInState implements HunterSignInState {
  const factory SuccessHunterSignInState() = _$SuccessHunterSignInState;
}
