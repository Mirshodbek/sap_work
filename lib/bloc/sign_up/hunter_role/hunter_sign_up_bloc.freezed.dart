// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'hunter_sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HunterSignUpEventTearOff {
  const _$HunterSignUpEventTearOff();

  _InitialHunterSignUpEvent initial() {
    return const _InitialHunterSignUpEvent();
  }

  _ProfessionEventHunterSignUpEvent professionEvent({required Texts prof}) {
    return _ProfessionEventHunterSignUpEvent(
      prof: prof,
    );
  }

  _HunterEventHunterSignUpEvent hunterEvent(
      {required Texts name, required Phone phone, required Texts prof}) {
    return _HunterEventHunterSignUpEvent(
      name: name,
      phone: phone,
      prof: prof,
    );
  }
}

/// @nodoc
const $HunterSignUpEvent = _$HunterSignUpEventTearOff();

/// @nodoc
mixin _$HunterSignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Texts prof) professionEvent,
    required TResult Function(Texts name, Phone phone, Texts prof) hunterEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Texts prof)? professionEvent,
    TResult Function(Texts name, Phone phone, Texts prof)? hunterEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHunterSignUpEvent value) initial,
    required TResult Function(_ProfessionEventHunterSignUpEvent value)
        professionEvent,
    required TResult Function(_HunterEventHunterSignUpEvent value) hunterEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHunterSignUpEvent value)? initial,
    TResult Function(_ProfessionEventHunterSignUpEvent value)? professionEvent,
    TResult Function(_HunterEventHunterSignUpEvent value)? hunterEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HunterSignUpEventCopyWith<$Res> {
  factory $HunterSignUpEventCopyWith(
          HunterSignUpEvent value, $Res Function(HunterSignUpEvent) then) =
      _$HunterSignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HunterSignUpEventCopyWithImpl<$Res>
    implements $HunterSignUpEventCopyWith<$Res> {
  _$HunterSignUpEventCopyWithImpl(this._value, this._then);

  final HunterSignUpEvent _value;
  // ignore: unused_field
  final $Res Function(HunterSignUpEvent) _then;
}

/// @nodoc
abstract class _$InitialHunterSignUpEventCopyWith<$Res> {
  factory _$InitialHunterSignUpEventCopyWith(_InitialHunterSignUpEvent value,
          $Res Function(_InitialHunterSignUpEvent) then) =
      __$InitialHunterSignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialHunterSignUpEventCopyWithImpl<$Res>
    extends _$HunterSignUpEventCopyWithImpl<$Res>
    implements _$InitialHunterSignUpEventCopyWith<$Res> {
  __$InitialHunterSignUpEventCopyWithImpl(_InitialHunterSignUpEvent _value,
      $Res Function(_InitialHunterSignUpEvent) _then)
      : super(_value, (v) => _then(v as _InitialHunterSignUpEvent));

  @override
  _InitialHunterSignUpEvent get _value =>
      super._value as _InitialHunterSignUpEvent;
}

/// @nodoc

class _$_InitialHunterSignUpEvent implements _InitialHunterSignUpEvent {
  const _$_InitialHunterSignUpEvent();

  @override
  String toString() {
    return 'HunterSignUpEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialHunterSignUpEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Texts prof) professionEvent,
    required TResult Function(Texts name, Phone phone, Texts prof) hunterEvent,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Texts prof)? professionEvent,
    TResult Function(Texts name, Phone phone, Texts prof)? hunterEvent,
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
    required TResult Function(_InitialHunterSignUpEvent value) initial,
    required TResult Function(_ProfessionEventHunterSignUpEvent value)
        professionEvent,
    required TResult Function(_HunterEventHunterSignUpEvent value) hunterEvent,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHunterSignUpEvent value)? initial,
    TResult Function(_ProfessionEventHunterSignUpEvent value)? professionEvent,
    TResult Function(_HunterEventHunterSignUpEvent value)? hunterEvent,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialHunterSignUpEvent implements HunterSignUpEvent {
  const factory _InitialHunterSignUpEvent() = _$_InitialHunterSignUpEvent;
}

/// @nodoc
abstract class _$ProfessionEventHunterSignUpEventCopyWith<$Res> {
  factory _$ProfessionEventHunterSignUpEventCopyWith(
          _ProfessionEventHunterSignUpEvent value,
          $Res Function(_ProfessionEventHunterSignUpEvent) then) =
      __$ProfessionEventHunterSignUpEventCopyWithImpl<$Res>;
  $Res call({Texts prof});
}

/// @nodoc
class __$ProfessionEventHunterSignUpEventCopyWithImpl<$Res>
    extends _$HunterSignUpEventCopyWithImpl<$Res>
    implements _$ProfessionEventHunterSignUpEventCopyWith<$Res> {
  __$ProfessionEventHunterSignUpEventCopyWithImpl(
      _ProfessionEventHunterSignUpEvent _value,
      $Res Function(_ProfessionEventHunterSignUpEvent) _then)
      : super(_value, (v) => _then(v as _ProfessionEventHunterSignUpEvent));

  @override
  _ProfessionEventHunterSignUpEvent get _value =>
      super._value as _ProfessionEventHunterSignUpEvent;

  @override
  $Res call({
    Object? prof = freezed,
  }) {
    return _then(_ProfessionEventHunterSignUpEvent(
      prof: prof == freezed
          ? _value.prof
          : prof // ignore: cast_nullable_to_non_nullable
              as Texts,
    ));
  }
}

/// @nodoc

class _$_ProfessionEventHunterSignUpEvent
    implements _ProfessionEventHunterSignUpEvent {
  const _$_ProfessionEventHunterSignUpEvent({required this.prof});

  @override
  final Texts prof;

  @override
  String toString() {
    return 'HunterSignUpEvent.professionEvent(prof: $prof)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfessionEventHunterSignUpEvent &&
            (identical(other.prof, prof) ||
                const DeepCollectionEquality().equals(other.prof, prof)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(prof);

  @JsonKey(ignore: true)
  @override
  _$ProfessionEventHunterSignUpEventCopyWith<_ProfessionEventHunterSignUpEvent>
      get copyWith => __$ProfessionEventHunterSignUpEventCopyWithImpl<
          _ProfessionEventHunterSignUpEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Texts prof) professionEvent,
    required TResult Function(Texts name, Phone phone, Texts prof) hunterEvent,
  }) {
    return professionEvent(prof);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Texts prof)? professionEvent,
    TResult Function(Texts name, Phone phone, Texts prof)? hunterEvent,
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
    required TResult Function(_InitialHunterSignUpEvent value) initial,
    required TResult Function(_ProfessionEventHunterSignUpEvent value)
        professionEvent,
    required TResult Function(_HunterEventHunterSignUpEvent value) hunterEvent,
  }) {
    return professionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHunterSignUpEvent value)? initial,
    TResult Function(_ProfessionEventHunterSignUpEvent value)? professionEvent,
    TResult Function(_HunterEventHunterSignUpEvent value)? hunterEvent,
    required TResult orElse(),
  }) {
    if (professionEvent != null) {
      return professionEvent(this);
    }
    return orElse();
  }
}

abstract class _ProfessionEventHunterSignUpEvent implements HunterSignUpEvent {
  const factory _ProfessionEventHunterSignUpEvent({required Texts prof}) =
      _$_ProfessionEventHunterSignUpEvent;

  Texts get prof => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ProfessionEventHunterSignUpEventCopyWith<_ProfessionEventHunterSignUpEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HunterEventHunterSignUpEventCopyWith<$Res> {
  factory _$HunterEventHunterSignUpEventCopyWith(
          _HunterEventHunterSignUpEvent value,
          $Res Function(_HunterEventHunterSignUpEvent) then) =
      __$HunterEventHunterSignUpEventCopyWithImpl<$Res>;
  $Res call({Texts name, Phone phone, Texts prof});
}

/// @nodoc
class __$HunterEventHunterSignUpEventCopyWithImpl<$Res>
    extends _$HunterSignUpEventCopyWithImpl<$Res>
    implements _$HunterEventHunterSignUpEventCopyWith<$Res> {
  __$HunterEventHunterSignUpEventCopyWithImpl(
      _HunterEventHunterSignUpEvent _value,
      $Res Function(_HunterEventHunterSignUpEvent) _then)
      : super(_value, (v) => _then(v as _HunterEventHunterSignUpEvent));

  @override
  _HunterEventHunterSignUpEvent get _value =>
      super._value as _HunterEventHunterSignUpEvent;

  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? prof = freezed,
  }) {
    return _then(_HunterEventHunterSignUpEvent(
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

class _$_HunterEventHunterSignUpEvent implements _HunterEventHunterSignUpEvent {
  const _$_HunterEventHunterSignUpEvent(
      {required this.name, required this.phone, required this.prof});

  @override
  final Texts name;
  @override
  final Phone phone;
  @override
  final Texts prof;

  @override
  String toString() {
    return 'HunterSignUpEvent.hunterEvent(name: $name, phone: $phone, prof: $prof)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HunterEventHunterSignUpEvent &&
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
  _$HunterEventHunterSignUpEventCopyWith<_HunterEventHunterSignUpEvent>
      get copyWith => __$HunterEventHunterSignUpEventCopyWithImpl<
          _HunterEventHunterSignUpEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Texts prof) professionEvent,
    required TResult Function(Texts name, Phone phone, Texts prof) hunterEvent,
  }) {
    return hunterEvent(name, phone, prof);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Texts prof)? professionEvent,
    TResult Function(Texts name, Phone phone, Texts prof)? hunterEvent,
    required TResult orElse(),
  }) {
    if (hunterEvent != null) {
      return hunterEvent(name, phone, prof);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHunterSignUpEvent value) initial,
    required TResult Function(_ProfessionEventHunterSignUpEvent value)
        professionEvent,
    required TResult Function(_HunterEventHunterSignUpEvent value) hunterEvent,
  }) {
    return hunterEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHunterSignUpEvent value)? initial,
    TResult Function(_ProfessionEventHunterSignUpEvent value)? professionEvent,
    TResult Function(_HunterEventHunterSignUpEvent value)? hunterEvent,
    required TResult orElse(),
  }) {
    if (hunterEvent != null) {
      return hunterEvent(this);
    }
    return orElse();
  }
}

abstract class _HunterEventHunterSignUpEvent implements HunterSignUpEvent {
  const factory _HunterEventHunterSignUpEvent(
      {required Texts name,
      required Phone phone,
      required Texts prof}) = _$_HunterEventHunterSignUpEvent;

  Texts get name => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;
  Texts get prof => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HunterEventHunterSignUpEventCopyWith<_HunterEventHunterSignUpEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$HunterSignUpStateTearOff {
  const _$HunterSignUpStateTearOff();

  _InitialHunterSignUpState initial() {
    return const _InitialHunterSignUpState();
  }

  _HunterStateHunterSignUpState hunterState(
      {required Texts name,
      required Phone phone,
      required Texts prof,
      required FormzStatus status}) {
    return _HunterStateHunterSignUpState(
      name: name,
      phone: phone,
      prof: prof,
      status: status,
    );
  }

  _SuccessSignUpHunterSignUpState successSignUp() {
    return const _SuccessSignUpHunterSignUpState();
  }
}

/// @nodoc
const $HunterSignUpState = _$HunterSignUpStateTearOff();

/// @nodoc
mixin _$HunterSignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Texts name, Phone phone, Texts prof, FormzStatus status)
        hunterState,
    required TResult Function() successSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Texts name, Phone phone, Texts prof, FormzStatus status)?
        hunterState,
    TResult Function()? successSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHunterSignUpState value) initial,
    required TResult Function(_HunterStateHunterSignUpState value) hunterState,
    required TResult Function(_SuccessSignUpHunterSignUpState value)
        successSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHunterSignUpState value)? initial,
    TResult Function(_HunterStateHunterSignUpState value)? hunterState,
    TResult Function(_SuccessSignUpHunterSignUpState value)? successSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HunterSignUpStateCopyWith<$Res> {
  factory $HunterSignUpStateCopyWith(
          HunterSignUpState value, $Res Function(HunterSignUpState) then) =
      _$HunterSignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HunterSignUpStateCopyWithImpl<$Res>
    implements $HunterSignUpStateCopyWith<$Res> {
  _$HunterSignUpStateCopyWithImpl(this._value, this._then);

  final HunterSignUpState _value;
  // ignore: unused_field
  final $Res Function(HunterSignUpState) _then;
}

/// @nodoc
abstract class _$InitialHunterSignUpStateCopyWith<$Res> {
  factory _$InitialHunterSignUpStateCopyWith(_InitialHunterSignUpState value,
          $Res Function(_InitialHunterSignUpState) then) =
      __$InitialHunterSignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialHunterSignUpStateCopyWithImpl<$Res>
    extends _$HunterSignUpStateCopyWithImpl<$Res>
    implements _$InitialHunterSignUpStateCopyWith<$Res> {
  __$InitialHunterSignUpStateCopyWithImpl(_InitialHunterSignUpState _value,
      $Res Function(_InitialHunterSignUpState) _then)
      : super(_value, (v) => _then(v as _InitialHunterSignUpState));

  @override
  _InitialHunterSignUpState get _value =>
      super._value as _InitialHunterSignUpState;
}

/// @nodoc

class _$_InitialHunterSignUpState implements _InitialHunterSignUpState {
  const _$_InitialHunterSignUpState();

  @override
  String toString() {
    return 'HunterSignUpState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialHunterSignUpState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Texts name, Phone phone, Texts prof, FormzStatus status)
        hunterState,
    required TResult Function() successSignUp,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Texts name, Phone phone, Texts prof, FormzStatus status)?
        hunterState,
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
    required TResult Function(_InitialHunterSignUpState value) initial,
    required TResult Function(_HunterStateHunterSignUpState value) hunterState,
    required TResult Function(_SuccessSignUpHunterSignUpState value)
        successSignUp,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHunterSignUpState value)? initial,
    TResult Function(_HunterStateHunterSignUpState value)? hunterState,
    TResult Function(_SuccessSignUpHunterSignUpState value)? successSignUp,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialHunterSignUpState implements HunterSignUpState {
  const factory _InitialHunterSignUpState() = _$_InitialHunterSignUpState;
}

/// @nodoc
abstract class _$HunterStateHunterSignUpStateCopyWith<$Res> {
  factory _$HunterStateHunterSignUpStateCopyWith(
          _HunterStateHunterSignUpState value,
          $Res Function(_HunterStateHunterSignUpState) then) =
      __$HunterStateHunterSignUpStateCopyWithImpl<$Res>;
  $Res call({Texts name, Phone phone, Texts prof, FormzStatus status});
}

/// @nodoc
class __$HunterStateHunterSignUpStateCopyWithImpl<$Res>
    extends _$HunterSignUpStateCopyWithImpl<$Res>
    implements _$HunterStateHunterSignUpStateCopyWith<$Res> {
  __$HunterStateHunterSignUpStateCopyWithImpl(
      _HunterStateHunterSignUpState _value,
      $Res Function(_HunterStateHunterSignUpState) _then)
      : super(_value, (v) => _then(v as _HunterStateHunterSignUpState));

  @override
  _HunterStateHunterSignUpState get _value =>
      super._value as _HunterStateHunterSignUpState;

  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? prof = freezed,
    Object? status = freezed,
  }) {
    return _then(_HunterStateHunterSignUpState(
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

class _$_HunterStateHunterSignUpState implements _HunterStateHunterSignUpState {
  const _$_HunterStateHunterSignUpState(
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
    return 'HunterSignUpState.hunterState(name: $name, phone: $phone, prof: $prof, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HunterStateHunterSignUpState &&
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
  _$HunterStateHunterSignUpStateCopyWith<_HunterStateHunterSignUpState>
      get copyWith => __$HunterStateHunterSignUpStateCopyWithImpl<
          _HunterStateHunterSignUpState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Texts name, Phone phone, Texts prof, FormzStatus status)
        hunterState,
    required TResult Function() successSignUp,
  }) {
    return hunterState(name, phone, prof, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Texts name, Phone phone, Texts prof, FormzStatus status)?
        hunterState,
    TResult Function()? successSignUp,
    required TResult orElse(),
  }) {
    if (hunterState != null) {
      return hunterState(name, phone, prof, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHunterSignUpState value) initial,
    required TResult Function(_HunterStateHunterSignUpState value) hunterState,
    required TResult Function(_SuccessSignUpHunterSignUpState value)
        successSignUp,
  }) {
    return hunterState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHunterSignUpState value)? initial,
    TResult Function(_HunterStateHunterSignUpState value)? hunterState,
    TResult Function(_SuccessSignUpHunterSignUpState value)? successSignUp,
    required TResult orElse(),
  }) {
    if (hunterState != null) {
      return hunterState(this);
    }
    return orElse();
  }
}

abstract class _HunterStateHunterSignUpState implements HunterSignUpState {
  const factory _HunterStateHunterSignUpState(
      {required Texts name,
      required Phone phone,
      required Texts prof,
      required FormzStatus status}) = _$_HunterStateHunterSignUpState;

  Texts get name => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;
  Texts get prof => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HunterStateHunterSignUpStateCopyWith<_HunterStateHunterSignUpState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SuccessSignUpHunterSignUpStateCopyWith<$Res> {
  factory _$SuccessSignUpHunterSignUpStateCopyWith(
          _SuccessSignUpHunterSignUpState value,
          $Res Function(_SuccessSignUpHunterSignUpState) then) =
      __$SuccessSignUpHunterSignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessSignUpHunterSignUpStateCopyWithImpl<$Res>
    extends _$HunterSignUpStateCopyWithImpl<$Res>
    implements _$SuccessSignUpHunterSignUpStateCopyWith<$Res> {
  __$SuccessSignUpHunterSignUpStateCopyWithImpl(
      _SuccessSignUpHunterSignUpState _value,
      $Res Function(_SuccessSignUpHunterSignUpState) _then)
      : super(_value, (v) => _then(v as _SuccessSignUpHunterSignUpState));

  @override
  _SuccessSignUpHunterSignUpState get _value =>
      super._value as _SuccessSignUpHunterSignUpState;
}

/// @nodoc

class _$_SuccessSignUpHunterSignUpState
    implements _SuccessSignUpHunterSignUpState {
  const _$_SuccessSignUpHunterSignUpState();

  @override
  String toString() {
    return 'HunterSignUpState.successSignUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SuccessSignUpHunterSignUpState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Texts name, Phone phone, Texts prof, FormzStatus status)
        hunterState,
    required TResult Function() successSignUp,
  }) {
    return successSignUp();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Texts name, Phone phone, Texts prof, FormzStatus status)?
        hunterState,
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
    required TResult Function(_InitialHunterSignUpState value) initial,
    required TResult Function(_HunterStateHunterSignUpState value) hunterState,
    required TResult Function(_SuccessSignUpHunterSignUpState value)
        successSignUp,
  }) {
    return successSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHunterSignUpState value)? initial,
    TResult Function(_HunterStateHunterSignUpState value)? hunterState,
    TResult Function(_SuccessSignUpHunterSignUpState value)? successSignUp,
    required TResult orElse(),
  }) {
    if (successSignUp != null) {
      return successSignUp(this);
    }
    return orElse();
  }
}

abstract class _SuccessSignUpHunterSignUpState implements HunterSignUpState {
  const factory _SuccessSignUpHunterSignUpState() =
      _$_SuccessSignUpHunterSignUpState;
}
