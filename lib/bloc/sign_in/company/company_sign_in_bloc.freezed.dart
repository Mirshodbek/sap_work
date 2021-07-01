// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'company_sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CompanySignInEventTearOff {
  const _$CompanySignInEventTearOff();

  InitialCompanySignInEvent initial() {
    return const InitialCompanySignInEvent();
  }

  TelephoneChangedCompanySignInEvent telephoneChanged({required Phone phone}) {
    return TelephoneChangedCompanySignInEvent(
      phone: phone,
    );
  }

  TelephoneSubmittedCompanySignInEvent telephoneSubmitted(
      {required Phone phone}) {
    return TelephoneSubmittedCompanySignInEvent(
      phone: phone,
    );
  }

  CodeSubmittedCompanySignInEvent codeSubmitted({required Texts code}) {
    return CodeSubmittedCompanySignInEvent(
      code: code,
    );
  }
}

/// @nodoc
const $CompanySignInEvent = _$CompanySignInEventTearOff();

/// @nodoc
mixin _$CompanySignInEvent {
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
    required TResult Function(InitialCompanySignInEvent value) initial,
    required TResult Function(TelephoneChangedCompanySignInEvent value)
        telephoneChanged,
    required TResult Function(TelephoneSubmittedCompanySignInEvent value)
        telephoneSubmitted,
    required TResult Function(CodeSubmittedCompanySignInEvent value)
        codeSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCompanySignInEvent value)? initial,
    TResult Function(TelephoneChangedCompanySignInEvent value)?
        telephoneChanged,
    TResult Function(TelephoneSubmittedCompanySignInEvent value)?
        telephoneSubmitted,
    TResult Function(CodeSubmittedCompanySignInEvent value)? codeSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanySignInEventCopyWith<$Res> {
  factory $CompanySignInEventCopyWith(
          CompanySignInEvent value, $Res Function(CompanySignInEvent) then) =
      _$CompanySignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CompanySignInEventCopyWithImpl<$Res>
    implements $CompanySignInEventCopyWith<$Res> {
  _$CompanySignInEventCopyWithImpl(this._value, this._then);

  final CompanySignInEvent _value;
  // ignore: unused_field
  final $Res Function(CompanySignInEvent) _then;
}

/// @nodoc
abstract class $InitialCompanySignInEventCopyWith<$Res> {
  factory $InitialCompanySignInEventCopyWith(InitialCompanySignInEvent value,
          $Res Function(InitialCompanySignInEvent) then) =
      _$InitialCompanySignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCompanySignInEventCopyWithImpl<$Res>
    extends _$CompanySignInEventCopyWithImpl<$Res>
    implements $InitialCompanySignInEventCopyWith<$Res> {
  _$InitialCompanySignInEventCopyWithImpl(InitialCompanySignInEvent _value,
      $Res Function(InitialCompanySignInEvent) _then)
      : super(_value, (v) => _then(v as InitialCompanySignInEvent));

  @override
  InitialCompanySignInEvent get _value =>
      super._value as InitialCompanySignInEvent;
}

/// @nodoc

class _$InitialCompanySignInEvent implements InitialCompanySignInEvent {
  const _$InitialCompanySignInEvent();

  @override
  String toString() {
    return 'CompanySignInEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialCompanySignInEvent);
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
    required TResult Function(InitialCompanySignInEvent value) initial,
    required TResult Function(TelephoneChangedCompanySignInEvent value)
        telephoneChanged,
    required TResult Function(TelephoneSubmittedCompanySignInEvent value)
        telephoneSubmitted,
    required TResult Function(CodeSubmittedCompanySignInEvent value)
        codeSubmitted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCompanySignInEvent value)? initial,
    TResult Function(TelephoneChangedCompanySignInEvent value)?
        telephoneChanged,
    TResult Function(TelephoneSubmittedCompanySignInEvent value)?
        telephoneSubmitted,
    TResult Function(CodeSubmittedCompanySignInEvent value)? codeSubmitted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialCompanySignInEvent implements CompanySignInEvent {
  const factory InitialCompanySignInEvent() = _$InitialCompanySignInEvent;
}

/// @nodoc
abstract class $TelephoneChangedCompanySignInEventCopyWith<$Res> {
  factory $TelephoneChangedCompanySignInEventCopyWith(
          TelephoneChangedCompanySignInEvent value,
          $Res Function(TelephoneChangedCompanySignInEvent) then) =
      _$TelephoneChangedCompanySignInEventCopyWithImpl<$Res>;
  $Res call({Phone phone});
}

/// @nodoc
class _$TelephoneChangedCompanySignInEventCopyWithImpl<$Res>
    extends _$CompanySignInEventCopyWithImpl<$Res>
    implements $TelephoneChangedCompanySignInEventCopyWith<$Res> {
  _$TelephoneChangedCompanySignInEventCopyWithImpl(
      TelephoneChangedCompanySignInEvent _value,
      $Res Function(TelephoneChangedCompanySignInEvent) _then)
      : super(_value, (v) => _then(v as TelephoneChangedCompanySignInEvent));

  @override
  TelephoneChangedCompanySignInEvent get _value =>
      super._value as TelephoneChangedCompanySignInEvent;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(TelephoneChangedCompanySignInEvent(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
    ));
  }
}

/// @nodoc

class _$TelephoneChangedCompanySignInEvent
    implements TelephoneChangedCompanySignInEvent {
  const _$TelephoneChangedCompanySignInEvent({required this.phone});

  @override
  final Phone phone;

  @override
  String toString() {
    return 'CompanySignInEvent.telephoneChanged(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TelephoneChangedCompanySignInEvent &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  $TelephoneChangedCompanySignInEventCopyWith<
          TelephoneChangedCompanySignInEvent>
      get copyWith => _$TelephoneChangedCompanySignInEventCopyWithImpl<
          TelephoneChangedCompanySignInEvent>(this, _$identity);

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
    required TResult Function(InitialCompanySignInEvent value) initial,
    required TResult Function(TelephoneChangedCompanySignInEvent value)
        telephoneChanged,
    required TResult Function(TelephoneSubmittedCompanySignInEvent value)
        telephoneSubmitted,
    required TResult Function(CodeSubmittedCompanySignInEvent value)
        codeSubmitted,
  }) {
    return telephoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCompanySignInEvent value)? initial,
    TResult Function(TelephoneChangedCompanySignInEvent value)?
        telephoneChanged,
    TResult Function(TelephoneSubmittedCompanySignInEvent value)?
        telephoneSubmitted,
    TResult Function(CodeSubmittedCompanySignInEvent value)? codeSubmitted,
    required TResult orElse(),
  }) {
    if (telephoneChanged != null) {
      return telephoneChanged(this);
    }
    return orElse();
  }
}

abstract class TelephoneChangedCompanySignInEvent
    implements CompanySignInEvent {
  const factory TelephoneChangedCompanySignInEvent({required Phone phone}) =
      _$TelephoneChangedCompanySignInEvent;

  Phone get phone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TelephoneChangedCompanySignInEventCopyWith<
          TelephoneChangedCompanySignInEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelephoneSubmittedCompanySignInEventCopyWith<$Res> {
  factory $TelephoneSubmittedCompanySignInEventCopyWith(
          TelephoneSubmittedCompanySignInEvent value,
          $Res Function(TelephoneSubmittedCompanySignInEvent) then) =
      _$TelephoneSubmittedCompanySignInEventCopyWithImpl<$Res>;
  $Res call({Phone phone});
}

/// @nodoc
class _$TelephoneSubmittedCompanySignInEventCopyWithImpl<$Res>
    extends _$CompanySignInEventCopyWithImpl<$Res>
    implements $TelephoneSubmittedCompanySignInEventCopyWith<$Res> {
  _$TelephoneSubmittedCompanySignInEventCopyWithImpl(
      TelephoneSubmittedCompanySignInEvent _value,
      $Res Function(TelephoneSubmittedCompanySignInEvent) _then)
      : super(_value, (v) => _then(v as TelephoneSubmittedCompanySignInEvent));

  @override
  TelephoneSubmittedCompanySignInEvent get _value =>
      super._value as TelephoneSubmittedCompanySignInEvent;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(TelephoneSubmittedCompanySignInEvent(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
    ));
  }
}

/// @nodoc

class _$TelephoneSubmittedCompanySignInEvent
    implements TelephoneSubmittedCompanySignInEvent {
  const _$TelephoneSubmittedCompanySignInEvent({required this.phone});

  @override
  final Phone phone;

  @override
  String toString() {
    return 'CompanySignInEvent.telephoneSubmitted(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TelephoneSubmittedCompanySignInEvent &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  $TelephoneSubmittedCompanySignInEventCopyWith<
          TelephoneSubmittedCompanySignInEvent>
      get copyWith => _$TelephoneSubmittedCompanySignInEventCopyWithImpl<
          TelephoneSubmittedCompanySignInEvent>(this, _$identity);

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
    required TResult Function(InitialCompanySignInEvent value) initial,
    required TResult Function(TelephoneChangedCompanySignInEvent value)
        telephoneChanged,
    required TResult Function(TelephoneSubmittedCompanySignInEvent value)
        telephoneSubmitted,
    required TResult Function(CodeSubmittedCompanySignInEvent value)
        codeSubmitted,
  }) {
    return telephoneSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCompanySignInEvent value)? initial,
    TResult Function(TelephoneChangedCompanySignInEvent value)?
        telephoneChanged,
    TResult Function(TelephoneSubmittedCompanySignInEvent value)?
        telephoneSubmitted,
    TResult Function(CodeSubmittedCompanySignInEvent value)? codeSubmitted,
    required TResult orElse(),
  }) {
    if (telephoneSubmitted != null) {
      return telephoneSubmitted(this);
    }
    return orElse();
  }
}

abstract class TelephoneSubmittedCompanySignInEvent
    implements CompanySignInEvent {
  const factory TelephoneSubmittedCompanySignInEvent({required Phone phone}) =
      _$TelephoneSubmittedCompanySignInEvent;

  Phone get phone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TelephoneSubmittedCompanySignInEventCopyWith<
          TelephoneSubmittedCompanySignInEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeSubmittedCompanySignInEventCopyWith<$Res> {
  factory $CodeSubmittedCompanySignInEventCopyWith(
          CodeSubmittedCompanySignInEvent value,
          $Res Function(CodeSubmittedCompanySignInEvent) then) =
      _$CodeSubmittedCompanySignInEventCopyWithImpl<$Res>;
  $Res call({Texts code});
}

/// @nodoc
class _$CodeSubmittedCompanySignInEventCopyWithImpl<$Res>
    extends _$CompanySignInEventCopyWithImpl<$Res>
    implements $CodeSubmittedCompanySignInEventCopyWith<$Res> {
  _$CodeSubmittedCompanySignInEventCopyWithImpl(
      CodeSubmittedCompanySignInEvent _value,
      $Res Function(CodeSubmittedCompanySignInEvent) _then)
      : super(_value, (v) => _then(v as CodeSubmittedCompanySignInEvent));

  @override
  CodeSubmittedCompanySignInEvent get _value =>
      super._value as CodeSubmittedCompanySignInEvent;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(CodeSubmittedCompanySignInEvent(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as Texts,
    ));
  }
}

/// @nodoc

class _$CodeSubmittedCompanySignInEvent
    implements CodeSubmittedCompanySignInEvent {
  const _$CodeSubmittedCompanySignInEvent({required this.code});

  @override
  final Texts code;

  @override
  String toString() {
    return 'CompanySignInEvent.codeSubmitted(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CodeSubmittedCompanySignInEvent &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  $CodeSubmittedCompanySignInEventCopyWith<CodeSubmittedCompanySignInEvent>
      get copyWith => _$CodeSubmittedCompanySignInEventCopyWithImpl<
          CodeSubmittedCompanySignInEvent>(this, _$identity);

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
    required TResult Function(InitialCompanySignInEvent value) initial,
    required TResult Function(TelephoneChangedCompanySignInEvent value)
        telephoneChanged,
    required TResult Function(TelephoneSubmittedCompanySignInEvent value)
        telephoneSubmitted,
    required TResult Function(CodeSubmittedCompanySignInEvent value)
        codeSubmitted,
  }) {
    return codeSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCompanySignInEvent value)? initial,
    TResult Function(TelephoneChangedCompanySignInEvent value)?
        telephoneChanged,
    TResult Function(TelephoneSubmittedCompanySignInEvent value)?
        telephoneSubmitted,
    TResult Function(CodeSubmittedCompanySignInEvent value)? codeSubmitted,
    required TResult orElse(),
  }) {
    if (codeSubmitted != null) {
      return codeSubmitted(this);
    }
    return orElse();
  }
}

abstract class CodeSubmittedCompanySignInEvent implements CompanySignInEvent {
  const factory CodeSubmittedCompanySignInEvent({required Texts code}) =
      _$CodeSubmittedCompanySignInEvent;

  Texts get code => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeSubmittedCompanySignInEventCopyWith<CodeSubmittedCompanySignInEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CompanySignInStateTearOff {
  const _$CompanySignInStateTearOff();

  InitialCompanySignInState initial() {
    return const InitialCompanySignInState();
  }

  TelephoneCompanySignInState telephoneState(
      {required Phone phone, required FormzStatus statusA}) {
    return TelephoneCompanySignInState(
      phone: phone,
      statusA: statusA,
    );
  }

  CodeCompanySignInState codeState(
      {required Texts code, required FormzStatus statusB}) {
    return CodeCompanySignInState(
      code: code,
      statusB: statusB,
    );
  }

  SuccessCompanySignInState successSignIn() {
    return const SuccessCompanySignInState();
  }
}

/// @nodoc
const $CompanySignInState = _$CompanySignInStateTearOff();

/// @nodoc
mixin _$CompanySignInState {
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
    required TResult Function(InitialCompanySignInState value) initial,
    required TResult Function(TelephoneCompanySignInState value) telephoneState,
    required TResult Function(CodeCompanySignInState value) codeState,
    required TResult Function(SuccessCompanySignInState value) successSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCompanySignInState value)? initial,
    TResult Function(TelephoneCompanySignInState value)? telephoneState,
    TResult Function(CodeCompanySignInState value)? codeState,
    TResult Function(SuccessCompanySignInState value)? successSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanySignInStateCopyWith<$Res> {
  factory $CompanySignInStateCopyWith(
          CompanySignInState value, $Res Function(CompanySignInState) then) =
      _$CompanySignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CompanySignInStateCopyWithImpl<$Res>
    implements $CompanySignInStateCopyWith<$Res> {
  _$CompanySignInStateCopyWithImpl(this._value, this._then);

  final CompanySignInState _value;
  // ignore: unused_field
  final $Res Function(CompanySignInState) _then;
}

/// @nodoc
abstract class $InitialCompanySignInStateCopyWith<$Res> {
  factory $InitialCompanySignInStateCopyWith(InitialCompanySignInState value,
          $Res Function(InitialCompanySignInState) then) =
      _$InitialCompanySignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCompanySignInStateCopyWithImpl<$Res>
    extends _$CompanySignInStateCopyWithImpl<$Res>
    implements $InitialCompanySignInStateCopyWith<$Res> {
  _$InitialCompanySignInStateCopyWithImpl(InitialCompanySignInState _value,
      $Res Function(InitialCompanySignInState) _then)
      : super(_value, (v) => _then(v as InitialCompanySignInState));

  @override
  InitialCompanySignInState get _value =>
      super._value as InitialCompanySignInState;
}

/// @nodoc

class _$InitialCompanySignInState implements InitialCompanySignInState {
  const _$InitialCompanySignInState();

  @override
  String toString() {
    return 'CompanySignInState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialCompanySignInState);
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
    required TResult Function(InitialCompanySignInState value) initial,
    required TResult Function(TelephoneCompanySignInState value) telephoneState,
    required TResult Function(CodeCompanySignInState value) codeState,
    required TResult Function(SuccessCompanySignInState value) successSignIn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCompanySignInState value)? initial,
    TResult Function(TelephoneCompanySignInState value)? telephoneState,
    TResult Function(CodeCompanySignInState value)? codeState,
    TResult Function(SuccessCompanySignInState value)? successSignIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialCompanySignInState implements CompanySignInState {
  const factory InitialCompanySignInState() = _$InitialCompanySignInState;
}

/// @nodoc
abstract class $TelephoneCompanySignInStateCopyWith<$Res> {
  factory $TelephoneCompanySignInStateCopyWith(
          TelephoneCompanySignInState value,
          $Res Function(TelephoneCompanySignInState) then) =
      _$TelephoneCompanySignInStateCopyWithImpl<$Res>;
  $Res call({Phone phone, FormzStatus statusA});
}

/// @nodoc
class _$TelephoneCompanySignInStateCopyWithImpl<$Res>
    extends _$CompanySignInStateCopyWithImpl<$Res>
    implements $TelephoneCompanySignInStateCopyWith<$Res> {
  _$TelephoneCompanySignInStateCopyWithImpl(TelephoneCompanySignInState _value,
      $Res Function(TelephoneCompanySignInState) _then)
      : super(_value, (v) => _then(v as TelephoneCompanySignInState));

  @override
  TelephoneCompanySignInState get _value =>
      super._value as TelephoneCompanySignInState;

  @override
  $Res call({
    Object? phone = freezed,
    Object? statusA = freezed,
  }) {
    return _then(TelephoneCompanySignInState(
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

class _$TelephoneCompanySignInState implements TelephoneCompanySignInState {
  const _$TelephoneCompanySignInState(
      {required this.phone, required this.statusA});

  @override
  final Phone phone;
  @override
  final FormzStatus statusA;

  @override
  String toString() {
    return 'CompanySignInState.telephoneState(phone: $phone, statusA: $statusA)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TelephoneCompanySignInState &&
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
  $TelephoneCompanySignInStateCopyWith<TelephoneCompanySignInState>
      get copyWith => _$TelephoneCompanySignInStateCopyWithImpl<
          TelephoneCompanySignInState>(this, _$identity);

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
    required TResult Function(InitialCompanySignInState value) initial,
    required TResult Function(TelephoneCompanySignInState value) telephoneState,
    required TResult Function(CodeCompanySignInState value) codeState,
    required TResult Function(SuccessCompanySignInState value) successSignIn,
  }) {
    return telephoneState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCompanySignInState value)? initial,
    TResult Function(TelephoneCompanySignInState value)? telephoneState,
    TResult Function(CodeCompanySignInState value)? codeState,
    TResult Function(SuccessCompanySignInState value)? successSignIn,
    required TResult orElse(),
  }) {
    if (telephoneState != null) {
      return telephoneState(this);
    }
    return orElse();
  }
}

abstract class TelephoneCompanySignInState implements CompanySignInState {
  const factory TelephoneCompanySignInState(
      {required Phone phone,
      required FormzStatus statusA}) = _$TelephoneCompanySignInState;

  Phone get phone => throw _privateConstructorUsedError;
  FormzStatus get statusA => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TelephoneCompanySignInStateCopyWith<TelephoneCompanySignInState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeCompanySignInStateCopyWith<$Res> {
  factory $CodeCompanySignInStateCopyWith(CodeCompanySignInState value,
          $Res Function(CodeCompanySignInState) then) =
      _$CodeCompanySignInStateCopyWithImpl<$Res>;
  $Res call({Texts code, FormzStatus statusB});
}

/// @nodoc
class _$CodeCompanySignInStateCopyWithImpl<$Res>
    extends _$CompanySignInStateCopyWithImpl<$Res>
    implements $CodeCompanySignInStateCopyWith<$Res> {
  _$CodeCompanySignInStateCopyWithImpl(CodeCompanySignInState _value,
      $Res Function(CodeCompanySignInState) _then)
      : super(_value, (v) => _then(v as CodeCompanySignInState));

  @override
  CodeCompanySignInState get _value => super._value as CodeCompanySignInState;

  @override
  $Res call({
    Object? code = freezed,
    Object? statusB = freezed,
  }) {
    return _then(CodeCompanySignInState(
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

class _$CodeCompanySignInState implements CodeCompanySignInState {
  const _$CodeCompanySignInState({required this.code, required this.statusB});

  @override
  final Texts code;
  @override
  final FormzStatus statusB;

  @override
  String toString() {
    return 'CompanySignInState.codeState(code: $code, statusB: $statusB)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CodeCompanySignInState &&
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
  $CodeCompanySignInStateCopyWith<CodeCompanySignInState> get copyWith =>
      _$CodeCompanySignInStateCopyWithImpl<CodeCompanySignInState>(
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
    required TResult Function(InitialCompanySignInState value) initial,
    required TResult Function(TelephoneCompanySignInState value) telephoneState,
    required TResult Function(CodeCompanySignInState value) codeState,
    required TResult Function(SuccessCompanySignInState value) successSignIn,
  }) {
    return codeState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCompanySignInState value)? initial,
    TResult Function(TelephoneCompanySignInState value)? telephoneState,
    TResult Function(CodeCompanySignInState value)? codeState,
    TResult Function(SuccessCompanySignInState value)? successSignIn,
    required TResult orElse(),
  }) {
    if (codeState != null) {
      return codeState(this);
    }
    return orElse();
  }
}

abstract class CodeCompanySignInState implements CompanySignInState {
  const factory CodeCompanySignInState(
      {required Texts code,
      required FormzStatus statusB}) = _$CodeCompanySignInState;

  Texts get code => throw _privateConstructorUsedError;
  FormzStatus get statusB => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeCompanySignInStateCopyWith<CodeCompanySignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessCompanySignInStateCopyWith<$Res> {
  factory $SuccessCompanySignInStateCopyWith(SuccessCompanySignInState value,
          $Res Function(SuccessCompanySignInState) then) =
      _$SuccessCompanySignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessCompanySignInStateCopyWithImpl<$Res>
    extends _$CompanySignInStateCopyWithImpl<$Res>
    implements $SuccessCompanySignInStateCopyWith<$Res> {
  _$SuccessCompanySignInStateCopyWithImpl(SuccessCompanySignInState _value,
      $Res Function(SuccessCompanySignInState) _then)
      : super(_value, (v) => _then(v as SuccessCompanySignInState));

  @override
  SuccessCompanySignInState get _value =>
      super._value as SuccessCompanySignInState;
}

/// @nodoc

class _$SuccessCompanySignInState implements SuccessCompanySignInState {
  const _$SuccessCompanySignInState();

  @override
  String toString() {
    return 'CompanySignInState.successSignIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SuccessCompanySignInState);
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
    required TResult Function(InitialCompanySignInState value) initial,
    required TResult Function(TelephoneCompanySignInState value) telephoneState,
    required TResult Function(CodeCompanySignInState value) codeState,
    required TResult Function(SuccessCompanySignInState value) successSignIn,
  }) {
    return successSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCompanySignInState value)? initial,
    TResult Function(TelephoneCompanySignInState value)? telephoneState,
    TResult Function(CodeCompanySignInState value)? codeState,
    TResult Function(SuccessCompanySignInState value)? successSignIn,
    required TResult orElse(),
  }) {
    if (successSignIn != null) {
      return successSignIn(this);
    }
    return orElse();
  }
}

abstract class SuccessCompanySignInState implements CompanySignInState {
  const factory SuccessCompanySignInState() = _$SuccessCompanySignInState;
}
