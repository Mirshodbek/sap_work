// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserSignUpEventTearOff {
  const _$UserSignUpEventTearOff();

  _InitialUserSignUpEvent initial() {
    return const _InitialUserSignUpEvent();
  }

  _ProfessionEventUserSignUpEvent professionEvent({required Texts prof}) {
    return _ProfessionEventUserSignUpEvent(
      prof: prof,
    );
  }

  _HunterEventUserSignUpEvent userEvent(
      {required Texts name, required Phone phone, required Texts prof}) {
    return _HunterEventUserSignUpEvent(
      name: name,
      phone: phone,
      prof: prof,
    );
  }
}

/// @nodoc
const $UserSignUpEvent = _$UserSignUpEventTearOff();

/// @nodoc
mixin _$UserSignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Texts prof) professionEvent,
    required TResult Function(Texts name, Phone phone, Texts prof) userEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Texts prof)? professionEvent,
    TResult Function(Texts name, Phone phone, Texts prof)? userEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserSignUpEvent value) initial,
    required TResult Function(_ProfessionEventUserSignUpEvent value)
        professionEvent,
    required TResult Function(_HunterEventUserSignUpEvent value) userEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserSignUpEvent value)? initial,
    TResult Function(_ProfessionEventUserSignUpEvent value)? professionEvent,
    TResult Function(_HunterEventUserSignUpEvent value)? userEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSignUpEventCopyWith<$Res> {
  factory $UserSignUpEventCopyWith(
          UserSignUpEvent value, $Res Function(UserSignUpEvent) then) =
      _$UserSignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSignUpEventCopyWithImpl<$Res>
    implements $UserSignUpEventCopyWith<$Res> {
  _$UserSignUpEventCopyWithImpl(this._value, this._then);

  final UserSignUpEvent _value;
  // ignore: unused_field
  final $Res Function(UserSignUpEvent) _then;
}

/// @nodoc
abstract class _$InitialUserSignUpEventCopyWith<$Res> {
  factory _$InitialUserSignUpEventCopyWith(_InitialUserSignUpEvent value,
          $Res Function(_InitialUserSignUpEvent) then) =
      __$InitialUserSignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialUserSignUpEventCopyWithImpl<$Res>
    extends _$UserSignUpEventCopyWithImpl<$Res>
    implements _$InitialUserSignUpEventCopyWith<$Res> {
  __$InitialUserSignUpEventCopyWithImpl(_InitialUserSignUpEvent _value,
      $Res Function(_InitialUserSignUpEvent) _then)
      : super(_value, (v) => _then(v as _InitialUserSignUpEvent));

  @override
  _InitialUserSignUpEvent get _value => super._value as _InitialUserSignUpEvent;
}

/// @nodoc

class _$_InitialUserSignUpEvent implements _InitialUserSignUpEvent {
  const _$_InitialUserSignUpEvent();

  @override
  String toString() {
    return 'UserSignUpEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialUserSignUpEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Texts prof) professionEvent,
    required TResult Function(Texts name, Phone phone, Texts prof) userEvent,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Texts prof)? professionEvent,
    TResult Function(Texts name, Phone phone, Texts prof)? userEvent,
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
    required TResult Function(_InitialUserSignUpEvent value) initial,
    required TResult Function(_ProfessionEventUserSignUpEvent value)
        professionEvent,
    required TResult Function(_HunterEventUserSignUpEvent value) userEvent,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserSignUpEvent value)? initial,
    TResult Function(_ProfessionEventUserSignUpEvent value)? professionEvent,
    TResult Function(_HunterEventUserSignUpEvent value)? userEvent,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialUserSignUpEvent implements UserSignUpEvent {
  const factory _InitialUserSignUpEvent() = _$_InitialUserSignUpEvent;
}

/// @nodoc
abstract class _$ProfessionEventUserSignUpEventCopyWith<$Res> {
  factory _$ProfessionEventUserSignUpEventCopyWith(
          _ProfessionEventUserSignUpEvent value,
          $Res Function(_ProfessionEventUserSignUpEvent) then) =
      __$ProfessionEventUserSignUpEventCopyWithImpl<$Res>;
  $Res call({Texts prof});
}

/// @nodoc
class __$ProfessionEventUserSignUpEventCopyWithImpl<$Res>
    extends _$UserSignUpEventCopyWithImpl<$Res>
    implements _$ProfessionEventUserSignUpEventCopyWith<$Res> {
  __$ProfessionEventUserSignUpEventCopyWithImpl(
      _ProfessionEventUserSignUpEvent _value,
      $Res Function(_ProfessionEventUserSignUpEvent) _then)
      : super(_value, (v) => _then(v as _ProfessionEventUserSignUpEvent));

  @override
  _ProfessionEventUserSignUpEvent get _value =>
      super._value as _ProfessionEventUserSignUpEvent;

  @override
  $Res call({
    Object? prof = freezed,
  }) {
    return _then(_ProfessionEventUserSignUpEvent(
      prof: prof == freezed
          ? _value.prof
          : prof // ignore: cast_nullable_to_non_nullable
              as Texts,
    ));
  }
}

/// @nodoc

class _$_ProfessionEventUserSignUpEvent
    implements _ProfessionEventUserSignUpEvent {
  const _$_ProfessionEventUserSignUpEvent({required this.prof});

  @override
  final Texts prof;

  @override
  String toString() {
    return 'UserSignUpEvent.professionEvent(prof: $prof)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfessionEventUserSignUpEvent &&
            (identical(other.prof, prof) ||
                const DeepCollectionEquality().equals(other.prof, prof)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(prof);

  @JsonKey(ignore: true)
  @override
  _$ProfessionEventUserSignUpEventCopyWith<_ProfessionEventUserSignUpEvent>
      get copyWith => __$ProfessionEventUserSignUpEventCopyWithImpl<
          _ProfessionEventUserSignUpEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Texts prof) professionEvent,
    required TResult Function(Texts name, Phone phone, Texts prof) userEvent,
  }) {
    return professionEvent(prof);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Texts prof)? professionEvent,
    TResult Function(Texts name, Phone phone, Texts prof)? userEvent,
    required TResult orElse(),
  }) {
    if (professionEvent != null) {
      return professionEvent(prof);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserSignUpEvent value) initial,
    required TResult Function(_ProfessionEventUserSignUpEvent value)
        professionEvent,
    required TResult Function(_HunterEventUserSignUpEvent value) userEvent,
  }) {
    return professionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserSignUpEvent value)? initial,
    TResult Function(_ProfessionEventUserSignUpEvent value)? professionEvent,
    TResult Function(_HunterEventUserSignUpEvent value)? userEvent,
    required TResult orElse(),
  }) {
    if (professionEvent != null) {
      return professionEvent(this);
    }
    return orElse();
  }
}

abstract class _ProfessionEventUserSignUpEvent implements UserSignUpEvent {
  const factory _ProfessionEventUserSignUpEvent({required Texts prof}) =
      _$_ProfessionEventUserSignUpEvent;

  Texts get prof => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ProfessionEventUserSignUpEventCopyWith<_ProfessionEventUserSignUpEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HunterEventUserSignUpEventCopyWith<$Res> {
  factory _$HunterEventUserSignUpEventCopyWith(
          _HunterEventUserSignUpEvent value,
          $Res Function(_HunterEventUserSignUpEvent) then) =
      __$HunterEventUserSignUpEventCopyWithImpl<$Res>;
  $Res call({Texts name, Phone phone, Texts prof});
}

/// @nodoc
class __$HunterEventUserSignUpEventCopyWithImpl<$Res>
    extends _$UserSignUpEventCopyWithImpl<$Res>
    implements _$HunterEventUserSignUpEventCopyWith<$Res> {
  __$HunterEventUserSignUpEventCopyWithImpl(_HunterEventUserSignUpEvent _value,
      $Res Function(_HunterEventUserSignUpEvent) _then)
      : super(_value, (v) => _then(v as _HunterEventUserSignUpEvent));

  @override
  _HunterEventUserSignUpEvent get _value =>
      super._value as _HunterEventUserSignUpEvent;

  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? prof = freezed,
  }) {
    return _then(_HunterEventUserSignUpEvent(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Texts,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      prof: prof == freezed
          ? _value.prof
          : prof // ignore: cast_nullable_to_non_nullable
              as Texts,
    ));
  }
}

/// @nodoc

class _$_HunterEventUserSignUpEvent implements _HunterEventUserSignUpEvent {
  const _$_HunterEventUserSignUpEvent(
      {required this.name, required this.phone, required this.prof});

  @override
  final Texts name;
  @override
  final Phone phone;
  @override
  final Texts prof;

  @override
  String toString() {
    return 'UserSignUpEvent.userEvent(name: $name, phone: $phone, prof: $prof)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HunterEventUserSignUpEvent &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.prof, prof) ||
                const DeepCollectionEquality().equals(other.prof, prof)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(prof);

  @JsonKey(ignore: true)
  @override
  _$HunterEventUserSignUpEventCopyWith<_HunterEventUserSignUpEvent>
      get copyWith => __$HunterEventUserSignUpEventCopyWithImpl<
          _HunterEventUserSignUpEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Texts prof) professionEvent,
    required TResult Function(Texts name, Phone phone, Texts prof) userEvent,
  }) {
    return userEvent(name, phone, prof);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Texts prof)? professionEvent,
    TResult Function(Texts name, Phone phone, Texts prof)? userEvent,
    required TResult orElse(),
  }) {
    if (userEvent != null) {
      return userEvent(name, phone, prof);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserSignUpEvent value) initial,
    required TResult Function(_ProfessionEventUserSignUpEvent value)
        professionEvent,
    required TResult Function(_HunterEventUserSignUpEvent value) userEvent,
  }) {
    return userEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserSignUpEvent value)? initial,
    TResult Function(_ProfessionEventUserSignUpEvent value)? professionEvent,
    TResult Function(_HunterEventUserSignUpEvent value)? userEvent,
    required TResult orElse(),
  }) {
    if (userEvent != null) {
      return userEvent(this);
    }
    return orElse();
  }
}

abstract class _HunterEventUserSignUpEvent implements UserSignUpEvent {
  const factory _HunterEventUserSignUpEvent(
      {required Texts name,
      required Phone phone,
      required Texts prof}) = _$_HunterEventUserSignUpEvent;

  Texts get name => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;
  Texts get prof => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HunterEventUserSignUpEventCopyWith<_HunterEventUserSignUpEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserSignUpStateTearOff {
  const _$UserSignUpStateTearOff();

  _InitialUserSignUpState initial() {
    return const _InitialUserSignUpState();
  }

  _HunterStateUserSignUpState userState(
      {required Texts name,
      required Phone phone,
      required Texts prof,
      required FormzStatus status}) {
    return _HunterStateUserSignUpState(
      name: name,
      phone: phone,
      prof: prof,
      status: status,
    );
  }

  _SuccessSignUpUserSignUpState successSignUp() {
    return const _SuccessSignUpUserSignUpState();
  }
}

/// @nodoc
const $UserSignUpState = _$UserSignUpStateTearOff();

/// @nodoc
mixin _$UserSignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Texts name, Phone phone, Texts prof, FormzStatus status)
        userState,
    required TResult Function() successSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Texts name, Phone phone, Texts prof, FormzStatus status)?
        userState,
    TResult Function()? successSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserSignUpState value) initial,
    required TResult Function(_HunterStateUserSignUpState value) userState,
    required TResult Function(_SuccessSignUpUserSignUpState value)
        successSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserSignUpState value)? initial,
    TResult Function(_HunterStateUserSignUpState value)? userState,
    TResult Function(_SuccessSignUpUserSignUpState value)? successSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSignUpStateCopyWith<$Res> {
  factory $UserSignUpStateCopyWith(
          UserSignUpState value, $Res Function(UserSignUpState) then) =
      _$UserSignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSignUpStateCopyWithImpl<$Res>
    implements $UserSignUpStateCopyWith<$Res> {
  _$UserSignUpStateCopyWithImpl(this._value, this._then);

  final UserSignUpState _value;
  // ignore: unused_field
  final $Res Function(UserSignUpState) _then;
}

/// @nodoc
abstract class _$InitialUserSignUpStateCopyWith<$Res> {
  factory _$InitialUserSignUpStateCopyWith(_InitialUserSignUpState value,
          $Res Function(_InitialUserSignUpState) then) =
      __$InitialUserSignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialUserSignUpStateCopyWithImpl<$Res>
    extends _$UserSignUpStateCopyWithImpl<$Res>
    implements _$InitialUserSignUpStateCopyWith<$Res> {
  __$InitialUserSignUpStateCopyWithImpl(_InitialUserSignUpState _value,
      $Res Function(_InitialUserSignUpState) _then)
      : super(_value, (v) => _then(v as _InitialUserSignUpState));

  @override
  _InitialUserSignUpState get _value => super._value as _InitialUserSignUpState;
}

/// @nodoc

class _$_InitialUserSignUpState implements _InitialUserSignUpState {
  const _$_InitialUserSignUpState();

  @override
  String toString() {
    return 'UserSignUpState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialUserSignUpState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Texts name, Phone phone, Texts prof, FormzStatus status)
        userState,
    required TResult Function() successSignUp,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Texts name, Phone phone, Texts prof, FormzStatus status)?
        userState,
    TResult Function()? successSignUp,
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
    required TResult Function(_InitialUserSignUpState value) initial,
    required TResult Function(_HunterStateUserSignUpState value) userState,
    required TResult Function(_SuccessSignUpUserSignUpState value)
        successSignUp,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserSignUpState value)? initial,
    TResult Function(_HunterStateUserSignUpState value)? userState,
    TResult Function(_SuccessSignUpUserSignUpState value)? successSignUp,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialUserSignUpState implements UserSignUpState {
  const factory _InitialUserSignUpState() = _$_InitialUserSignUpState;
}

/// @nodoc
abstract class _$HunterStateUserSignUpStateCopyWith<$Res> {
  factory _$HunterStateUserSignUpStateCopyWith(
          _HunterStateUserSignUpState value,
          $Res Function(_HunterStateUserSignUpState) then) =
      __$HunterStateUserSignUpStateCopyWithImpl<$Res>;
  $Res call({Texts name, Phone phone, Texts prof, FormzStatus status});
}

/// @nodoc
class __$HunterStateUserSignUpStateCopyWithImpl<$Res>
    extends _$UserSignUpStateCopyWithImpl<$Res>
    implements _$HunterStateUserSignUpStateCopyWith<$Res> {
  __$HunterStateUserSignUpStateCopyWithImpl(_HunterStateUserSignUpState _value,
      $Res Function(_HunterStateUserSignUpState) _then)
      : super(_value, (v) => _then(v as _HunterStateUserSignUpState));

  @override
  _HunterStateUserSignUpState get _value =>
      super._value as _HunterStateUserSignUpState;

  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? prof = freezed,
    Object? status = freezed,
  }) {
    return _then(_HunterStateUserSignUpState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Texts,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      prof: prof == freezed
          ? _value.prof
          : prof // ignore: cast_nullable_to_non_nullable
              as Texts,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$_HunterStateUserSignUpState implements _HunterStateUserSignUpState {
  const _$_HunterStateUserSignUpState(
      {required this.name,
      required this.phone,
      required this.prof,
      required this.status});

  @override
  final Texts name;
  @override
  final Phone phone;
  @override
  final Texts prof;
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'UserSignUpState.userState(name: $name, phone: $phone, prof: $prof, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HunterStateUserSignUpState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.prof, prof) ||
                const DeepCollectionEquality().equals(other.prof, prof)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(prof) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$HunterStateUserSignUpStateCopyWith<_HunterStateUserSignUpState>
      get copyWith => __$HunterStateUserSignUpStateCopyWithImpl<
          _HunterStateUserSignUpState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Texts name, Phone phone, Texts prof, FormzStatus status)
        userState,
    required TResult Function() successSignUp,
  }) {
    return userState(name, phone, prof, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Texts name, Phone phone, Texts prof, FormzStatus status)?
        userState,
    TResult Function()? successSignUp,
    required TResult orElse(),
  }) {
    if (userState != null) {
      return userState(name, phone, prof, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserSignUpState value) initial,
    required TResult Function(_HunterStateUserSignUpState value) userState,
    required TResult Function(_SuccessSignUpUserSignUpState value)
        successSignUp,
  }) {
    return userState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserSignUpState value)? initial,
    TResult Function(_HunterStateUserSignUpState value)? userState,
    TResult Function(_SuccessSignUpUserSignUpState value)? successSignUp,
    required TResult orElse(),
  }) {
    if (userState != null) {
      return userState(this);
    }
    return orElse();
  }
}

abstract class _HunterStateUserSignUpState implements UserSignUpState {
  const factory _HunterStateUserSignUpState(
      {required Texts name,
      required Phone phone,
      required Texts prof,
      required FormzStatus status}) = _$_HunterStateUserSignUpState;

  Texts get name => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;
  Texts get prof => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HunterStateUserSignUpStateCopyWith<_HunterStateUserSignUpState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SuccessSignUpUserSignUpStateCopyWith<$Res> {
  factory _$SuccessSignUpUserSignUpStateCopyWith(
          _SuccessSignUpUserSignUpState value,
          $Res Function(_SuccessSignUpUserSignUpState) then) =
      __$SuccessSignUpUserSignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessSignUpUserSignUpStateCopyWithImpl<$Res>
    extends _$UserSignUpStateCopyWithImpl<$Res>
    implements _$SuccessSignUpUserSignUpStateCopyWith<$Res> {
  __$SuccessSignUpUserSignUpStateCopyWithImpl(
      _SuccessSignUpUserSignUpState _value,
      $Res Function(_SuccessSignUpUserSignUpState) _then)
      : super(_value, (v) => _then(v as _SuccessSignUpUserSignUpState));

  @override
  _SuccessSignUpUserSignUpState get _value =>
      super._value as _SuccessSignUpUserSignUpState;
}

/// @nodoc

class _$_SuccessSignUpUserSignUpState implements _SuccessSignUpUserSignUpState {
  const _$_SuccessSignUpUserSignUpState();

  @override
  String toString() {
    return 'UserSignUpState.successSignUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SuccessSignUpUserSignUpState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Texts name, Phone phone, Texts prof, FormzStatus status)
        userState,
    required TResult Function() successSignUp,
  }) {
    return successSignUp();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Texts name, Phone phone, Texts prof, FormzStatus status)?
        userState,
    TResult Function()? successSignUp,
    required TResult orElse(),
  }) {
    if (successSignUp != null) {
      return successSignUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserSignUpState value) initial,
    required TResult Function(_HunterStateUserSignUpState value) userState,
    required TResult Function(_SuccessSignUpUserSignUpState value)
        successSignUp,
  }) {
    return successSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserSignUpState value)? initial,
    TResult Function(_HunterStateUserSignUpState value)? userState,
    TResult Function(_SuccessSignUpUserSignUpState value)? successSignUp,
    required TResult orElse(),
  }) {
    if (successSignUp != null) {
      return successSignUp(this);
    }
    return orElse();
  }
}

abstract class _SuccessSignUpUserSignUpState implements UserSignUpState {
  const factory _SuccessSignUpUserSignUpState() =
      _$_SuccessSignUpUserSignUpState;
}
