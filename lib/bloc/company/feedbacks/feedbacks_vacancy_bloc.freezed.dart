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

  _PostInviteFeedbacksVacancyEvent postInvite(
      {required String date,
      required String contact,
      required String contactType,
      required String answer,
      required int resume,
      required int vacancy}) {
    return _PostInviteFeedbacksVacancyEvent(
      date: date,
      contact: contact,
      contactType: contactType,
      answer: answer,
      resume: resume,
      vacancy: vacancy,
    );
  }
}

/// @nodoc
const $FeedbacksVacancyEvent = _$FeedbacksVacancyEventTearOff();

/// @nodoc
mixin _$FeedbacksVacancyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFeedbacks,
    required TResult Function(String date, String contact, String contactType,
            String answer, int resume, int vacancy)
        postInvite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeedbacks,
    TResult Function(String date, String contact, String contactType,
            String answer, int resume, int vacancy)?
        postInvite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFeedbacksVacancyEvent value) getFeedbacks,
    required TResult Function(_PostInviteFeedbacksVacancyEvent value)
        postInvite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFeedbacksVacancyEvent value)? getFeedbacks,
    TResult Function(_PostInviteFeedbacksVacancyEvent value)? postInvite,
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
    required TResult Function(String date, String contact, String contactType,
            String answer, int resume, int vacancy)
        postInvite,
  }) {
    return getFeedbacks();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeedbacks,
    TResult Function(String date, String contact, String contactType,
            String answer, int resume, int vacancy)?
        postInvite,
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
    required TResult Function(_PostInviteFeedbacksVacancyEvent value)
        postInvite,
  }) {
    return getFeedbacks(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFeedbacksVacancyEvent value)? getFeedbacks,
    TResult Function(_PostInviteFeedbacksVacancyEvent value)? postInvite,
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
abstract class _$PostInviteFeedbacksVacancyEventCopyWith<$Res> {
  factory _$PostInviteFeedbacksVacancyEventCopyWith(
          _PostInviteFeedbacksVacancyEvent value,
          $Res Function(_PostInviteFeedbacksVacancyEvent) then) =
      __$PostInviteFeedbacksVacancyEventCopyWithImpl<$Res>;
  $Res call(
      {String date,
      String contact,
      String contactType,
      String answer,
      int resume,
      int vacancy});
}

/// @nodoc
class __$PostInviteFeedbacksVacancyEventCopyWithImpl<$Res>
    extends _$FeedbacksVacancyEventCopyWithImpl<$Res>
    implements _$PostInviteFeedbacksVacancyEventCopyWith<$Res> {
  __$PostInviteFeedbacksVacancyEventCopyWithImpl(
      _PostInviteFeedbacksVacancyEvent _value,
      $Res Function(_PostInviteFeedbacksVacancyEvent) _then)
      : super(_value, (v) => _then(v as _PostInviteFeedbacksVacancyEvent));

  @override
  _PostInviteFeedbacksVacancyEvent get _value =>
      super._value as _PostInviteFeedbacksVacancyEvent;

  @override
  $Res call({
    Object? date = freezed,
    Object? contact = freezed,
    Object? contactType = freezed,
    Object? answer = freezed,
    Object? resume = freezed,
    Object? vacancy = freezed,
  }) {
    return _then(_PostInviteFeedbacksVacancyEvent(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      contactType: contactType == freezed
          ? _value.contactType
          : contactType // ignore: cast_nullable_to_non_nullable
              as String,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      resume: resume == freezed
          ? _value.resume
          : resume // ignore: cast_nullable_to_non_nullable
              as int,
      vacancy: vacancy == freezed
          ? _value.vacancy
          : vacancy // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PostInviteFeedbacksVacancyEvent
    implements _PostInviteFeedbacksVacancyEvent {
  const _$_PostInviteFeedbacksVacancyEvent(
      {required this.date,
      required this.contact,
      required this.contactType,
      required this.answer,
      required this.resume,
      required this.vacancy});

  @override
  final String date;
  @override
  final String contact;
  @override
  final String contactType;
  @override
  final String answer;
  @override
  final int resume;
  @override
  final int vacancy;

  @override
  String toString() {
    return 'FeedbacksVacancyEvent.postInvite(date: $date, contact: $contact, contactType: $contactType, answer: $answer, resume: $resume, vacancy: $vacancy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostInviteFeedbacksVacancyEvent &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality()
                    .equals(other.contact, contact)) &&
            (identical(other.contactType, contactType) ||
                const DeepCollectionEquality()
                    .equals(other.contactType, contactType)) &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)) &&
            (identical(other.resume, resume) ||
                const DeepCollectionEquality().equals(other.resume, resume)) &&
            (identical(other.vacancy, vacancy) ||
                const DeepCollectionEquality().equals(other.vacancy, vacancy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(contact) ^
      const DeepCollectionEquality().hash(contactType) ^
      const DeepCollectionEquality().hash(answer) ^
      const DeepCollectionEquality().hash(resume) ^
      const DeepCollectionEquality().hash(vacancy);

  @JsonKey(ignore: true)
  @override
  _$PostInviteFeedbacksVacancyEventCopyWith<_PostInviteFeedbacksVacancyEvent>
      get copyWith => __$PostInviteFeedbacksVacancyEventCopyWithImpl<
          _PostInviteFeedbacksVacancyEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFeedbacks,
    required TResult Function(String date, String contact, String contactType,
            String answer, int resume, int vacancy)
        postInvite,
  }) {
    return postInvite(date, contact, contactType, answer, resume, vacancy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeedbacks,
    TResult Function(String date, String contact, String contactType,
            String answer, int resume, int vacancy)?
        postInvite,
    required TResult orElse(),
  }) {
    if (postInvite != null) {
      return postInvite(date, contact, contactType, answer, resume, vacancy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFeedbacksVacancyEvent value) getFeedbacks,
    required TResult Function(_PostInviteFeedbacksVacancyEvent value)
        postInvite,
  }) {
    return postInvite(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFeedbacksVacancyEvent value)? getFeedbacks,
    TResult Function(_PostInviteFeedbacksVacancyEvent value)? postInvite,
    required TResult orElse(),
  }) {
    if (postInvite != null) {
      return postInvite(this);
    }
    return orElse();
  }
}

abstract class _PostInviteFeedbacksVacancyEvent
    implements FeedbacksVacancyEvent {
  const factory _PostInviteFeedbacksVacancyEvent(
      {required String date,
      required String contact,
      required String contactType,
      required String answer,
      required int resume,
      required int vacancy}) = _$_PostInviteFeedbacksVacancyEvent;

  String get date => throw _privateConstructorUsedError;
  String get contact => throw _privateConstructorUsedError;
  String get contactType => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  int get resume => throw _privateConstructorUsedError;
  int get vacancy => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PostInviteFeedbacksVacancyEventCopyWith<_PostInviteFeedbacksVacancyEvent>
      get copyWith => throw _privateConstructorUsedError;
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

  NoFeedbacksVacancyState noFeedbacks() {
    return const NoFeedbacksVacancyState();
  }

  NoVacancyState noVacancy() {
    return const NoVacancyState();
  }

  LoadedFeedbacksVacancyState loaded(
      {required List<dynamic> feedbacks,
      required int vacancyId,
      required String status}) {
    return LoadedFeedbacksVacancyState(
      feedbacks: feedbacks,
      vacancyId: vacancyId,
      status: status,
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
    required TResult Function() noFeedbacks,
    required TResult Function() noVacancy,
    required TResult Function(
            List<dynamic> feedbacks, int vacancyId, String status)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function()? noFeedbacks,
    TResult Function()? noVacancy,
    TResult Function(List<dynamic> feedbacks, int vacancyId, String status)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyFeedbacksVacancyState value) empty,
    required TResult Function(LoadingFeedbacksVacancyState value) loading,
    required TResult Function(NoFeedbacksVacancyState value) noFeedbacks,
    required TResult Function(NoVacancyState value) noVacancy,
    required TResult Function(LoadedFeedbacksVacancyState value) loaded,
    required TResult Function(ErrorFeedbacksVacancyState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksVacancyState value)? empty,
    TResult Function(LoadingFeedbacksVacancyState value)? loading,
    TResult Function(NoFeedbacksVacancyState value)? noFeedbacks,
    TResult Function(NoVacancyState value)? noVacancy,
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
    required TResult Function() noFeedbacks,
    required TResult Function() noVacancy,
    required TResult Function(
            List<dynamic> feedbacks, int vacancyId, String status)
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
    TResult Function()? noFeedbacks,
    TResult Function()? noVacancy,
    TResult Function(List<dynamic> feedbacks, int vacancyId, String status)?
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
    required TResult Function(EmptyFeedbacksVacancyState value) empty,
    required TResult Function(LoadingFeedbacksVacancyState value) loading,
    required TResult Function(NoFeedbacksVacancyState value) noFeedbacks,
    required TResult Function(NoVacancyState value) noVacancy,
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
    TResult Function(NoFeedbacksVacancyState value)? noFeedbacks,
    TResult Function(NoVacancyState value)? noVacancy,
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
    required TResult Function() noFeedbacks,
    required TResult Function() noVacancy,
    required TResult Function(
            List<dynamic> feedbacks, int vacancyId, String status)
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
    TResult Function()? noFeedbacks,
    TResult Function()? noVacancy,
    TResult Function(List<dynamic> feedbacks, int vacancyId, String status)?
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
    required TResult Function(EmptyFeedbacksVacancyState value) empty,
    required TResult Function(LoadingFeedbacksVacancyState value) loading,
    required TResult Function(NoFeedbacksVacancyState value) noFeedbacks,
    required TResult Function(NoVacancyState value) noVacancy,
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
    TResult Function(NoFeedbacksVacancyState value)? noFeedbacks,
    TResult Function(NoVacancyState value)? noVacancy,
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
abstract class $NoFeedbacksVacancyStateCopyWith<$Res> {
  factory $NoFeedbacksVacancyStateCopyWith(NoFeedbacksVacancyState value,
          $Res Function(NoFeedbacksVacancyState) then) =
      _$NoFeedbacksVacancyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoFeedbacksVacancyStateCopyWithImpl<$Res>
    extends _$FeedbacksVacancyStateCopyWithImpl<$Res>
    implements $NoFeedbacksVacancyStateCopyWith<$Res> {
  _$NoFeedbacksVacancyStateCopyWithImpl(NoFeedbacksVacancyState _value,
      $Res Function(NoFeedbacksVacancyState) _then)
      : super(_value, (v) => _then(v as NoFeedbacksVacancyState));

  @override
  NoFeedbacksVacancyState get _value => super._value as NoFeedbacksVacancyState;
}

/// @nodoc

class _$NoFeedbacksVacancyState implements NoFeedbacksVacancyState {
  const _$NoFeedbacksVacancyState();

  @override
  String toString() {
    return 'FeedbacksVacancyState.noFeedbacks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoFeedbacksVacancyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function() noFeedbacks,
    required TResult Function() noVacancy,
    required TResult Function(
            List<dynamic> feedbacks, int vacancyId, String status)
        loaded,
    required TResult Function(String message) error,
  }) {
    return noFeedbacks();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function()? noFeedbacks,
    TResult Function()? noVacancy,
    TResult Function(List<dynamic> feedbacks, int vacancyId, String status)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (noFeedbacks != null) {
      return noFeedbacks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyFeedbacksVacancyState value) empty,
    required TResult Function(LoadingFeedbacksVacancyState value) loading,
    required TResult Function(NoFeedbacksVacancyState value) noFeedbacks,
    required TResult Function(NoVacancyState value) noVacancy,
    required TResult Function(LoadedFeedbacksVacancyState value) loaded,
    required TResult Function(ErrorFeedbacksVacancyState value) error,
  }) {
    return noFeedbacks(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksVacancyState value)? empty,
    TResult Function(LoadingFeedbacksVacancyState value)? loading,
    TResult Function(NoFeedbacksVacancyState value)? noFeedbacks,
    TResult Function(NoVacancyState value)? noVacancy,
    TResult Function(LoadedFeedbacksVacancyState value)? loaded,
    TResult Function(ErrorFeedbacksVacancyState value)? error,
    required TResult orElse(),
  }) {
    if (noFeedbacks != null) {
      return noFeedbacks(this);
    }
    return orElse();
  }
}

abstract class NoFeedbacksVacancyState implements FeedbacksVacancyState {
  const factory NoFeedbacksVacancyState() = _$NoFeedbacksVacancyState;
}

/// @nodoc
abstract class $NoVacancyStateCopyWith<$Res> {
  factory $NoVacancyStateCopyWith(
          NoVacancyState value, $Res Function(NoVacancyState) then) =
      _$NoVacancyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoVacancyStateCopyWithImpl<$Res>
    extends _$FeedbacksVacancyStateCopyWithImpl<$Res>
    implements $NoVacancyStateCopyWith<$Res> {
  _$NoVacancyStateCopyWithImpl(
      NoVacancyState _value, $Res Function(NoVacancyState) _then)
      : super(_value, (v) => _then(v as NoVacancyState));

  @override
  NoVacancyState get _value => super._value as NoVacancyState;
}

/// @nodoc

class _$NoVacancyState implements NoVacancyState {
  const _$NoVacancyState();

  @override
  String toString() {
    return 'FeedbacksVacancyState.noVacancy()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoVacancyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function() noFeedbacks,
    required TResult Function() noVacancy,
    required TResult Function(
            List<dynamic> feedbacks, int vacancyId, String status)
        loaded,
    required TResult Function(String message) error,
  }) {
    return noVacancy();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function()? noFeedbacks,
    TResult Function()? noVacancy,
    TResult Function(List<dynamic> feedbacks, int vacancyId, String status)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (noVacancy != null) {
      return noVacancy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyFeedbacksVacancyState value) empty,
    required TResult Function(LoadingFeedbacksVacancyState value) loading,
    required TResult Function(NoFeedbacksVacancyState value) noFeedbacks,
    required TResult Function(NoVacancyState value) noVacancy,
    required TResult Function(LoadedFeedbacksVacancyState value) loaded,
    required TResult Function(ErrorFeedbacksVacancyState value) error,
  }) {
    return noVacancy(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksVacancyState value)? empty,
    TResult Function(LoadingFeedbacksVacancyState value)? loading,
    TResult Function(NoFeedbacksVacancyState value)? noFeedbacks,
    TResult Function(NoVacancyState value)? noVacancy,
    TResult Function(LoadedFeedbacksVacancyState value)? loaded,
    TResult Function(ErrorFeedbacksVacancyState value)? error,
    required TResult orElse(),
  }) {
    if (noVacancy != null) {
      return noVacancy(this);
    }
    return orElse();
  }
}

abstract class NoVacancyState implements FeedbacksVacancyState {
  const factory NoVacancyState() = _$NoVacancyState;
}

/// @nodoc
abstract class $LoadedFeedbacksVacancyStateCopyWith<$Res> {
  factory $LoadedFeedbacksVacancyStateCopyWith(
          LoadedFeedbacksVacancyState value,
          $Res Function(LoadedFeedbacksVacancyState) then) =
      _$LoadedFeedbacksVacancyStateCopyWithImpl<$Res>;
  $Res call({List<dynamic> feedbacks, int vacancyId, String status});
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
    Object? vacancyId = freezed,
    Object? status = freezed,
  }) {
    return _then(LoadedFeedbacksVacancyState(
      feedbacks: feedbacks == freezed
          ? _value.feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      vacancyId: vacancyId == freezed
          ? _value.vacancyId
          : vacancyId // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedFeedbacksVacancyState implements LoadedFeedbacksVacancyState {
  const _$LoadedFeedbacksVacancyState(
      {required this.feedbacks, required this.vacancyId, required this.status});

  @override
  final List<dynamic> feedbacks;
  @override
  final int vacancyId;
  @override
  final String status;

  @override
  String toString() {
    return 'FeedbacksVacancyState.loaded(feedbacks: $feedbacks, vacancyId: $vacancyId, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedFeedbacksVacancyState &&
            (identical(other.feedbacks, feedbacks) ||
                const DeepCollectionEquality()
                    .equals(other.feedbacks, feedbacks)) &&
            (identical(other.vacancyId, vacancyId) ||
                const DeepCollectionEquality()
                    .equals(other.vacancyId, vacancyId)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(feedbacks) ^
      const DeepCollectionEquality().hash(vacancyId) ^
      const DeepCollectionEquality().hash(status);

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
    required TResult Function() noFeedbacks,
    required TResult Function() noVacancy,
    required TResult Function(
            List<dynamic> feedbacks, int vacancyId, String status)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(feedbacks, vacancyId, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function()? noFeedbacks,
    TResult Function()? noVacancy,
    TResult Function(List<dynamic> feedbacks, int vacancyId, String status)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(feedbacks, vacancyId, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyFeedbacksVacancyState value) empty,
    required TResult Function(LoadingFeedbacksVacancyState value) loading,
    required TResult Function(NoFeedbacksVacancyState value) noFeedbacks,
    required TResult Function(NoVacancyState value) noVacancy,
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
    TResult Function(NoFeedbacksVacancyState value)? noFeedbacks,
    TResult Function(NoVacancyState value)? noVacancy,
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
      {required List<dynamic> feedbacks,
      required int vacancyId,
      required String status}) = _$LoadedFeedbacksVacancyState;

  List<dynamic> get feedbacks => throw _privateConstructorUsedError;
  int get vacancyId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
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
    required TResult Function() noFeedbacks,
    required TResult Function() noVacancy,
    required TResult Function(
            List<dynamic> feedbacks, int vacancyId, String status)
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
    TResult Function()? noFeedbacks,
    TResult Function()? noVacancy,
    TResult Function(List<dynamic> feedbacks, int vacancyId, String status)?
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
    required TResult Function(EmptyFeedbacksVacancyState value) empty,
    required TResult Function(LoadingFeedbacksVacancyState value) loading,
    required TResult Function(NoFeedbacksVacancyState value) noFeedbacks,
    required TResult Function(NoVacancyState value) noVacancy,
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
    TResult Function(NoFeedbacksVacancyState value)? noFeedbacks,
    TResult Function(NoVacancyState value)? noVacancy,
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
