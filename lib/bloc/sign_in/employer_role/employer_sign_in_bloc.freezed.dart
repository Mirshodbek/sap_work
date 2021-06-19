// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'employer_sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EmployerSignInEventTearOff {
  const _$EmployerSignInEventTearOff();

  InitialEmployerSignInEvent initial() {
    return const InitialEmployerSignInEvent();
  }

  TelephoneChangedEmployerSignInEvent telephoneChanged({required Phone phone}) {
    return TelephoneChangedEmployerSignInEvent(
      phone: phone,
    );
  }

  TelephoneSubmittedEmployerSignInEvent telephoneSubmitted(
      {required Phone phone}) {
    return TelephoneSubmittedEmployerSignInEvent(
      phone: phone,
    );
  }

  CodeSubmittedEmployerSignInEvent codeSubmitted({required Texts code}) {
    return CodeSubmittedEmployerSignInEvent(
      code: code,
    );
  }
}

/// @nodoc
const $EmployerSignInEvent = _$EmployerSignInEventTearOff();

/// @nodoc
mixin _$EmployerSignInEvent {
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
    required TResult Function(InitialEmployerSignInEvent value) initial,
    required TResult Function(TelephoneChangedEmployerSignInEvent value)
        telephoneChanged,
    required TResult Function(TelephoneSubmittedEmployerSignInEvent value)
        telephoneSubmitted,
    required TResult Function(CodeSubmittedEmployerSignInEvent value)
        codeSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEmployerSignInEvent value)? initial,
    TResult Function(TelephoneChangedEmployerSignInEvent value)?
        telephoneChanged,
    TResult Function(TelephoneSubmittedEmployerSignInEvent value)?
        telephoneSubmitted,
    TResult Function(CodeSubmittedEmployerSignInEvent value)? codeSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployerSignInEventCopyWith<$Res> {
  factory $EmployerSignInEventCopyWith(
          EmployerSignInEvent value, $Res Function(EmployerSignInEvent) then) =
      _$EmployerSignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmployerSignInEventCopyWithImpl<$Res>
    implements $EmployerSignInEventCopyWith<$Res> {
  _$EmployerSignInEventCopyWithImpl(this._value, this._then);

  final EmployerSignInEvent _value;
  // ignore: unused_field
  final $Res Function(EmployerSignInEvent) _then;
}

/// @nodoc
abstract class $InitialEmployerSignInEventCopyWith<$Res> {
  factory $InitialEmployerSignInEventCopyWith(InitialEmployerSignInEvent value,
          $Res Function(InitialEmployerSignInEvent) then) =
      _$InitialEmployerSignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialEmployerSignInEventCopyWithImpl<$Res>
    extends _$EmployerSignInEventCopyWithImpl<$Res>
    implements $InitialEmployerSignInEventCopyWith<$Res> {
  _$InitialEmployerSignInEventCopyWithImpl(InitialEmployerSignInEvent _value,
      $Res Function(InitialEmployerSignInEvent) _then)
      : super(_value, (v) => _then(v as InitialEmployerSignInEvent));

  @override
  InitialEmployerSignInEvent get _value =>
      super._value as InitialEmployerSignInEvent;
}

/// @nodoc

class _$InitialEmployerSignInEvent implements InitialEmployerSignInEvent {
  const _$InitialEmployerSignInEvent();

  @override
  String toString() {
    return 'EmployerSignInEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialEmployerSignInEvent);
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
    required TResult Function(InitialEmployerSignInEvent value) initial,
    required TResult Function(TelephoneChangedEmployerSignInEvent value)
        telephoneChanged,
    required TResult Function(TelephoneSubmittedEmployerSignInEvent value)
        telephoneSubmitted,
    required TResult Function(CodeSubmittedEmployerSignInEvent value)
        codeSubmitted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEmployerSignInEvent value)? initial,
    TResult Function(TelephoneChangedEmployerSignInEvent value)?
        telephoneChanged,
    TResult Function(TelephoneSubmittedEmployerSignInEvent value)?
        telephoneSubmitted,
    TResult Function(CodeSubmittedEmployerSignInEvent value)? codeSubmitted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialEmployerSignInEvent implements EmployerSignInEvent {
  const factory InitialEmployerSignInEvent() = _$InitialEmployerSignInEvent;
}

/// @nodoc
abstract class $TelephoneChangedEmployerSignInEventCopyWith<$Res> {
  factory $TelephoneChangedEmployerSignInEventCopyWith(
          TelephoneChangedEmployerSignInEvent value,
          $Res Function(TelephoneChangedEmployerSignInEvent) then) =
      _$TelephoneChangedEmployerSignInEventCopyWithImpl<$Res>;
  $Res call({Phone phone});
}

/// @nodoc
class _$TelephoneChangedEmployerSignInEventCopyWithImpl<$Res>
    extends _$EmployerSignInEventCopyWithImpl<$Res>
    implements $TelephoneChangedEmployerSignInEventCopyWith<$Res> {
  _$TelephoneChangedEmployerSignInEventCopyWithImpl(
      TelephoneChangedEmployerSignInEvent _value,
      $Res Function(TelephoneChangedEmployerSignInEvent) _then)
      : super(_value, (v) => _then(v as TelephoneChangedEmployerSignInEvent));

  @override
  TelephoneChangedEmployerSignInEvent get _value =>
      super._value as TelephoneChangedEmployerSignInEvent;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(TelephoneChangedEmployerSignInEvent(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
    ));
  }
}

/// @nodoc

class _$TelephoneChangedEmployerSignInEvent
    implements TelephoneChangedEmployerSignInEvent {
  const _$TelephoneChangedEmployerSignInEvent({required this.phone});

  @override
  final Phone phone;

  @override
  String toString() {
    return 'EmployerSignInEvent.telephoneChanged(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TelephoneChangedEmployerSignInEvent &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  $TelephoneChangedEmployerSignInEventCopyWith<
          TelephoneChangedEmployerSignInEvent>
      get copyWith => _$TelephoneChangedEmployerSignInEventCopyWithImpl<
          TelephoneChangedEmployerSignInEvent>(this, _$identity);

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
    required TResult Function(InitialEmployerSignInEvent value) initial,
    required TResult Function(TelephoneChangedEmployerSignInEvent value)
        telephoneChanged,
    required TResult Function(TelephoneSubmittedEmployerSignInEvent value)
        telephoneSubmitted,
    required TResult Function(CodeSubmittedEmployerSignInEvent value)
        codeSubmitted,
  }) {
    return telephoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEmployerSignInEvent value)? initial,
    TResult Function(TelephoneChangedEmployerSignInEvent value)?
        telephoneChanged,
    TResult Function(TelephoneSubmittedEmployerSignInEvent value)?
        telephoneSubmitted,
    TResult Function(CodeSubmittedEmployerSignInEvent value)? codeSubmitted,
    required TResult orElse(),
  }) {
    if (telephoneChanged != null) {
      return telephoneChanged(this);
    }
    return orElse();
  }
}

abstract class TelephoneChangedEmployerSignInEvent
    implements EmployerSignInEvent {
  const factory TelephoneChangedEmployerSignInEvent({required Phone phone}) =
      _$TelephoneChangedEmployerSignInEvent;

  Phone get phone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TelephoneChangedEmployerSignInEventCopyWith<
          TelephoneChangedEmployerSignInEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelephoneSubmittedEmployerSignInEventCopyWith<$Res> {
  factory $TelephoneSubmittedEmployerSignInEventCopyWith(
          TelephoneSubmittedEmployerSignInEvent value,
          $Res Function(TelephoneSubmittedEmployerSignInEvent) then) =
      _$TelephoneSubmittedEmployerSignInEventCopyWithImpl<$Res>;
  $Res call({Phone phone});
}

/// @nodoc
class _$TelephoneSubmittedEmployerSignInEventCopyWithImpl<$Res>
    extends _$EmployerSignInEventCopyWithImpl<$Res>
    implements $TelephoneSubmittedEmployerSignInEventCopyWith<$Res> {
  _$TelephoneSubmittedEmployerSignInEventCopyWithImpl(
      TelephoneSubmittedEmployerSignInEvent _value,
      $Res Function(TelephoneSubmittedEmployerSignInEvent) _then)
      : super(_value, (v) => _then(v as TelephoneSubmittedEmployerSignInEvent));

  @override
  TelephoneSubmittedEmployerSignInEvent get _value =>
      super._value as TelephoneSubmittedEmployerSignInEvent;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(TelephoneSubmittedEmployerSignInEvent(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
    ));
  }
}

/// @nodoc

class _$TelephoneSubmittedEmployerSignInEvent
    implements TelephoneSubmittedEmployerSignInEvent {
  const _$TelephoneSubmittedEmployerSignInEvent({required this.phone});

  @override
  final Phone phone;

  @override
  String toString() {
    return 'EmployerSignInEvent.telephoneSubmitted(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TelephoneSubmittedEmployerSignInEvent &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  $TelephoneSubmittedEmployerSignInEventCopyWith<
          TelephoneSubmittedEmployerSignInEvent>
      get copyWith => _$TelephoneSubmittedEmployerSignInEventCopyWithImpl<
          TelephoneSubmittedEmployerSignInEvent>(this, _$identity);

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
    required TResult Function(InitialEmployerSignInEvent value) initial,
    required TResult Function(TelephoneChangedEmployerSignInEvent value)
        telephoneChanged,
    required TResult Function(TelephoneSubmittedEmployerSignInEvent value)
        telephoneSubmitted,
    required TResult Function(CodeSubmittedEmployerSignInEvent value)
        codeSubmitted,
  }) {
    return telephoneSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEmployerSignInEvent value)? initial,
    TResult Function(TelephoneChangedEmployerSignInEvent value)?
        telephoneChanged,
    TResult Function(TelephoneSubmittedEmployerSignInEvent value)?
        telephoneSubmitted,
    TResult Function(CodeSubmittedEmployerSignInEvent value)? codeSubmitted,
    required TResult orElse(),
  }) {
    if (telephoneSubmitted != null) {
      return telephoneSubmitted(this);
    }
    return orElse();
  }
}

abstract class TelephoneSubmittedEmployerSignInEvent
    implements EmployerSignInEvent {
  const factory TelephoneSubmittedEmployerSignInEvent({required Phone phone}) =
      _$TelephoneSubmittedEmployerSignInEvent;

  Phone get phone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TelephoneSubmittedEmployerSignInEventCopyWith<
          TelephoneSubmittedEmployerSignInEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeSubmittedEmployerSignInEventCopyWith<$Res> {
  factory $CodeSubmittedEmployerSignInEventCopyWith(
          CodeSubmittedEmployerSignInEvent value,
          $Res Function(CodeSubmittedEmployerSignInEvent) then) =
      _$CodeSubmittedEmployerSignInEventCopyWithImpl<$Res>;
  $Res call({Texts code});
}

/// @nodoc
class _$CodeSubmittedEmployerSignInEventCopyWithImpl<$Res>
    extends _$EmployerSignInEventCopyWithImpl<$Res>
    implements $CodeSubmittedEmployerSignInEventCopyWith<$Res> {
  _$CodeSubmittedEmployerSignInEventCopyWithImpl(
      CodeSubmittedEmployerSignInEvent _value,
      $Res Function(CodeSubmittedEmployerSignInEvent) _then)
      : super(_value, (v) => _then(v as CodeSubmittedEmployerSignInEvent));

  @override
  CodeSubmittedEmployerSignInEvent get _value =>
      super._value as CodeSubmittedEmployerSignInEvent;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(CodeSubmittedEmployerSignInEvent(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as Texts,
    ));
  }
}

/// @nodoc

class _$CodeSubmittedEmployerSignInEvent
    implements CodeSubmittedEmployerSignInEvent {
  const _$CodeSubmittedEmployerSignInEvent({required this.code});

  @override
  final Texts code;

  @override
  String toString() {
    return 'EmployerSignInEvent.codeSubmitted(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CodeSubmittedEmployerSignInEvent &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  $CodeSubmittedEmployerSignInEventCopyWith<CodeSubmittedEmployerSignInEvent>
      get copyWith => _$CodeSubmittedEmployerSignInEventCopyWithImpl<
          CodeSubmittedEmployerSignInEvent>(this, _$identity);

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
    required TResult Function(InitialEmployerSignInEvent value) initial,
    required TResult Function(TelephoneChangedEmployerSignInEvent value)
        telephoneChanged,
    required TResult Function(TelephoneSubmittedEmployerSignInEvent value)
        telephoneSubmitted,
    required TResult Function(CodeSubmittedEmployerSignInEvent value)
        codeSubmitted,
  }) {
    return codeSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEmployerSignInEvent value)? initial,
    TResult Function(TelephoneChangedEmployerSignInEvent value)?
        telephoneChanged,
    TResult Function(TelephoneSubmittedEmployerSignInEvent value)?
        telephoneSubmitted,
    TResult Function(CodeSubmittedEmployerSignInEvent value)? codeSubmitted,
    required TResult orElse(),
  }) {
    if (codeSubmitted != null) {
      return codeSubmitted(this);
    }
    return orElse();
  }
}

abstract class CodeSubmittedEmployerSignInEvent implements EmployerSignInEvent {
  const factory CodeSubmittedEmployerSignInEvent({required Texts code}) =
      _$CodeSubmittedEmployerSignInEvent;

  Texts get code => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeSubmittedEmployerSignInEventCopyWith<CodeSubmittedEmployerSignInEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$EmployerSignInStateTearOff {
  const _$EmployerSignInStateTearOff();

  InitialEmployerSignInState initial() {
    return const InitialEmployerSignInState();
  }

  TelephoneEmployerSignInState telephoneState(
      {required Phone phone, required FormzStatus statusA}) {
    return TelephoneEmployerSignInState(
      phone: phone,
      statusA: statusA,
    );
  }

  CodeEmployerSignInState codeState(
      {required Texts code, required FormzStatus statusB}) {
    return CodeEmployerSignInState(
      code: code,
      statusB: statusB,
    );
  }

  SuccessEmployerSignInState successSignIn() {
    return const SuccessEmployerSignInState();
  }
}

/// @nodoc
const $EmployerSignInState = _$EmployerSignInStateTearOff();

/// @nodoc
mixin _$EmployerSignInState {
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
    required TResult Function(InitialEmployerSignInState value) initial,
    required TResult Function(TelephoneEmployerSignInState value)
        telephoneState,
    required TResult Function(CodeEmployerSignInState value) codeState,
    required TResult Function(SuccessEmployerSignInState value) successSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEmployerSignInState value)? initial,
    TResult Function(TelephoneEmployerSignInState value)? telephoneState,
    TResult Function(CodeEmployerSignInState value)? codeState,
    TResult Function(SuccessEmployerSignInState value)? successSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployerSignInStateCopyWith<$Res> {
  factory $EmployerSignInStateCopyWith(
          EmployerSignInState value, $Res Function(EmployerSignInState) then) =
      _$EmployerSignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmployerSignInStateCopyWithImpl<$Res>
    implements $EmployerSignInStateCopyWith<$Res> {
  _$EmployerSignInStateCopyWithImpl(this._value, this._then);

  final EmployerSignInState _value;
  // ignore: unused_field
  final $Res Function(EmployerSignInState) _then;
}

/// @nodoc
abstract class $InitialEmployerSignInStateCopyWith<$Res> {
  factory $InitialEmployerSignInStateCopyWith(InitialEmployerSignInState value,
          $Res Function(InitialEmployerSignInState) then) =
      _$InitialEmployerSignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialEmployerSignInStateCopyWithImpl<$Res>
    extends _$EmployerSignInStateCopyWithImpl<$Res>
    implements $InitialEmployerSignInStateCopyWith<$Res> {
  _$InitialEmployerSignInStateCopyWithImpl(InitialEmployerSignInState _value,
      $Res Function(InitialEmployerSignInState) _then)
      : super(_value, (v) => _then(v as InitialEmployerSignInState));

  @override
  InitialEmployerSignInState get _value =>
      super._value as InitialEmployerSignInState;
}

/// @nodoc

class _$InitialEmployerSignInState implements InitialEmployerSignInState {
  const _$InitialEmployerSignInState();

  @override
  String toString() {
    return 'EmployerSignInState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialEmployerSignInState);
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
    required TResult Function(InitialEmployerSignInState value) initial,
    required TResult Function(TelephoneEmployerSignInState value)
        telephoneState,
    required TResult Function(CodeEmployerSignInState value) codeState,
    required TResult Function(SuccessEmployerSignInState value) successSignIn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEmployerSignInState value)? initial,
    TResult Function(TelephoneEmployerSignInState value)? telephoneState,
    TResult Function(CodeEmployerSignInState value)? codeState,
    TResult Function(SuccessEmployerSignInState value)? successSignIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialEmployerSignInState implements EmployerSignInState {
  const factory InitialEmployerSignInState() = _$InitialEmployerSignInState;
}

/// @nodoc
abstract class $TelephoneEmployerSignInStateCopyWith<$Res> {
  factory $TelephoneEmployerSignInStateCopyWith(
          TelephoneEmployerSignInState value,
          $Res Function(TelephoneEmployerSignInState) then) =
      _$TelephoneEmployerSignInStateCopyWithImpl<$Res>;
  $Res call({Phone phone, FormzStatus statusA});
}

/// @nodoc
class _$TelephoneEmployerSignInStateCopyWithImpl<$Res>
    extends _$EmployerSignInStateCopyWithImpl<$Res>
    implements $TelephoneEmployerSignInStateCopyWith<$Res> {
  _$TelephoneEmployerSignInStateCopyWithImpl(
      TelephoneEmployerSignInState _value,
      $Res Function(TelephoneEmployerSignInState) _then)
      : super(_value, (v) => _then(v as TelephoneEmployerSignInState));

  @override
  TelephoneEmployerSignInState get _value =>
      super._value as TelephoneEmployerSignInState;

  @override
  $Res call({
    Object? phone = freezed,
    Object? statusA = freezed,
  }) {
    return _then(TelephoneEmployerSignInState(
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

class _$TelephoneEmployerSignInState implements TelephoneEmployerSignInState {
  const _$TelephoneEmployerSignInState(
      {required this.phone, required this.statusA});

  @override
  final Phone phone;
  @override
  final FormzStatus statusA;

  @override
  String toString() {
    return 'EmployerSignInState.telephoneState(phone: $phone, statusA: $statusA)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TelephoneEmployerSignInState &&
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
  $TelephoneEmployerSignInStateCopyWith<TelephoneEmployerSignInState>
      get copyWith => _$TelephoneEmployerSignInStateCopyWithImpl<
          TelephoneEmployerSignInState>(this, _$identity);

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
    required TResult Function(InitialEmployerSignInState value) initial,
    required TResult Function(TelephoneEmployerSignInState value)
        telephoneState,
    required TResult Function(CodeEmployerSignInState value) codeState,
    required TResult Function(SuccessEmployerSignInState value) successSignIn,
  }) {
    return telephoneState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEmployerSignInState value)? initial,
    TResult Function(TelephoneEmployerSignInState value)? telephoneState,
    TResult Function(CodeEmployerSignInState value)? codeState,
    TResult Function(SuccessEmployerSignInState value)? successSignIn,
    required TResult orElse(),
  }) {
    if (telephoneState != null) {
      return telephoneState(this);
    }
    return orElse();
  }
}

abstract class TelephoneEmployerSignInState implements EmployerSignInState {
  const factory TelephoneEmployerSignInState(
      {required Phone phone,
      required FormzStatus statusA}) = _$TelephoneEmployerSignInState;

  Phone get phone => throw _privateConstructorUsedError;
  FormzStatus get statusA => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TelephoneEmployerSignInStateCopyWith<TelephoneEmployerSignInState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeEmployerSignInStateCopyWith<$Res> {
  factory $CodeEmployerSignInStateCopyWith(CodeEmployerSignInState value,
          $Res Function(CodeEmployerSignInState) then) =
      _$CodeEmployerSignInStateCopyWithImpl<$Res>;
  $Res call({Texts code, FormzStatus statusB});
}

/// @nodoc
class _$CodeEmployerSignInStateCopyWithImpl<$Res>
    extends _$EmployerSignInStateCopyWithImpl<$Res>
    implements $CodeEmployerSignInStateCopyWith<$Res> {
  _$CodeEmployerSignInStateCopyWithImpl(CodeEmployerSignInState _value,
      $Res Function(CodeEmployerSignInState) _then)
      : super(_value, (v) => _then(v as CodeEmployerSignInState));

  @override
  CodeEmployerSignInState get _value => super._value as CodeEmployerSignInState;

  @override
  $Res call({
    Object? code = freezed,
    Object? statusB = freezed,
  }) {
    return _then(CodeEmployerSignInState(
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

class _$CodeEmployerSignInState implements CodeEmployerSignInState {
  const _$CodeEmployerSignInState({required this.code, required this.statusB});

  @override
  final Texts code;
  @override
  final FormzStatus statusB;

  @override
  String toString() {
    return 'EmployerSignInState.codeState(code: $code, statusB: $statusB)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CodeEmployerSignInState &&
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
  $CodeEmployerSignInStateCopyWith<CodeEmployerSignInState> get copyWith =>
      _$CodeEmployerSignInStateCopyWithImpl<CodeEmployerSignInState>(
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
    required TResult Function(InitialEmployerSignInState value) initial,
    required TResult Function(TelephoneEmployerSignInState value)
        telephoneState,
    required TResult Function(CodeEmployerSignInState value) codeState,
    required TResult Function(SuccessEmployerSignInState value) successSignIn,
  }) {
    return codeState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEmployerSignInState value)? initial,
    TResult Function(TelephoneEmployerSignInState value)? telephoneState,
    TResult Function(CodeEmployerSignInState value)? codeState,
    TResult Function(SuccessEmployerSignInState value)? successSignIn,
    required TResult orElse(),
  }) {
    if (codeState != null) {
      return codeState(this);
    }
    return orElse();
  }
}

abstract class CodeEmployerSignInState implements EmployerSignInState {
  const factory CodeEmployerSignInState(
      {required Texts code,
      required FormzStatus statusB}) = _$CodeEmployerSignInState;

  Texts get code => throw _privateConstructorUsedError;
  FormzStatus get statusB => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeEmployerSignInStateCopyWith<CodeEmployerSignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessEmployerSignInStateCopyWith<$Res> {
  factory $SuccessEmployerSignInStateCopyWith(SuccessEmployerSignInState value,
          $Res Function(SuccessEmployerSignInState) then) =
      _$SuccessEmployerSignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessEmployerSignInStateCopyWithImpl<$Res>
    extends _$EmployerSignInStateCopyWithImpl<$Res>
    implements $SuccessEmployerSignInStateCopyWith<$Res> {
  _$SuccessEmployerSignInStateCopyWithImpl(SuccessEmployerSignInState _value,
      $Res Function(SuccessEmployerSignInState) _then)
      : super(_value, (v) => _then(v as SuccessEmployerSignInState));

  @override
  SuccessEmployerSignInState get _value =>
      super._value as SuccessEmployerSignInState;
}

/// @nodoc

class _$SuccessEmployerSignInState implements SuccessEmployerSignInState {
  const _$SuccessEmployerSignInState();

  @override
  String toString() {
    return 'EmployerSignInState.successSignIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SuccessEmployerSignInState);
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
    required TResult Function(InitialEmployerSignInState value) initial,
    required TResult Function(TelephoneEmployerSignInState value)
        telephoneState,
    required TResult Function(CodeEmployerSignInState value) codeState,
    required TResult Function(SuccessEmployerSignInState value) successSignIn,
  }) {
    return successSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEmployerSignInState value)? initial,
    TResult Function(TelephoneEmployerSignInState value)? telephoneState,
    TResult Function(CodeEmployerSignInState value)? codeState,
    TResult Function(SuccessEmployerSignInState value)? successSignIn,
    required TResult orElse(),
  }) {
    if (successSignIn != null) {
      return successSignIn(this);
    }
    return orElse();
  }
}

abstract class SuccessEmployerSignInState implements EmployerSignInState {
  const factory SuccessEmployerSignInState() = _$SuccessEmployerSignInState;
}
