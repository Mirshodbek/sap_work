// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileUserEventTearOff {
  const _$ProfileUserEventTearOff();

  _GetProfileUserEvent getProfileData() {
    return const _GetProfileUserEvent();
  }
}

/// @nodoc
const $ProfileUserEvent = _$ProfileUserEventTearOff();

/// @nodoc
mixin _$ProfileUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfileData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileUserEvent value) getProfileData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileUserEvent value)? getProfileData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileUserEventCopyWith<$Res> {
  factory $ProfileUserEventCopyWith(
          ProfileUserEvent value, $Res Function(ProfileUserEvent) then) =
      _$ProfileUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileUserEventCopyWithImpl<$Res>
    implements $ProfileUserEventCopyWith<$Res> {
  _$ProfileUserEventCopyWithImpl(this._value, this._then);

  final ProfileUserEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileUserEvent) _then;
}

/// @nodoc
abstract class _$GetProfileUserEventCopyWith<$Res> {
  factory _$GetProfileUserEventCopyWith(_GetProfileUserEvent value,
          $Res Function(_GetProfileUserEvent) then) =
      __$GetProfileUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetProfileUserEventCopyWithImpl<$Res>
    extends _$ProfileUserEventCopyWithImpl<$Res>
    implements _$GetProfileUserEventCopyWith<$Res> {
  __$GetProfileUserEventCopyWithImpl(
      _GetProfileUserEvent _value, $Res Function(_GetProfileUserEvent) _then)
      : super(_value, (v) => _then(v as _GetProfileUserEvent));

  @override
  _GetProfileUserEvent get _value => super._value as _GetProfileUserEvent;
}

/// @nodoc

class _$_GetProfileUserEvent implements _GetProfileUserEvent {
  const _$_GetProfileUserEvent();

  @override
  String toString() {
    return 'ProfileUserEvent.getProfileData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetProfileUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfileData,
  }) {
    return getProfileData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileData,
    required TResult orElse(),
  }) {
    if (getProfileData != null) {
      return getProfileData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileUserEvent value) getProfileData,
  }) {
    return getProfileData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileUserEvent value)? getProfileData,
    required TResult orElse(),
  }) {
    if (getProfileData != null) {
      return getProfileData(this);
    }
    return orElse();
  }
}

abstract class _GetProfileUserEvent implements ProfileUserEvent {
  const factory _GetProfileUserEvent() = _$_GetProfileUserEvent;
}

/// @nodoc
class _$ProfileUserStateTearOff {
  const _$ProfileUserStateTearOff();

  EmptyProfileUserState empty() {
    return const EmptyProfileUserState();
  }

  LoadingProfileUserState loading() {
    return const LoadingProfileUserState();
  }

  LoadedProfileUserState loaded(
      {required TypeProfileUser profile, required FormzStatus status}) {
    return LoadedProfileUserState(
      profile: profile,
      status: status,
    );
  }

  ErrorProfileUserState error({required String message}) {
    return ErrorProfileUserState(
      message: message,
    );
  }
}

/// @nodoc
const $ProfileUserState = _$ProfileUserStateTearOff();

/// @nodoc
mixin _$ProfileUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(TypeProfileUser profile, FormzStatus status)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(TypeProfileUser profile, FormzStatus status)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyProfileUserState value) empty,
    required TResult Function(LoadingProfileUserState value) loading,
    required TResult Function(LoadedProfileUserState value) loaded,
    required TResult Function(ErrorProfileUserState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyProfileUserState value)? empty,
    TResult Function(LoadingProfileUserState value)? loading,
    TResult Function(LoadedProfileUserState value)? loaded,
    TResult Function(ErrorProfileUserState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileUserStateCopyWith<$Res> {
  factory $ProfileUserStateCopyWith(
          ProfileUserState value, $Res Function(ProfileUserState) then) =
      _$ProfileUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileUserStateCopyWithImpl<$Res>
    implements $ProfileUserStateCopyWith<$Res> {
  _$ProfileUserStateCopyWithImpl(this._value, this._then);

  final ProfileUserState _value;
  // ignore: unused_field
  final $Res Function(ProfileUserState) _then;
}

/// @nodoc
abstract class $EmptyProfileUserStateCopyWith<$Res> {
  factory $EmptyProfileUserStateCopyWith(EmptyProfileUserState value,
          $Res Function(EmptyProfileUserState) then) =
      _$EmptyProfileUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyProfileUserStateCopyWithImpl<$Res>
    extends _$ProfileUserStateCopyWithImpl<$Res>
    implements $EmptyProfileUserStateCopyWith<$Res> {
  _$EmptyProfileUserStateCopyWithImpl(
      EmptyProfileUserState _value, $Res Function(EmptyProfileUserState) _then)
      : super(_value, (v) => _then(v as EmptyProfileUserState));

  @override
  EmptyProfileUserState get _value => super._value as EmptyProfileUserState;
}

/// @nodoc

class _$EmptyProfileUserState implements EmptyProfileUserState {
  const _$EmptyProfileUserState();

  @override
  String toString() {
    return 'ProfileUserState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyProfileUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(TypeProfileUser profile, FormzStatus status)
        loaded,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(TypeProfileUser profile, FormzStatus status)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyProfileUserState value) empty,
    required TResult Function(LoadingProfileUserState value) loading,
    required TResult Function(LoadedProfileUserState value) loaded,
    required TResult Function(ErrorProfileUserState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyProfileUserState value)? empty,
    TResult Function(LoadingProfileUserState value)? loading,
    TResult Function(LoadedProfileUserState value)? loaded,
    TResult Function(ErrorProfileUserState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyProfileUserState implements ProfileUserState {
  const factory EmptyProfileUserState() = _$EmptyProfileUserState;
}

/// @nodoc
abstract class $LoadingProfileUserStateCopyWith<$Res> {
  factory $LoadingProfileUserStateCopyWith(LoadingProfileUserState value,
          $Res Function(LoadingProfileUserState) then) =
      _$LoadingProfileUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingProfileUserStateCopyWithImpl<$Res>
    extends _$ProfileUserStateCopyWithImpl<$Res>
    implements $LoadingProfileUserStateCopyWith<$Res> {
  _$LoadingProfileUserStateCopyWithImpl(LoadingProfileUserState _value,
      $Res Function(LoadingProfileUserState) _then)
      : super(_value, (v) => _then(v as LoadingProfileUserState));

  @override
  LoadingProfileUserState get _value => super._value as LoadingProfileUserState;
}

/// @nodoc

class _$LoadingProfileUserState implements LoadingProfileUserState {
  const _$LoadingProfileUserState();

  @override
  String toString() {
    return 'ProfileUserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingProfileUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(TypeProfileUser profile, FormzStatus status)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(TypeProfileUser profile, FormzStatus status)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyProfileUserState value) empty,
    required TResult Function(LoadingProfileUserState value) loading,
    required TResult Function(LoadedProfileUserState value) loaded,
    required TResult Function(ErrorProfileUserState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyProfileUserState value)? empty,
    TResult Function(LoadingProfileUserState value)? loading,
    TResult Function(LoadedProfileUserState value)? loaded,
    TResult Function(ErrorProfileUserState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingProfileUserState implements ProfileUserState {
  const factory LoadingProfileUserState() = _$LoadingProfileUserState;
}

/// @nodoc
abstract class $LoadedProfileUserStateCopyWith<$Res> {
  factory $LoadedProfileUserStateCopyWith(LoadedProfileUserState value,
          $Res Function(LoadedProfileUserState) then) =
      _$LoadedProfileUserStateCopyWithImpl<$Res>;
  $Res call({TypeProfileUser profile, FormzStatus status});
}

/// @nodoc
class _$LoadedProfileUserStateCopyWithImpl<$Res>
    extends _$ProfileUserStateCopyWithImpl<$Res>
    implements $LoadedProfileUserStateCopyWith<$Res> {
  _$LoadedProfileUserStateCopyWithImpl(LoadedProfileUserState _value,
      $Res Function(LoadedProfileUserState) _then)
      : super(_value, (v) => _then(v as LoadedProfileUserState));

  @override
  LoadedProfileUserState get _value => super._value as LoadedProfileUserState;

  @override
  $Res call({
    Object? profile = freezed,
    Object? status = freezed,
  }) {
    return _then(LoadedProfileUserState(
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as TypeProfileUser,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$LoadedProfileUserState implements LoadedProfileUserState {
  const _$LoadedProfileUserState({required this.profile, required this.status});

  @override
  final TypeProfileUser profile;
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'ProfileUserState.loaded(profile: $profile, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedProfileUserState &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $LoadedProfileUserStateCopyWith<LoadedProfileUserState> get copyWith =>
      _$LoadedProfileUserStateCopyWithImpl<LoadedProfileUserState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(TypeProfileUser profile, FormzStatus status)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(profile, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(TypeProfileUser profile, FormzStatus status)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(profile, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyProfileUserState value) empty,
    required TResult Function(LoadingProfileUserState value) loading,
    required TResult Function(LoadedProfileUserState value) loaded,
    required TResult Function(ErrorProfileUserState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyProfileUserState value)? empty,
    TResult Function(LoadingProfileUserState value)? loading,
    TResult Function(LoadedProfileUserState value)? loaded,
    TResult Function(ErrorProfileUserState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedProfileUserState implements ProfileUserState {
  const factory LoadedProfileUserState(
      {required TypeProfileUser profile,
      required FormzStatus status}) = _$LoadedProfileUserState;

  TypeProfileUser get profile => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedProfileUserStateCopyWith<LoadedProfileUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorProfileUserStateCopyWith<$Res> {
  factory $ErrorProfileUserStateCopyWith(ErrorProfileUserState value,
          $Res Function(ErrorProfileUserState) then) =
      _$ErrorProfileUserStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorProfileUserStateCopyWithImpl<$Res>
    extends _$ProfileUserStateCopyWithImpl<$Res>
    implements $ErrorProfileUserStateCopyWith<$Res> {
  _$ErrorProfileUserStateCopyWithImpl(
      ErrorProfileUserState _value, $Res Function(ErrorProfileUserState) _then)
      : super(_value, (v) => _then(v as ErrorProfileUserState));

  @override
  ErrorProfileUserState get _value => super._value as ErrorProfileUserState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorProfileUserState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorProfileUserState implements ErrorProfileUserState {
  const _$ErrorProfileUserState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ProfileUserState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorProfileUserState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorProfileUserStateCopyWith<ErrorProfileUserState> get copyWith =>
      _$ErrorProfileUserStateCopyWithImpl<ErrorProfileUserState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(TypeProfileUser profile, FormzStatus status)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(TypeProfileUser profile, FormzStatus status)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyProfileUserState value) empty,
    required TResult Function(LoadingProfileUserState value) loading,
    required TResult Function(LoadedProfileUserState value) loaded,
    required TResult Function(ErrorProfileUserState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyProfileUserState value)? empty,
    TResult Function(LoadingProfileUserState value)? loading,
    TResult Function(LoadedProfileUserState value)? loaded,
    TResult Function(ErrorProfileUserState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorProfileUserState implements ProfileUserState {
  const factory ErrorProfileUserState({required String message}) =
      _$ErrorProfileUserState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorProfileUserStateCopyWith<ErrorProfileUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
