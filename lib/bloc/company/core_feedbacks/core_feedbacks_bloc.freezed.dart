// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'core_feedbacks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoreFeedbacksEventTearOff {
  const _$CoreFeedbacksEventTearOff();

  _GetStatusSubscribeCoreFeedbacksEvent getStatusSubscribe() {
    return const _GetStatusSubscribeCoreFeedbacksEvent();
  }

  _PayStatusCoreFeedbacksEvent payStatus({required int sum}) {
    return _PayStatusCoreFeedbacksEvent(
      sum: sum,
    );
  }
}

/// @nodoc
const $CoreFeedbacksEvent = _$CoreFeedbacksEventTearOff();

/// @nodoc
mixin _$CoreFeedbacksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStatusSubscribe,
    required TResult Function(int sum) payStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStatusSubscribe,
    TResult Function(int sum)? payStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStatusSubscribeCoreFeedbacksEvent value)
        getStatusSubscribe,
    required TResult Function(_PayStatusCoreFeedbacksEvent value) payStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStatusSubscribeCoreFeedbacksEvent value)?
        getStatusSubscribe,
    TResult Function(_PayStatusCoreFeedbacksEvent value)? payStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreFeedbacksEventCopyWith<$Res> {
  factory $CoreFeedbacksEventCopyWith(
          CoreFeedbacksEvent value, $Res Function(CoreFeedbacksEvent) then) =
      _$CoreFeedbacksEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoreFeedbacksEventCopyWithImpl<$Res>
    implements $CoreFeedbacksEventCopyWith<$Res> {
  _$CoreFeedbacksEventCopyWithImpl(this._value, this._then);

  final CoreFeedbacksEvent _value;
  // ignore: unused_field
  final $Res Function(CoreFeedbacksEvent) _then;
}

/// @nodoc
abstract class _$GetStatusSubscribeCoreFeedbacksEventCopyWith<$Res> {
  factory _$GetStatusSubscribeCoreFeedbacksEventCopyWith(
          _GetStatusSubscribeCoreFeedbacksEvent value,
          $Res Function(_GetStatusSubscribeCoreFeedbacksEvent) then) =
      __$GetStatusSubscribeCoreFeedbacksEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetStatusSubscribeCoreFeedbacksEventCopyWithImpl<$Res>
    extends _$CoreFeedbacksEventCopyWithImpl<$Res>
    implements _$GetStatusSubscribeCoreFeedbacksEventCopyWith<$Res> {
  __$GetStatusSubscribeCoreFeedbacksEventCopyWithImpl(
      _GetStatusSubscribeCoreFeedbacksEvent _value,
      $Res Function(_GetStatusSubscribeCoreFeedbacksEvent) _then)
      : super(_value, (v) => _then(v as _GetStatusSubscribeCoreFeedbacksEvent));

  @override
  _GetStatusSubscribeCoreFeedbacksEvent get _value =>
      super._value as _GetStatusSubscribeCoreFeedbacksEvent;
}

/// @nodoc

class _$_GetStatusSubscribeCoreFeedbacksEvent
    implements _GetStatusSubscribeCoreFeedbacksEvent {
  const _$_GetStatusSubscribeCoreFeedbacksEvent();

  @override
  String toString() {
    return 'CoreFeedbacksEvent.getStatusSubscribe()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetStatusSubscribeCoreFeedbacksEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStatusSubscribe,
    required TResult Function(int sum) payStatus,
  }) {
    return getStatusSubscribe();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStatusSubscribe,
    TResult Function(int sum)? payStatus,
    required TResult orElse(),
  }) {
    if (getStatusSubscribe != null) {
      return getStatusSubscribe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStatusSubscribeCoreFeedbacksEvent value)
        getStatusSubscribe,
    required TResult Function(_PayStatusCoreFeedbacksEvent value) payStatus,
  }) {
    return getStatusSubscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStatusSubscribeCoreFeedbacksEvent value)?
        getStatusSubscribe,
    TResult Function(_PayStatusCoreFeedbacksEvent value)? payStatus,
    required TResult orElse(),
  }) {
    if (getStatusSubscribe != null) {
      return getStatusSubscribe(this);
    }
    return orElse();
  }
}

abstract class _GetStatusSubscribeCoreFeedbacksEvent
    implements CoreFeedbacksEvent {
  const factory _GetStatusSubscribeCoreFeedbacksEvent() =
      _$_GetStatusSubscribeCoreFeedbacksEvent;
}

/// @nodoc
abstract class _$PayStatusCoreFeedbacksEventCopyWith<$Res> {
  factory _$PayStatusCoreFeedbacksEventCopyWith(
          _PayStatusCoreFeedbacksEvent value,
          $Res Function(_PayStatusCoreFeedbacksEvent) then) =
      __$PayStatusCoreFeedbacksEventCopyWithImpl<$Res>;
  $Res call({int sum});
}

/// @nodoc
class __$PayStatusCoreFeedbacksEventCopyWithImpl<$Res>
    extends _$CoreFeedbacksEventCopyWithImpl<$Res>
    implements _$PayStatusCoreFeedbacksEventCopyWith<$Res> {
  __$PayStatusCoreFeedbacksEventCopyWithImpl(
      _PayStatusCoreFeedbacksEvent _value,
      $Res Function(_PayStatusCoreFeedbacksEvent) _then)
      : super(_value, (v) => _then(v as _PayStatusCoreFeedbacksEvent));

  @override
  _PayStatusCoreFeedbacksEvent get _value =>
      super._value as _PayStatusCoreFeedbacksEvent;

  @override
  $Res call({
    Object? sum = freezed,
  }) {
    return _then(_PayStatusCoreFeedbacksEvent(
      sum: sum == freezed
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PayStatusCoreFeedbacksEvent implements _PayStatusCoreFeedbacksEvent {
  const _$_PayStatusCoreFeedbacksEvent({required this.sum});

  @override
  final int sum;

  @override
  String toString() {
    return 'CoreFeedbacksEvent.payStatus(sum: $sum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PayStatusCoreFeedbacksEvent &&
            (identical(other.sum, sum) ||
                const DeepCollectionEquality().equals(other.sum, sum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sum);

  @JsonKey(ignore: true)
  @override
  _$PayStatusCoreFeedbacksEventCopyWith<_PayStatusCoreFeedbacksEvent>
      get copyWith => __$PayStatusCoreFeedbacksEventCopyWithImpl<
          _PayStatusCoreFeedbacksEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStatusSubscribe,
    required TResult Function(int sum) payStatus,
  }) {
    return payStatus(sum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStatusSubscribe,
    TResult Function(int sum)? payStatus,
    required TResult orElse(),
  }) {
    if (payStatus != null) {
      return payStatus(sum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStatusSubscribeCoreFeedbacksEvent value)
        getStatusSubscribe,
    required TResult Function(_PayStatusCoreFeedbacksEvent value) payStatus,
  }) {
    return payStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStatusSubscribeCoreFeedbacksEvent value)?
        getStatusSubscribe,
    TResult Function(_PayStatusCoreFeedbacksEvent value)? payStatus,
    required TResult orElse(),
  }) {
    if (payStatus != null) {
      return payStatus(this);
    }
    return orElse();
  }
}

abstract class _PayStatusCoreFeedbacksEvent implements CoreFeedbacksEvent {
  const factory _PayStatusCoreFeedbacksEvent({required int sum}) =
      _$_PayStatusCoreFeedbacksEvent;

  int get sum => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PayStatusCoreFeedbacksEventCopyWith<_PayStatusCoreFeedbacksEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CoreFeedbacksStateTearOff {
  const _$CoreFeedbacksStateTearOff();

  InitialCoreFeedbacksState initial() {
    return const InitialCoreFeedbacksState();
  }

  LoadingCoreFeedbacksState loading() {
    return const LoadingCoreFeedbacksState();
  }

  StatusSubscribeCoreFeedbacksState statusSubscribe(
      {required String subscribe, required FormzStatus status}) {
    return StatusSubscribeCoreFeedbacksState(
      subscribe: subscribe,
      status: status,
    );
  }

  ErrorCoreFeedbacksState error({required String error}) {
    return ErrorCoreFeedbacksState(
      error: error,
    );
  }
}

/// @nodoc
const $CoreFeedbacksState = _$CoreFeedbacksStateTearOff();

/// @nodoc
mixin _$CoreFeedbacksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String subscribe, FormzStatus status)
        statusSubscribe,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String subscribe, FormzStatus status)? statusSubscribe,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCoreFeedbacksState value) initial,
    required TResult Function(LoadingCoreFeedbacksState value) loading,
    required TResult Function(StatusSubscribeCoreFeedbacksState value)
        statusSubscribe,
    required TResult Function(ErrorCoreFeedbacksState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCoreFeedbacksState value)? initial,
    TResult Function(LoadingCoreFeedbacksState value)? loading,
    TResult Function(StatusSubscribeCoreFeedbacksState value)? statusSubscribe,
    TResult Function(ErrorCoreFeedbacksState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreFeedbacksStateCopyWith<$Res> {
  factory $CoreFeedbacksStateCopyWith(
          CoreFeedbacksState value, $Res Function(CoreFeedbacksState) then) =
      _$CoreFeedbacksStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoreFeedbacksStateCopyWithImpl<$Res>
    implements $CoreFeedbacksStateCopyWith<$Res> {
  _$CoreFeedbacksStateCopyWithImpl(this._value, this._then);

  final CoreFeedbacksState _value;
  // ignore: unused_field
  final $Res Function(CoreFeedbacksState) _then;
}

/// @nodoc
abstract class $InitialCoreFeedbacksStateCopyWith<$Res> {
  factory $InitialCoreFeedbacksStateCopyWith(InitialCoreFeedbacksState value,
          $Res Function(InitialCoreFeedbacksState) then) =
      _$InitialCoreFeedbacksStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCoreFeedbacksStateCopyWithImpl<$Res>
    extends _$CoreFeedbacksStateCopyWithImpl<$Res>
    implements $InitialCoreFeedbacksStateCopyWith<$Res> {
  _$InitialCoreFeedbacksStateCopyWithImpl(InitialCoreFeedbacksState _value,
      $Res Function(InitialCoreFeedbacksState) _then)
      : super(_value, (v) => _then(v as InitialCoreFeedbacksState));

  @override
  InitialCoreFeedbacksState get _value =>
      super._value as InitialCoreFeedbacksState;
}

/// @nodoc

class _$InitialCoreFeedbacksState implements InitialCoreFeedbacksState {
  const _$InitialCoreFeedbacksState();

  @override
  String toString() {
    return 'CoreFeedbacksState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialCoreFeedbacksState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String subscribe, FormzStatus status)
        statusSubscribe,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String subscribe, FormzStatus status)? statusSubscribe,
    TResult Function(String error)? error,
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
    required TResult Function(InitialCoreFeedbacksState value) initial,
    required TResult Function(LoadingCoreFeedbacksState value) loading,
    required TResult Function(StatusSubscribeCoreFeedbacksState value)
        statusSubscribe,
    required TResult Function(ErrorCoreFeedbacksState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCoreFeedbacksState value)? initial,
    TResult Function(LoadingCoreFeedbacksState value)? loading,
    TResult Function(StatusSubscribeCoreFeedbacksState value)? statusSubscribe,
    TResult Function(ErrorCoreFeedbacksState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialCoreFeedbacksState implements CoreFeedbacksState {
  const factory InitialCoreFeedbacksState() = _$InitialCoreFeedbacksState;
}

/// @nodoc
abstract class $LoadingCoreFeedbacksStateCopyWith<$Res> {
  factory $LoadingCoreFeedbacksStateCopyWith(LoadingCoreFeedbacksState value,
          $Res Function(LoadingCoreFeedbacksState) then) =
      _$LoadingCoreFeedbacksStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCoreFeedbacksStateCopyWithImpl<$Res>
    extends _$CoreFeedbacksStateCopyWithImpl<$Res>
    implements $LoadingCoreFeedbacksStateCopyWith<$Res> {
  _$LoadingCoreFeedbacksStateCopyWithImpl(LoadingCoreFeedbacksState _value,
      $Res Function(LoadingCoreFeedbacksState) _then)
      : super(_value, (v) => _then(v as LoadingCoreFeedbacksState));

  @override
  LoadingCoreFeedbacksState get _value =>
      super._value as LoadingCoreFeedbacksState;
}

/// @nodoc

class _$LoadingCoreFeedbacksState implements LoadingCoreFeedbacksState {
  const _$LoadingCoreFeedbacksState();

  @override
  String toString() {
    return 'CoreFeedbacksState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingCoreFeedbacksState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String subscribe, FormzStatus status)
        statusSubscribe,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String subscribe, FormzStatus status)? statusSubscribe,
    TResult Function(String error)? error,
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
    required TResult Function(InitialCoreFeedbacksState value) initial,
    required TResult Function(LoadingCoreFeedbacksState value) loading,
    required TResult Function(StatusSubscribeCoreFeedbacksState value)
        statusSubscribe,
    required TResult Function(ErrorCoreFeedbacksState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCoreFeedbacksState value)? initial,
    TResult Function(LoadingCoreFeedbacksState value)? loading,
    TResult Function(StatusSubscribeCoreFeedbacksState value)? statusSubscribe,
    TResult Function(ErrorCoreFeedbacksState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingCoreFeedbacksState implements CoreFeedbacksState {
  const factory LoadingCoreFeedbacksState() = _$LoadingCoreFeedbacksState;
}

/// @nodoc
abstract class $StatusSubscribeCoreFeedbacksStateCopyWith<$Res> {
  factory $StatusSubscribeCoreFeedbacksStateCopyWith(
          StatusSubscribeCoreFeedbacksState value,
          $Res Function(StatusSubscribeCoreFeedbacksState) then) =
      _$StatusSubscribeCoreFeedbacksStateCopyWithImpl<$Res>;
  $Res call({String subscribe, FormzStatus status});
}

/// @nodoc
class _$StatusSubscribeCoreFeedbacksStateCopyWithImpl<$Res>
    extends _$CoreFeedbacksStateCopyWithImpl<$Res>
    implements $StatusSubscribeCoreFeedbacksStateCopyWith<$Res> {
  _$StatusSubscribeCoreFeedbacksStateCopyWithImpl(
      StatusSubscribeCoreFeedbacksState _value,
      $Res Function(StatusSubscribeCoreFeedbacksState) _then)
      : super(_value, (v) => _then(v as StatusSubscribeCoreFeedbacksState));

  @override
  StatusSubscribeCoreFeedbacksState get _value =>
      super._value as StatusSubscribeCoreFeedbacksState;

  @override
  $Res call({
    Object? subscribe = freezed,
    Object? status = freezed,
  }) {
    return _then(StatusSubscribeCoreFeedbacksState(
      subscribe: subscribe == freezed
          ? _value.subscribe
          : subscribe // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$StatusSubscribeCoreFeedbacksState
    implements StatusSubscribeCoreFeedbacksState {
  const _$StatusSubscribeCoreFeedbacksState(
      {required this.subscribe, required this.status});

  @override
  final String subscribe;
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'CoreFeedbacksState.statusSubscribe(subscribe: $subscribe, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatusSubscribeCoreFeedbacksState &&
            (identical(other.subscribe, subscribe) ||
                const DeepCollectionEquality()
                    .equals(other.subscribe, subscribe)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subscribe) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $StatusSubscribeCoreFeedbacksStateCopyWith<StatusSubscribeCoreFeedbacksState>
      get copyWith => _$StatusSubscribeCoreFeedbacksStateCopyWithImpl<
          StatusSubscribeCoreFeedbacksState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String subscribe, FormzStatus status)
        statusSubscribe,
    required TResult Function(String error) error,
  }) {
    return statusSubscribe(subscribe, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String subscribe, FormzStatus status)? statusSubscribe,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (statusSubscribe != null) {
      return statusSubscribe(subscribe, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCoreFeedbacksState value) initial,
    required TResult Function(LoadingCoreFeedbacksState value) loading,
    required TResult Function(StatusSubscribeCoreFeedbacksState value)
        statusSubscribe,
    required TResult Function(ErrorCoreFeedbacksState value) error,
  }) {
    return statusSubscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCoreFeedbacksState value)? initial,
    TResult Function(LoadingCoreFeedbacksState value)? loading,
    TResult Function(StatusSubscribeCoreFeedbacksState value)? statusSubscribe,
    TResult Function(ErrorCoreFeedbacksState value)? error,
    required TResult orElse(),
  }) {
    if (statusSubscribe != null) {
      return statusSubscribe(this);
    }
    return orElse();
  }
}

abstract class StatusSubscribeCoreFeedbacksState implements CoreFeedbacksState {
  const factory StatusSubscribeCoreFeedbacksState(
      {required String subscribe,
      required FormzStatus status}) = _$StatusSubscribeCoreFeedbacksState;

  String get subscribe => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusSubscribeCoreFeedbacksStateCopyWith<StatusSubscribeCoreFeedbacksState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCoreFeedbacksStateCopyWith<$Res> {
  factory $ErrorCoreFeedbacksStateCopyWith(ErrorCoreFeedbacksState value,
          $Res Function(ErrorCoreFeedbacksState) then) =
      _$ErrorCoreFeedbacksStateCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$ErrorCoreFeedbacksStateCopyWithImpl<$Res>
    extends _$CoreFeedbacksStateCopyWithImpl<$Res>
    implements $ErrorCoreFeedbacksStateCopyWith<$Res> {
  _$ErrorCoreFeedbacksStateCopyWithImpl(ErrorCoreFeedbacksState _value,
      $Res Function(ErrorCoreFeedbacksState) _then)
      : super(_value, (v) => _then(v as ErrorCoreFeedbacksState));

  @override
  ErrorCoreFeedbacksState get _value => super._value as ErrorCoreFeedbacksState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ErrorCoreFeedbacksState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorCoreFeedbacksState implements ErrorCoreFeedbacksState {
  const _$ErrorCoreFeedbacksState({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'CoreFeedbacksState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorCoreFeedbacksState &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ErrorCoreFeedbacksStateCopyWith<ErrorCoreFeedbacksState> get copyWith =>
      _$ErrorCoreFeedbacksStateCopyWithImpl<ErrorCoreFeedbacksState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String subscribe, FormzStatus status)
        statusSubscribe,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String subscribe, FormzStatus status)? statusSubscribe,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCoreFeedbacksState value) initial,
    required TResult Function(LoadingCoreFeedbacksState value) loading,
    required TResult Function(StatusSubscribeCoreFeedbacksState value)
        statusSubscribe,
    required TResult Function(ErrorCoreFeedbacksState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCoreFeedbacksState value)? initial,
    TResult Function(LoadingCoreFeedbacksState value)? loading,
    TResult Function(StatusSubscribeCoreFeedbacksState value)? statusSubscribe,
    TResult Function(ErrorCoreFeedbacksState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorCoreFeedbacksState implements CoreFeedbacksState {
  const factory ErrorCoreFeedbacksState({required String error}) =
      _$ErrorCoreFeedbacksState;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCoreFeedbacksStateCopyWith<ErrorCoreFeedbacksState> get copyWith =>
      throw _privateConstructorUsedError;
}
