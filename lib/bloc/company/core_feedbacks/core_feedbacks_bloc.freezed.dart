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

  EmptyCoreFeedbacksState empty() {
    return const EmptyCoreFeedbacksState();
  }

  LoadingCoreFeedbacksState loading() {
    return const LoadingCoreFeedbacksState();
  }

  LoadedCoreFeedbacksState loaded(
      {required Tariffs subscribe, required FormzStatus status}) {
    return LoadedCoreFeedbacksState(
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
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Tariffs subscribe, FormzStatus status) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Tariffs subscribe, FormzStatus status)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyCoreFeedbacksState value) empty,
    required TResult Function(LoadingCoreFeedbacksState value) loading,
    required TResult Function(LoadedCoreFeedbacksState value) loaded,
    required TResult Function(ErrorCoreFeedbacksState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoreFeedbacksState value)? empty,
    TResult Function(LoadingCoreFeedbacksState value)? loading,
    TResult Function(LoadedCoreFeedbacksState value)? loaded,
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
abstract class $EmptyCoreFeedbacksStateCopyWith<$Res> {
  factory $EmptyCoreFeedbacksStateCopyWith(EmptyCoreFeedbacksState value,
          $Res Function(EmptyCoreFeedbacksState) then) =
      _$EmptyCoreFeedbacksStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyCoreFeedbacksStateCopyWithImpl<$Res>
    extends _$CoreFeedbacksStateCopyWithImpl<$Res>
    implements $EmptyCoreFeedbacksStateCopyWith<$Res> {
  _$EmptyCoreFeedbacksStateCopyWithImpl(EmptyCoreFeedbacksState _value,
      $Res Function(EmptyCoreFeedbacksState) _then)
      : super(_value, (v) => _then(v as EmptyCoreFeedbacksState));

  @override
  EmptyCoreFeedbacksState get _value => super._value as EmptyCoreFeedbacksState;
}

/// @nodoc

class _$EmptyCoreFeedbacksState implements EmptyCoreFeedbacksState {
  const _$EmptyCoreFeedbacksState();

  @override
  String toString() {
    return 'CoreFeedbacksState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyCoreFeedbacksState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Tariffs subscribe, FormzStatus status) loaded,
    required TResult Function(String error) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Tariffs subscribe, FormzStatus status)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(EmptyCoreFeedbacksState value) empty,
    required TResult Function(LoadingCoreFeedbacksState value) loading,
    required TResult Function(LoadedCoreFeedbacksState value) loaded,
    required TResult Function(ErrorCoreFeedbacksState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoreFeedbacksState value)? empty,
    TResult Function(LoadingCoreFeedbacksState value)? loading,
    TResult Function(LoadedCoreFeedbacksState value)? loaded,
    TResult Function(ErrorCoreFeedbacksState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyCoreFeedbacksState implements CoreFeedbacksState {
  const factory EmptyCoreFeedbacksState() = _$EmptyCoreFeedbacksState;
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
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Tariffs subscribe, FormzStatus status) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Tariffs subscribe, FormzStatus status)? loaded,
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
    required TResult Function(EmptyCoreFeedbacksState value) empty,
    required TResult Function(LoadingCoreFeedbacksState value) loading,
    required TResult Function(LoadedCoreFeedbacksState value) loaded,
    required TResult Function(ErrorCoreFeedbacksState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoreFeedbacksState value)? empty,
    TResult Function(LoadingCoreFeedbacksState value)? loading,
    TResult Function(LoadedCoreFeedbacksState value)? loaded,
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
abstract class $LoadedCoreFeedbacksStateCopyWith<$Res> {
  factory $LoadedCoreFeedbacksStateCopyWith(LoadedCoreFeedbacksState value,
          $Res Function(LoadedCoreFeedbacksState) then) =
      _$LoadedCoreFeedbacksStateCopyWithImpl<$Res>;
  $Res call({Tariffs subscribe, FormzStatus status});
}

/// @nodoc
class _$LoadedCoreFeedbacksStateCopyWithImpl<$Res>
    extends _$CoreFeedbacksStateCopyWithImpl<$Res>
    implements $LoadedCoreFeedbacksStateCopyWith<$Res> {
  _$LoadedCoreFeedbacksStateCopyWithImpl(LoadedCoreFeedbacksState _value,
      $Res Function(LoadedCoreFeedbacksState) _then)
      : super(_value, (v) => _then(v as LoadedCoreFeedbacksState));

  @override
  LoadedCoreFeedbacksState get _value =>
      super._value as LoadedCoreFeedbacksState;

  @override
  $Res call({
    Object? subscribe = freezed,
    Object? status = freezed,
  }) {
    return _then(LoadedCoreFeedbacksState(
      subscribe: subscribe == freezed
          ? _value.subscribe
          : subscribe // ignore: cast_nullable_to_non_nullable
              as Tariffs,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$LoadedCoreFeedbacksState implements LoadedCoreFeedbacksState {
  const _$LoadedCoreFeedbacksState(
      {required this.subscribe, required this.status});

  @override
  final Tariffs subscribe;
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'CoreFeedbacksState.loaded(subscribe: $subscribe, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedCoreFeedbacksState &&
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
  $LoadedCoreFeedbacksStateCopyWith<LoadedCoreFeedbacksState> get copyWith =>
      _$LoadedCoreFeedbacksStateCopyWithImpl<LoadedCoreFeedbacksState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Tariffs subscribe, FormzStatus status) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(subscribe, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Tariffs subscribe, FormzStatus status)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(subscribe, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyCoreFeedbacksState value) empty,
    required TResult Function(LoadingCoreFeedbacksState value) loading,
    required TResult Function(LoadedCoreFeedbacksState value) loaded,
    required TResult Function(ErrorCoreFeedbacksState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoreFeedbacksState value)? empty,
    TResult Function(LoadingCoreFeedbacksState value)? loading,
    TResult Function(LoadedCoreFeedbacksState value)? loaded,
    TResult Function(ErrorCoreFeedbacksState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedCoreFeedbacksState implements CoreFeedbacksState {
  const factory LoadedCoreFeedbacksState(
      {required Tariffs subscribe,
      required FormzStatus status}) = _$LoadedCoreFeedbacksState;

  Tariffs get subscribe => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedCoreFeedbacksStateCopyWith<LoadedCoreFeedbacksState> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Tariffs subscribe, FormzStatus status) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Tariffs subscribe, FormzStatus status)? loaded,
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
    required TResult Function(EmptyCoreFeedbacksState value) empty,
    required TResult Function(LoadingCoreFeedbacksState value) loading,
    required TResult Function(LoadedCoreFeedbacksState value) loaded,
    required TResult Function(ErrorCoreFeedbacksState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoreFeedbacksState value)? empty,
    TResult Function(LoadingCoreFeedbacksState value)? loading,
    TResult Function(LoadedCoreFeedbacksState value)? loaded,
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
