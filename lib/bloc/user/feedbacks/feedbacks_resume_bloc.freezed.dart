// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'feedbacks_resume_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FeedbacksResumeEventTearOff {
  const _$FeedbacksResumeEventTearOff();

  _GetFeedbacksResumeEvent getFeedbacks() {
    return const _GetFeedbacksResumeEvent();
  }

  _SendFeedbacksResumeEvent sendFeedbacks(
      {required int resumeId, required bool accept, required int vacancyId}) {
    return _SendFeedbacksResumeEvent(
      resumeId: resumeId,
      accept: accept,
      vacancyId: vacancyId,
    );
  }
}

/// @nodoc
const $FeedbacksResumeEvent = _$FeedbacksResumeEventTearOff();

/// @nodoc
mixin _$FeedbacksResumeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFeedbacks,
    required TResult Function(int resumeId, bool accept, int vacancyId)
        sendFeedbacks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeedbacks,
    TResult Function(int resumeId, bool accept, int vacancyId)? sendFeedbacks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFeedbacksResumeEvent value) getFeedbacks,
    required TResult Function(_SendFeedbacksResumeEvent value) sendFeedbacks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFeedbacksResumeEvent value)? getFeedbacks,
    TResult Function(_SendFeedbacksResumeEvent value)? sendFeedbacks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbacksResumeEventCopyWith<$Res> {
  factory $FeedbacksResumeEventCopyWith(FeedbacksResumeEvent value,
          $Res Function(FeedbacksResumeEvent) then) =
      _$FeedbacksResumeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedbacksResumeEventCopyWithImpl<$Res>
    implements $FeedbacksResumeEventCopyWith<$Res> {
  _$FeedbacksResumeEventCopyWithImpl(this._value, this._then);

  final FeedbacksResumeEvent _value;
  // ignore: unused_field
  final $Res Function(FeedbacksResumeEvent) _then;
}

/// @nodoc
abstract class _$GetFeedbacksResumeEventCopyWith<$Res> {
  factory _$GetFeedbacksResumeEventCopyWith(_GetFeedbacksResumeEvent value,
          $Res Function(_GetFeedbacksResumeEvent) then) =
      __$GetFeedbacksResumeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetFeedbacksResumeEventCopyWithImpl<$Res>
    extends _$FeedbacksResumeEventCopyWithImpl<$Res>
    implements _$GetFeedbacksResumeEventCopyWith<$Res> {
  __$GetFeedbacksResumeEventCopyWithImpl(_GetFeedbacksResumeEvent _value,
      $Res Function(_GetFeedbacksResumeEvent) _then)
      : super(_value, (v) => _then(v as _GetFeedbacksResumeEvent));

  @override
  _GetFeedbacksResumeEvent get _value =>
      super._value as _GetFeedbacksResumeEvent;
}

/// @nodoc

class _$_GetFeedbacksResumeEvent implements _GetFeedbacksResumeEvent {
  const _$_GetFeedbacksResumeEvent();

  @override
  String toString() {
    return 'FeedbacksResumeEvent.getFeedbacks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetFeedbacksResumeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFeedbacks,
    required TResult Function(int resumeId, bool accept, int vacancyId)
        sendFeedbacks,
  }) {
    return getFeedbacks();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeedbacks,
    TResult Function(int resumeId, bool accept, int vacancyId)? sendFeedbacks,
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
    required TResult Function(_GetFeedbacksResumeEvent value) getFeedbacks,
    required TResult Function(_SendFeedbacksResumeEvent value) sendFeedbacks,
  }) {
    return getFeedbacks(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFeedbacksResumeEvent value)? getFeedbacks,
    TResult Function(_SendFeedbacksResumeEvent value)? sendFeedbacks,
    required TResult orElse(),
  }) {
    if (getFeedbacks != null) {
      return getFeedbacks(this);
    }
    return orElse();
  }
}

abstract class _GetFeedbacksResumeEvent implements FeedbacksResumeEvent {
  const factory _GetFeedbacksResumeEvent() = _$_GetFeedbacksResumeEvent;
}

/// @nodoc
abstract class _$SendFeedbacksResumeEventCopyWith<$Res> {
  factory _$SendFeedbacksResumeEventCopyWith(_SendFeedbacksResumeEvent value,
          $Res Function(_SendFeedbacksResumeEvent) then) =
      __$SendFeedbacksResumeEventCopyWithImpl<$Res>;
  $Res call({int resumeId, bool accept, int vacancyId});
}

/// @nodoc
class __$SendFeedbacksResumeEventCopyWithImpl<$Res>
    extends _$FeedbacksResumeEventCopyWithImpl<$Res>
    implements _$SendFeedbacksResumeEventCopyWith<$Res> {
  __$SendFeedbacksResumeEventCopyWithImpl(_SendFeedbacksResumeEvent _value,
      $Res Function(_SendFeedbacksResumeEvent) _then)
      : super(_value, (v) => _then(v as _SendFeedbacksResumeEvent));

  @override
  _SendFeedbacksResumeEvent get _value =>
      super._value as _SendFeedbacksResumeEvent;

  @override
  $Res call({
    Object? resumeId = freezed,
    Object? accept = freezed,
    Object? vacancyId = freezed,
  }) {
    return _then(_SendFeedbacksResumeEvent(
      resumeId: resumeId == freezed
          ? _value.resumeId
          : resumeId // ignore: cast_nullable_to_non_nullable
              as int,
      accept: accept == freezed
          ? _value.accept
          : accept // ignore: cast_nullable_to_non_nullable
              as bool,
      vacancyId: vacancyId == freezed
          ? _value.vacancyId
          : vacancyId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SendFeedbacksResumeEvent implements _SendFeedbacksResumeEvent {
  const _$_SendFeedbacksResumeEvent(
      {required this.resumeId, required this.accept, required this.vacancyId});

  @override
  final int resumeId;
  @override
  final bool accept;
  @override
  final int vacancyId;

  @override
  String toString() {
    return 'FeedbacksResumeEvent.sendFeedbacks(resumeId: $resumeId, accept: $accept, vacancyId: $vacancyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendFeedbacksResumeEvent &&
            (identical(other.resumeId, resumeId) ||
                const DeepCollectionEquality()
                    .equals(other.resumeId, resumeId)) &&
            (identical(other.accept, accept) ||
                const DeepCollectionEquality().equals(other.accept, accept)) &&
            (identical(other.vacancyId, vacancyId) ||
                const DeepCollectionEquality()
                    .equals(other.vacancyId, vacancyId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(resumeId) ^
      const DeepCollectionEquality().hash(accept) ^
      const DeepCollectionEquality().hash(vacancyId);

  @JsonKey(ignore: true)
  @override
  _$SendFeedbacksResumeEventCopyWith<_SendFeedbacksResumeEvent> get copyWith =>
      __$SendFeedbacksResumeEventCopyWithImpl<_SendFeedbacksResumeEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFeedbacks,
    required TResult Function(int resumeId, bool accept, int vacancyId)
        sendFeedbacks,
  }) {
    return sendFeedbacks(resumeId, accept, vacancyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeedbacks,
    TResult Function(int resumeId, bool accept, int vacancyId)? sendFeedbacks,
    required TResult orElse(),
  }) {
    if (sendFeedbacks != null) {
      return sendFeedbacks(resumeId, accept, vacancyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFeedbacksResumeEvent value) getFeedbacks,
    required TResult Function(_SendFeedbacksResumeEvent value) sendFeedbacks,
  }) {
    return sendFeedbacks(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFeedbacksResumeEvent value)? getFeedbacks,
    TResult Function(_SendFeedbacksResumeEvent value)? sendFeedbacks,
    required TResult orElse(),
  }) {
    if (sendFeedbacks != null) {
      return sendFeedbacks(this);
    }
    return orElse();
  }
}

abstract class _SendFeedbacksResumeEvent implements FeedbacksResumeEvent {
  const factory _SendFeedbacksResumeEvent(
      {required int resumeId,
      required bool accept,
      required int vacancyId}) = _$_SendFeedbacksResumeEvent;

  int get resumeId => throw _privateConstructorUsedError;
  bool get accept => throw _privateConstructorUsedError;
  int get vacancyId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SendFeedbacksResumeEventCopyWith<_SendFeedbacksResumeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FeedbacksResumeStateTearOff {
  const _$FeedbacksResumeStateTearOff();

  EmptyFeedbacksResumeState empty() {
    return const EmptyFeedbacksResumeState();
  }

  LoadingFeedbacksResumeState loading() {
    return const LoadingFeedbacksResumeState();
  }

  NoFeedbacksResumeState noFeedbacks({required String status}) {
    return NoFeedbacksResumeState(
      status: status,
    );
  }

  LoadedFeedbacksResumeState loaded(
      {required List<FeedbackResume> feedbacks,
      required List<Invite> invites,
      required List<AllChats> allChats,
      required String resumeName,
      required String status}) {
    return LoadedFeedbacksResumeState(
      feedbacks: feedbacks,
      invites: invites,
      allChats: allChats,
      resumeName: resumeName,
      status: status,
    );
  }

  ErrorFeedbacksResumeState error({required String message}) {
    return ErrorFeedbacksResumeState(
      message: message,
    );
  }
}

/// @nodoc
const $FeedbacksResumeState = _$FeedbacksResumeStateTearOff();

/// @nodoc
mixin _$FeedbacksResumeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String status) noFeedbacks,
    required TResult Function(
            List<FeedbackResume> feedbacks,
            List<Invite> invites,
            List<AllChats> allChats,
            String resumeName,
            String status)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String status)? noFeedbacks,
    TResult Function(List<FeedbackResume> feedbacks, List<Invite> invites,
            List<AllChats> allChats, String resumeName, String status)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyFeedbacksResumeState value) empty,
    required TResult Function(LoadingFeedbacksResumeState value) loading,
    required TResult Function(NoFeedbacksResumeState value) noFeedbacks,
    required TResult Function(LoadedFeedbacksResumeState value) loaded,
    required TResult Function(ErrorFeedbacksResumeState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksResumeState value)? empty,
    TResult Function(LoadingFeedbacksResumeState value)? loading,
    TResult Function(NoFeedbacksResumeState value)? noFeedbacks,
    TResult Function(LoadedFeedbacksResumeState value)? loaded,
    TResult Function(ErrorFeedbacksResumeState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbacksResumeStateCopyWith<$Res> {
  factory $FeedbacksResumeStateCopyWith(FeedbacksResumeState value,
          $Res Function(FeedbacksResumeState) then) =
      _$FeedbacksResumeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedbacksResumeStateCopyWithImpl<$Res>
    implements $FeedbacksResumeStateCopyWith<$Res> {
  _$FeedbacksResumeStateCopyWithImpl(this._value, this._then);

  final FeedbacksResumeState _value;
  // ignore: unused_field
  final $Res Function(FeedbacksResumeState) _then;
}

/// @nodoc
abstract class $EmptyFeedbacksResumeStateCopyWith<$Res> {
  factory $EmptyFeedbacksResumeStateCopyWith(EmptyFeedbacksResumeState value,
          $Res Function(EmptyFeedbacksResumeState) then) =
      _$EmptyFeedbacksResumeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyFeedbacksResumeStateCopyWithImpl<$Res>
    extends _$FeedbacksResumeStateCopyWithImpl<$Res>
    implements $EmptyFeedbacksResumeStateCopyWith<$Res> {
  _$EmptyFeedbacksResumeStateCopyWithImpl(EmptyFeedbacksResumeState _value,
      $Res Function(EmptyFeedbacksResumeState) _then)
      : super(_value, (v) => _then(v as EmptyFeedbacksResumeState));

  @override
  EmptyFeedbacksResumeState get _value =>
      super._value as EmptyFeedbacksResumeState;
}

/// @nodoc

class _$EmptyFeedbacksResumeState implements EmptyFeedbacksResumeState {
  const _$EmptyFeedbacksResumeState();

  @override
  String toString() {
    return 'FeedbacksResumeState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyFeedbacksResumeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String status) noFeedbacks,
    required TResult Function(
            List<FeedbackResume> feedbacks,
            List<Invite> invites,
            List<AllChats> allChats,
            String resumeName,
            String status)
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
    TResult Function(String status)? noFeedbacks,
    TResult Function(List<FeedbackResume> feedbacks, List<Invite> invites,
            List<AllChats> allChats, String resumeName, String status)?
        loaded,
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
    required TResult Function(EmptyFeedbacksResumeState value) empty,
    required TResult Function(LoadingFeedbacksResumeState value) loading,
    required TResult Function(NoFeedbacksResumeState value) noFeedbacks,
    required TResult Function(LoadedFeedbacksResumeState value) loaded,
    required TResult Function(ErrorFeedbacksResumeState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksResumeState value)? empty,
    TResult Function(LoadingFeedbacksResumeState value)? loading,
    TResult Function(NoFeedbacksResumeState value)? noFeedbacks,
    TResult Function(LoadedFeedbacksResumeState value)? loaded,
    TResult Function(ErrorFeedbacksResumeState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyFeedbacksResumeState implements FeedbacksResumeState {
  const factory EmptyFeedbacksResumeState() = _$EmptyFeedbacksResumeState;
}

/// @nodoc
abstract class $LoadingFeedbacksResumeStateCopyWith<$Res> {
  factory $LoadingFeedbacksResumeStateCopyWith(
          LoadingFeedbacksResumeState value,
          $Res Function(LoadingFeedbacksResumeState) then) =
      _$LoadingFeedbacksResumeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingFeedbacksResumeStateCopyWithImpl<$Res>
    extends _$FeedbacksResumeStateCopyWithImpl<$Res>
    implements $LoadingFeedbacksResumeStateCopyWith<$Res> {
  _$LoadingFeedbacksResumeStateCopyWithImpl(LoadingFeedbacksResumeState _value,
      $Res Function(LoadingFeedbacksResumeState) _then)
      : super(_value, (v) => _then(v as LoadingFeedbacksResumeState));

  @override
  LoadingFeedbacksResumeState get _value =>
      super._value as LoadingFeedbacksResumeState;
}

/// @nodoc

class _$LoadingFeedbacksResumeState implements LoadingFeedbacksResumeState {
  const _$LoadingFeedbacksResumeState();

  @override
  String toString() {
    return 'FeedbacksResumeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingFeedbacksResumeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String status) noFeedbacks,
    required TResult Function(
            List<FeedbackResume> feedbacks,
            List<Invite> invites,
            List<AllChats> allChats,
            String resumeName,
            String status)
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
    TResult Function(String status)? noFeedbacks,
    TResult Function(List<FeedbackResume> feedbacks, List<Invite> invites,
            List<AllChats> allChats, String resumeName, String status)?
        loaded,
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
    required TResult Function(EmptyFeedbacksResumeState value) empty,
    required TResult Function(LoadingFeedbacksResumeState value) loading,
    required TResult Function(NoFeedbacksResumeState value) noFeedbacks,
    required TResult Function(LoadedFeedbacksResumeState value) loaded,
    required TResult Function(ErrorFeedbacksResumeState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksResumeState value)? empty,
    TResult Function(LoadingFeedbacksResumeState value)? loading,
    TResult Function(NoFeedbacksResumeState value)? noFeedbacks,
    TResult Function(LoadedFeedbacksResumeState value)? loaded,
    TResult Function(ErrorFeedbacksResumeState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingFeedbacksResumeState implements FeedbacksResumeState {
  const factory LoadingFeedbacksResumeState() = _$LoadingFeedbacksResumeState;
}

/// @nodoc
abstract class $NoFeedbacksResumeStateCopyWith<$Res> {
  factory $NoFeedbacksResumeStateCopyWith(NoFeedbacksResumeState value,
          $Res Function(NoFeedbacksResumeState) then) =
      _$NoFeedbacksResumeStateCopyWithImpl<$Res>;
  $Res call({String status});
}

/// @nodoc
class _$NoFeedbacksResumeStateCopyWithImpl<$Res>
    extends _$FeedbacksResumeStateCopyWithImpl<$Res>
    implements $NoFeedbacksResumeStateCopyWith<$Res> {
  _$NoFeedbacksResumeStateCopyWithImpl(NoFeedbacksResumeState _value,
      $Res Function(NoFeedbacksResumeState) _then)
      : super(_value, (v) => _then(v as NoFeedbacksResumeState));

  @override
  NoFeedbacksResumeState get _value => super._value as NoFeedbacksResumeState;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(NoFeedbacksResumeState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoFeedbacksResumeState implements NoFeedbacksResumeState {
  const _$NoFeedbacksResumeState({required this.status});

  @override
  final String status;

  @override
  String toString() {
    return 'FeedbacksResumeState.noFeedbacks(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NoFeedbacksResumeState &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $NoFeedbacksResumeStateCopyWith<NoFeedbacksResumeState> get copyWith =>
      _$NoFeedbacksResumeStateCopyWithImpl<NoFeedbacksResumeState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String status) noFeedbacks,
    required TResult Function(
            List<FeedbackResume> feedbacks,
            List<Invite> invites,
            List<AllChats> allChats,
            String resumeName,
            String status)
        loaded,
    required TResult Function(String message) error,
  }) {
    return noFeedbacks(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String status)? noFeedbacks,
    TResult Function(List<FeedbackResume> feedbacks, List<Invite> invites,
            List<AllChats> allChats, String resumeName, String status)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (noFeedbacks != null) {
      return noFeedbacks(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyFeedbacksResumeState value) empty,
    required TResult Function(LoadingFeedbacksResumeState value) loading,
    required TResult Function(NoFeedbacksResumeState value) noFeedbacks,
    required TResult Function(LoadedFeedbacksResumeState value) loaded,
    required TResult Function(ErrorFeedbacksResumeState value) error,
  }) {
    return noFeedbacks(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksResumeState value)? empty,
    TResult Function(LoadingFeedbacksResumeState value)? loading,
    TResult Function(NoFeedbacksResumeState value)? noFeedbacks,
    TResult Function(LoadedFeedbacksResumeState value)? loaded,
    TResult Function(ErrorFeedbacksResumeState value)? error,
    required TResult orElse(),
  }) {
    if (noFeedbacks != null) {
      return noFeedbacks(this);
    }
    return orElse();
  }
}

abstract class NoFeedbacksResumeState implements FeedbacksResumeState {
  const factory NoFeedbacksResumeState({required String status}) =
      _$NoFeedbacksResumeState;

  String get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoFeedbacksResumeStateCopyWith<NoFeedbacksResumeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedFeedbacksResumeStateCopyWith<$Res> {
  factory $LoadedFeedbacksResumeStateCopyWith(LoadedFeedbacksResumeState value,
          $Res Function(LoadedFeedbacksResumeState) then) =
      _$LoadedFeedbacksResumeStateCopyWithImpl<$Res>;
  $Res call(
      {List<FeedbackResume> feedbacks,
      List<Invite> invites,
      List<AllChats> allChats,
      String resumeName,
      String status});
}

/// @nodoc
class _$LoadedFeedbacksResumeStateCopyWithImpl<$Res>
    extends _$FeedbacksResumeStateCopyWithImpl<$Res>
    implements $LoadedFeedbacksResumeStateCopyWith<$Res> {
  _$LoadedFeedbacksResumeStateCopyWithImpl(LoadedFeedbacksResumeState _value,
      $Res Function(LoadedFeedbacksResumeState) _then)
      : super(_value, (v) => _then(v as LoadedFeedbacksResumeState));

  @override
  LoadedFeedbacksResumeState get _value =>
      super._value as LoadedFeedbacksResumeState;

  @override
  $Res call({
    Object? feedbacks = freezed,
    Object? invites = freezed,
    Object? allChats = freezed,
    Object? resumeName = freezed,
    Object? status = freezed,
  }) {
    return _then(LoadedFeedbacksResumeState(
      feedbacks: feedbacks == freezed
          ? _value.feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<FeedbackResume>,
      invites: invites == freezed
          ? _value.invites
          : invites // ignore: cast_nullable_to_non_nullable
              as List<Invite>,
      allChats: allChats == freezed
          ? _value.allChats
          : allChats // ignore: cast_nullable_to_non_nullable
              as List<AllChats>,
      resumeName: resumeName == freezed
          ? _value.resumeName
          : resumeName // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedFeedbacksResumeState implements LoadedFeedbacksResumeState {
  const _$LoadedFeedbacksResumeState(
      {required this.feedbacks,
      required this.invites,
      required this.allChats,
      required this.resumeName,
      required this.status});

  @override
  final List<FeedbackResume> feedbacks;
  @override
  final List<Invite> invites;
  @override
  final List<AllChats> allChats;
  @override
  final String resumeName;
  @override
  final String status;

  @override
  String toString() {
    return 'FeedbacksResumeState.loaded(feedbacks: $feedbacks, invites: $invites, allChats: $allChats, resumeName: $resumeName, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedFeedbacksResumeState &&
            (identical(other.feedbacks, feedbacks) ||
                const DeepCollectionEquality()
                    .equals(other.feedbacks, feedbacks)) &&
            (identical(other.invites, invites) ||
                const DeepCollectionEquality()
                    .equals(other.invites, invites)) &&
            (identical(other.allChats, allChats) ||
                const DeepCollectionEquality()
                    .equals(other.allChats, allChats)) &&
            (identical(other.resumeName, resumeName) ||
                const DeepCollectionEquality()
                    .equals(other.resumeName, resumeName)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(feedbacks) ^
      const DeepCollectionEquality().hash(invites) ^
      const DeepCollectionEquality().hash(allChats) ^
      const DeepCollectionEquality().hash(resumeName) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $LoadedFeedbacksResumeStateCopyWith<LoadedFeedbacksResumeState>
      get copyWith =>
          _$LoadedFeedbacksResumeStateCopyWithImpl<LoadedFeedbacksResumeState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String status) noFeedbacks,
    required TResult Function(
            List<FeedbackResume> feedbacks,
            List<Invite> invites,
            List<AllChats> allChats,
            String resumeName,
            String status)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(feedbacks, invites, allChats, resumeName, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String status)? noFeedbacks,
    TResult Function(List<FeedbackResume> feedbacks, List<Invite> invites,
            List<AllChats> allChats, String resumeName, String status)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(feedbacks, invites, allChats, resumeName, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyFeedbacksResumeState value) empty,
    required TResult Function(LoadingFeedbacksResumeState value) loading,
    required TResult Function(NoFeedbacksResumeState value) noFeedbacks,
    required TResult Function(LoadedFeedbacksResumeState value) loaded,
    required TResult Function(ErrorFeedbacksResumeState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksResumeState value)? empty,
    TResult Function(LoadingFeedbacksResumeState value)? loading,
    TResult Function(NoFeedbacksResumeState value)? noFeedbacks,
    TResult Function(LoadedFeedbacksResumeState value)? loaded,
    TResult Function(ErrorFeedbacksResumeState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedFeedbacksResumeState implements FeedbacksResumeState {
  const factory LoadedFeedbacksResumeState(
      {required List<FeedbackResume> feedbacks,
      required List<Invite> invites,
      required List<AllChats> allChats,
      required String resumeName,
      required String status}) = _$LoadedFeedbacksResumeState;

  List<FeedbackResume> get feedbacks => throw _privateConstructorUsedError;
  List<Invite> get invites => throw _privateConstructorUsedError;
  List<AllChats> get allChats => throw _privateConstructorUsedError;
  String get resumeName => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedFeedbacksResumeStateCopyWith<LoadedFeedbacksResumeState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorFeedbacksResumeStateCopyWith<$Res> {
  factory $ErrorFeedbacksResumeStateCopyWith(ErrorFeedbacksResumeState value,
          $Res Function(ErrorFeedbacksResumeState) then) =
      _$ErrorFeedbacksResumeStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorFeedbacksResumeStateCopyWithImpl<$Res>
    extends _$FeedbacksResumeStateCopyWithImpl<$Res>
    implements $ErrorFeedbacksResumeStateCopyWith<$Res> {
  _$ErrorFeedbacksResumeStateCopyWithImpl(ErrorFeedbacksResumeState _value,
      $Res Function(ErrorFeedbacksResumeState) _then)
      : super(_value, (v) => _then(v as ErrorFeedbacksResumeState));

  @override
  ErrorFeedbacksResumeState get _value =>
      super._value as ErrorFeedbacksResumeState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorFeedbacksResumeState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorFeedbacksResumeState implements ErrorFeedbacksResumeState {
  const _$ErrorFeedbacksResumeState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FeedbacksResumeState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorFeedbacksResumeState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorFeedbacksResumeStateCopyWith<ErrorFeedbacksResumeState> get copyWith =>
      _$ErrorFeedbacksResumeStateCopyWithImpl<ErrorFeedbacksResumeState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String status) noFeedbacks,
    required TResult Function(
            List<FeedbackResume> feedbacks,
            List<Invite> invites,
            List<AllChats> allChats,
            String resumeName,
            String status)
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
    TResult Function(String status)? noFeedbacks,
    TResult Function(List<FeedbackResume> feedbacks, List<Invite> invites,
            List<AllChats> allChats, String resumeName, String status)?
        loaded,
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
    required TResult Function(EmptyFeedbacksResumeState value) empty,
    required TResult Function(LoadingFeedbacksResumeState value) loading,
    required TResult Function(NoFeedbacksResumeState value) noFeedbacks,
    required TResult Function(LoadedFeedbacksResumeState value) loaded,
    required TResult Function(ErrorFeedbacksResumeState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksResumeState value)? empty,
    TResult Function(LoadingFeedbacksResumeState value)? loading,
    TResult Function(NoFeedbacksResumeState value)? noFeedbacks,
    TResult Function(LoadedFeedbacksResumeState value)? loaded,
    TResult Function(ErrorFeedbacksResumeState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorFeedbacksResumeState implements FeedbacksResumeState {
  const factory ErrorFeedbacksResumeState({required String message}) =
      _$ErrorFeedbacksResumeState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorFeedbacksResumeStateCopyWith<ErrorFeedbacksResumeState> get copyWith =>
      throw _privateConstructorUsedError;
}
