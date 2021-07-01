// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'feedbacks_vacancy_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FeedbacksVacancyEventTearOff {
  const _$FeedbacksVacancyEventTearOff();

  _GetFeedbacksVacancyEvent getFeedbacks() {
    return const _GetFeedbacksVacancyEvent();
  }
}

/// @nodoc
const $FeedbacksVacancyEvent = _$FeedbacksVacancyEventTearOff();

/// @nodoc
mixin _$FeedbacksVacancyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFeedbacks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeedbacks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFeedbacksVacancyEvent value) getFeedbacks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFeedbacksVacancyEvent value)? getFeedbacks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbacksVacancyEventCopyWith<$Res> {
  factory $FeedbacksVacancyEventCopyWith(FeedbacksVacancyEvent value,
          $Res Function(FeedbacksVacancyEvent) then) =
      _$FeedbacksVacancyEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedbacksVacancyEventCopyWithImpl<$Res>
    implements $FeedbacksVacancyEventCopyWith<$Res> {
  _$FeedbacksVacancyEventCopyWithImpl(this._value, this._then);

  final FeedbacksVacancyEvent _value;
  // ignore: unused_field
  final $Res Function(FeedbacksVacancyEvent) _then;
}

/// @nodoc
abstract class _$GetFeedbacksVacancyEventCopyWith<$Res> {
  factory _$GetFeedbacksVacancyEventCopyWith(_GetFeedbacksVacancyEvent value,
          $Res Function(_GetFeedbacksVacancyEvent) then) =
      __$GetFeedbacksVacancyEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetFeedbacksVacancyEventCopyWithImpl<$Res>
    extends _$FeedbacksVacancyEventCopyWithImpl<$Res>
    implements _$GetFeedbacksVacancyEventCopyWith<$Res> {
  __$GetFeedbacksVacancyEventCopyWithImpl(_GetFeedbacksVacancyEvent _value,
      $Res Function(_GetFeedbacksVacancyEvent) _then)
      : super(_value, (v) => _then(v as _GetFeedbacksVacancyEvent));

  @override
  _GetFeedbacksVacancyEvent get _value =>
      super._value as _GetFeedbacksVacancyEvent;
}

/// @nodoc

class _$_GetFeedbacksVacancyEvent implements _GetFeedbacksVacancyEvent {
  const _$_GetFeedbacksVacancyEvent();

  @override
  String toString() {
    return 'FeedbacksVacancyEvent.getFeedbacks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetFeedbacksVacancyEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFeedbacks,
  }) {
    return getFeedbacks();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeedbacks,
    required TResult orElse(),
  }) {
    if (getFeedbacks != null) {
      return getFeedbacks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFeedbacksVacancyEvent value) getFeedbacks,
  }) {
    return getFeedbacks(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFeedbacksVacancyEvent value)? getFeedbacks,
    required TResult orElse(),
  }) {
    if (getFeedbacks != null) {
      return getFeedbacks(this);
    }
    return orElse();
  }
}

abstract class _GetFeedbacksVacancyEvent implements FeedbacksVacancyEvent {
  const factory _GetFeedbacksVacancyEvent() = _$_GetFeedbacksVacancyEvent;
}

/// @nodoc
class _$FeedbacksVacancyStateTearOff {
  const _$FeedbacksVacancyStateTearOff();

  EmptyFeedbacksVacancyState empty() {
    return const EmptyFeedbacksVacancyState();
  }

  LoadingFeedbacksVacancyState loading() {
    return const LoadingFeedbacksVacancyState();
  }

  LoadedFeedbacksVacancyState loaded({required FeedbackVacancy feedbacks}) {
    return LoadedFeedbacksVacancyState(
      feedbacks: feedbacks,
    );
  }

  ErrorFeedbacksVacancyState error({required String message}) {
    return ErrorFeedbacksVacancyState(
      message: message,
    );
  }
}

/// @nodoc
const $FeedbacksVacancyState = _$FeedbacksVacancyStateTearOff();

/// @nodoc
mixin _$FeedbacksVacancyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(FeedbackVacancy feedbacks) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(FeedbackVacancy feedbacks)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyFeedbacksVacancyState value) empty,
    required TResult Function(LoadingFeedbacksVacancyState value) loading,
    required TResult Function(LoadedFeedbacksVacancyState value) loaded,
    required TResult Function(ErrorFeedbacksVacancyState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksVacancyState value)? empty,
    TResult Function(LoadingFeedbacksVacancyState value)? loading,
    TResult Function(LoadedFeedbacksVacancyState value)? loaded,
    TResult Function(ErrorFeedbacksVacancyState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbacksVacancyStateCopyWith<$Res> {
  factory $FeedbacksVacancyStateCopyWith(FeedbacksVacancyState value,
          $Res Function(FeedbacksVacancyState) then) =
      _$FeedbacksVacancyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedbacksVacancyStateCopyWithImpl<$Res>
    implements $FeedbacksVacancyStateCopyWith<$Res> {
  _$FeedbacksVacancyStateCopyWithImpl(this._value, this._then);

  final FeedbacksVacancyState _value;
  // ignore: unused_field
  final $Res Function(FeedbacksVacancyState) _then;
}

/// @nodoc
abstract class $EmptyFeedbacksVacancyStateCopyWith<$Res> {
  factory $EmptyFeedbacksVacancyStateCopyWith(EmptyFeedbacksVacancyState value,
          $Res Function(EmptyFeedbacksVacancyState) then) =
      _$EmptyFeedbacksVacancyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyFeedbacksVacancyStateCopyWithImpl<$Res>
    extends _$FeedbacksVacancyStateCopyWithImpl<$Res>
    implements $EmptyFeedbacksVacancyStateCopyWith<$Res> {
  _$EmptyFeedbacksVacancyStateCopyWithImpl(EmptyFeedbacksVacancyState _value,
      $Res Function(EmptyFeedbacksVacancyState) _then)
      : super(_value, (v) => _then(v as EmptyFeedbacksVacancyState));

  @override
  EmptyFeedbacksVacancyState get _value =>
      super._value as EmptyFeedbacksVacancyState;
}

/// @nodoc

class _$EmptyFeedbacksVacancyState implements EmptyFeedbacksVacancyState {
  const _$EmptyFeedbacksVacancyState();

  @override
  String toString() {
    return 'FeedbacksVacancyState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyFeedbacksVacancyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(FeedbackVacancy feedbacks) loaded,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(FeedbackVacancy feedbacks)? loaded,
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
    required TResult Function(EmptyFeedbacksVacancyState value) empty,
    required TResult Function(LoadingFeedbacksVacancyState value) loading,
    required TResult Function(LoadedFeedbacksVacancyState value) loaded,
    required TResult Function(ErrorFeedbacksVacancyState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksVacancyState value)? empty,
    TResult Function(LoadingFeedbacksVacancyState value)? loading,
    TResult Function(LoadedFeedbacksVacancyState value)? loaded,
    TResult Function(ErrorFeedbacksVacancyState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyFeedbacksVacancyState implements FeedbacksVacancyState {
  const factory EmptyFeedbacksVacancyState() = _$EmptyFeedbacksVacancyState;
}

/// @nodoc
abstract class $LoadingFeedbacksVacancyStateCopyWith<$Res> {
  factory $LoadingFeedbacksVacancyStateCopyWith(
          LoadingFeedbacksVacancyState value,
          $Res Function(LoadingFeedbacksVacancyState) then) =
      _$LoadingFeedbacksVacancyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingFeedbacksVacancyStateCopyWithImpl<$Res>
    extends _$FeedbacksVacancyStateCopyWithImpl<$Res>
    implements $LoadingFeedbacksVacancyStateCopyWith<$Res> {
  _$LoadingFeedbacksVacancyStateCopyWithImpl(
      LoadingFeedbacksVacancyState _value,
      $Res Function(LoadingFeedbacksVacancyState) _then)
      : super(_value, (v) => _then(v as LoadingFeedbacksVacancyState));

  @override
  LoadingFeedbacksVacancyState get _value =>
      super._value as LoadingFeedbacksVacancyState;
}

/// @nodoc

class _$LoadingFeedbacksVacancyState implements LoadingFeedbacksVacancyState {
  const _$LoadingFeedbacksVacancyState();

  @override
  String toString() {
    return 'FeedbacksVacancyState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingFeedbacksVacancyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(FeedbackVacancy feedbacks) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(FeedbackVacancy feedbacks)? loaded,
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
    required TResult Function(EmptyFeedbacksVacancyState value) empty,
    required TResult Function(LoadingFeedbacksVacancyState value) loading,
    required TResult Function(LoadedFeedbacksVacancyState value) loaded,
    required TResult Function(ErrorFeedbacksVacancyState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksVacancyState value)? empty,
    TResult Function(LoadingFeedbacksVacancyState value)? loading,
    TResult Function(LoadedFeedbacksVacancyState value)? loaded,
    TResult Function(ErrorFeedbacksVacancyState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingFeedbacksVacancyState implements FeedbacksVacancyState {
  const factory LoadingFeedbacksVacancyState() = _$LoadingFeedbacksVacancyState;
}

/// @nodoc
abstract class $LoadedFeedbacksVacancyStateCopyWith<$Res> {
  factory $LoadedFeedbacksVacancyStateCopyWith(
          LoadedFeedbacksVacancyState value,
          $Res Function(LoadedFeedbacksVacancyState) then) =
      _$LoadedFeedbacksVacancyStateCopyWithImpl<$Res>;
  $Res call({FeedbackVacancy feedbacks});
}

/// @nodoc
class _$LoadedFeedbacksVacancyStateCopyWithImpl<$Res>
    extends _$FeedbacksVacancyStateCopyWithImpl<$Res>
    implements $LoadedFeedbacksVacancyStateCopyWith<$Res> {
  _$LoadedFeedbacksVacancyStateCopyWithImpl(LoadedFeedbacksVacancyState _value,
      $Res Function(LoadedFeedbacksVacancyState) _then)
      : super(_value, (v) => _then(v as LoadedFeedbacksVacancyState));

  @override
  LoadedFeedbacksVacancyState get _value =>
      super._value as LoadedFeedbacksVacancyState;

  @override
  $Res call({
    Object? feedbacks = freezed,
  }) {
    return _then(LoadedFeedbacksVacancyState(
      feedbacks: feedbacks == freezed
          ? _value.feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as FeedbackVacancy,
    ));
  }
}

/// @nodoc

class _$LoadedFeedbacksVacancyState implements LoadedFeedbacksVacancyState {
  const _$LoadedFeedbacksVacancyState({required this.feedbacks});

  @override
  final FeedbackVacancy feedbacks;

  @override
  String toString() {
    return 'FeedbacksVacancyState.loaded(feedbacks: $feedbacks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedFeedbacksVacancyState &&
            (identical(other.feedbacks, feedbacks) ||
                const DeepCollectionEquality()
                    .equals(other.feedbacks, feedbacks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(feedbacks);

  @JsonKey(ignore: true)
  @override
  $LoadedFeedbacksVacancyStateCopyWith<LoadedFeedbacksVacancyState>
      get copyWith => _$LoadedFeedbacksVacancyStateCopyWithImpl<
          LoadedFeedbacksVacancyState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(FeedbackVacancy feedbacks) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(feedbacks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(FeedbackVacancy feedbacks)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(feedbacks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyFeedbacksVacancyState value) empty,
    required TResult Function(LoadingFeedbacksVacancyState value) loading,
    required TResult Function(LoadedFeedbacksVacancyState value) loaded,
    required TResult Function(ErrorFeedbacksVacancyState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksVacancyState value)? empty,
    TResult Function(LoadingFeedbacksVacancyState value)? loading,
    TResult Function(LoadedFeedbacksVacancyState value)? loaded,
    TResult Function(ErrorFeedbacksVacancyState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedFeedbacksVacancyState implements FeedbacksVacancyState {
  const factory LoadedFeedbacksVacancyState(
      {required FeedbackVacancy feedbacks}) = _$LoadedFeedbacksVacancyState;

  FeedbackVacancy get feedbacks => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedFeedbacksVacancyStateCopyWith<LoadedFeedbacksVacancyState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorFeedbacksVacancyStateCopyWith<$Res> {
  factory $ErrorFeedbacksVacancyStateCopyWith(ErrorFeedbacksVacancyState value,
          $Res Function(ErrorFeedbacksVacancyState) then) =
      _$ErrorFeedbacksVacancyStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorFeedbacksVacancyStateCopyWithImpl<$Res>
    extends _$FeedbacksVacancyStateCopyWithImpl<$Res>
    implements $ErrorFeedbacksVacancyStateCopyWith<$Res> {
  _$ErrorFeedbacksVacancyStateCopyWithImpl(ErrorFeedbacksVacancyState _value,
      $Res Function(ErrorFeedbacksVacancyState) _then)
      : super(_value, (v) => _then(v as ErrorFeedbacksVacancyState));

  @override
  ErrorFeedbacksVacancyState get _value =>
      super._value as ErrorFeedbacksVacancyState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorFeedbacksVacancyState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorFeedbacksVacancyState implements ErrorFeedbacksVacancyState {
  const _$ErrorFeedbacksVacancyState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FeedbacksVacancyState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorFeedbacksVacancyState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorFeedbacksVacancyStateCopyWith<ErrorFeedbacksVacancyState>
      get copyWith =>
          _$ErrorFeedbacksVacancyStateCopyWithImpl<ErrorFeedbacksVacancyState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(FeedbackVacancy feedbacks) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(FeedbackVacancy feedbacks)? loaded,
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
    required TResult Function(EmptyFeedbacksVacancyState value) empty,
    required TResult Function(LoadingFeedbacksVacancyState value) loading,
    required TResult Function(LoadedFeedbacksVacancyState value) loaded,
    required TResult Function(ErrorFeedbacksVacancyState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksVacancyState value)? empty,
    TResult Function(LoadingFeedbacksVacancyState value)? loading,
    TResult Function(LoadedFeedbacksVacancyState value)? loaded,
    TResult Function(ErrorFeedbacksVacancyState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorFeedbacksVacancyState implements FeedbacksVacancyState {
  const factory ErrorFeedbacksVacancyState({required String message}) =
      _$ErrorFeedbacksVacancyState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorFeedbacksVacancyStateCopyWith<ErrorFeedbacksVacancyState>
      get copyWith => throw _privateConstructorUsedError;
}
