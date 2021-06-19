// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'internet_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InternetStateTearOff {
  const _$InternetStateTearOff();

  LoadingInternetState loading() {
    return const LoadingInternetState();
  }

  ConnectedInternetState connected({required ConnectionType connectionType}) {
    return ConnectedInternetState(
      connectionType: connectionType,
    );
  }

  DisconnectedInternetState disconnected() {
    return const DisconnectedInternetState();
  }
}

/// @nodoc
const $InternetState = _$InternetStateTearOff();

/// @nodoc
mixin _$InternetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ConnectionType connectionType) connected,
    required TResult Function() disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ConnectionType connectionType)? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingInternetState value) loading,
    required TResult Function(ConnectedInternetState value) connected,
    required TResult Function(DisconnectedInternetState value) disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInternetState value)? loading,
    TResult Function(ConnectedInternetState value)? connected,
    TResult Function(DisconnectedInternetState value)? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetStateCopyWith<$Res> {
  factory $InternetStateCopyWith(
          InternetState value, $Res Function(InternetState) then) =
      _$InternetStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InternetStateCopyWithImpl<$Res>
    implements $InternetStateCopyWith<$Res> {
  _$InternetStateCopyWithImpl(this._value, this._then);

  final InternetState _value;
  // ignore: unused_field
  final $Res Function(InternetState) _then;
}

/// @nodoc
abstract class $LoadingInternetStateCopyWith<$Res> {
  factory $LoadingInternetStateCopyWith(LoadingInternetState value,
          $Res Function(LoadingInternetState) then) =
      _$LoadingInternetStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingInternetStateCopyWithImpl<$Res>
    extends _$InternetStateCopyWithImpl<$Res>
    implements $LoadingInternetStateCopyWith<$Res> {
  _$LoadingInternetStateCopyWithImpl(
      LoadingInternetState _value, $Res Function(LoadingInternetState) _then)
      : super(_value, (v) => _then(v as LoadingInternetState));

  @override
  LoadingInternetState get _value => super._value as LoadingInternetState;
}

/// @nodoc

class _$LoadingInternetState implements LoadingInternetState {
  const _$LoadingInternetState();

  @override
  String toString() {
    return 'InternetState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingInternetState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ConnectionType connectionType) connected,
    required TResult Function() disconnected,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ConnectionType connectionType)? connected,
    TResult Function()? disconnected,
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
    required TResult Function(LoadingInternetState value) loading,
    required TResult Function(ConnectedInternetState value) connected,
    required TResult Function(DisconnectedInternetState value) disconnected,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInternetState value)? loading,
    TResult Function(ConnectedInternetState value)? connected,
    TResult Function(DisconnectedInternetState value)? disconnected,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingInternetState implements InternetState {
  const factory LoadingInternetState() = _$LoadingInternetState;
}

/// @nodoc
abstract class $ConnectedInternetStateCopyWith<$Res> {
  factory $ConnectedInternetStateCopyWith(ConnectedInternetState value,
          $Res Function(ConnectedInternetState) then) =
      _$ConnectedInternetStateCopyWithImpl<$Res>;
  $Res call({ConnectionType connectionType});
}

/// @nodoc
class _$ConnectedInternetStateCopyWithImpl<$Res>
    extends _$InternetStateCopyWithImpl<$Res>
    implements $ConnectedInternetStateCopyWith<$Res> {
  _$ConnectedInternetStateCopyWithImpl(ConnectedInternetState _value,
      $Res Function(ConnectedInternetState) _then)
      : super(_value, (v) => _then(v as ConnectedInternetState));

  @override
  ConnectedInternetState get _value => super._value as ConnectedInternetState;

  @override
  $Res call({
    Object? connectionType = freezed,
  }) {
    return _then(ConnectedInternetState(
      connectionType: connectionType == freezed
          ? _value.connectionType
          : connectionType // ignore: cast_nullable_to_non_nullable
              as ConnectionType,
    ));
  }
}

/// @nodoc

class _$ConnectedInternetState implements ConnectedInternetState {
  const _$ConnectedInternetState({required this.connectionType});

  @override
  final ConnectionType connectionType;

  @override
  String toString() {
    return 'InternetState.connected(connectionType: $connectionType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConnectedInternetState &&
            (identical(other.connectionType, connectionType) ||
                const DeepCollectionEquality()
                    .equals(other.connectionType, connectionType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(connectionType);

  @JsonKey(ignore: true)
  @override
  $ConnectedInternetStateCopyWith<ConnectedInternetState> get copyWith =>
      _$ConnectedInternetStateCopyWithImpl<ConnectedInternetState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ConnectionType connectionType) connected,
    required TResult Function() disconnected,
  }) {
    return connected(connectionType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ConnectionType connectionType)? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(connectionType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingInternetState value) loading,
    required TResult Function(ConnectedInternetState value) connected,
    required TResult Function(DisconnectedInternetState value) disconnected,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInternetState value)? loading,
    TResult Function(ConnectedInternetState value)? connected,
    TResult Function(DisconnectedInternetState value)? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class ConnectedInternetState implements InternetState {
  const factory ConnectedInternetState(
      {required ConnectionType connectionType}) = _$ConnectedInternetState;

  ConnectionType get connectionType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectedInternetStateCopyWith<ConnectedInternetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisconnectedInternetStateCopyWith<$Res> {
  factory $DisconnectedInternetStateCopyWith(DisconnectedInternetState value,
          $Res Function(DisconnectedInternetState) then) =
      _$DisconnectedInternetStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DisconnectedInternetStateCopyWithImpl<$Res>
    extends _$InternetStateCopyWithImpl<$Res>
    implements $DisconnectedInternetStateCopyWith<$Res> {
  _$DisconnectedInternetStateCopyWithImpl(DisconnectedInternetState _value,
      $Res Function(DisconnectedInternetState) _then)
      : super(_value, (v) => _then(v as DisconnectedInternetState));

  @override
  DisconnectedInternetState get _value =>
      super._value as DisconnectedInternetState;
}

/// @nodoc

class _$DisconnectedInternetState implements DisconnectedInternetState {
  const _$DisconnectedInternetState();

  @override
  String toString() {
    return 'InternetState.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DisconnectedInternetState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ConnectionType connectionType) connected,
    required TResult Function() disconnected,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ConnectionType connectionType)? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingInternetState value) loading,
    required TResult Function(ConnectedInternetState value) connected,
    required TResult Function(DisconnectedInternetState value) disconnected,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInternetState value)? loading,
    TResult Function(ConnectedInternetState value)? connected,
    TResult Function(DisconnectedInternetState value)? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class DisconnectedInternetState implements InternetState {
  const factory DisconnectedInternetState() = _$DisconnectedInternetState;
}
