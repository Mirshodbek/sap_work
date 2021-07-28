// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'vacancy_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VacancyUserEventTearOff {
  const _$VacancyUserEventTearOff();

  _GetVacancyUserEvent getVacancy({required int id}) {
    return _GetVacancyUserEvent(
      id: id,
    );
  }

  _SelectResumeVacancyUserEvent selectResume() {
    return const _SelectResumeVacancyUserEvent();
  }
}

/// @nodoc
const $VacancyUserEvent = _$VacancyUserEventTearOff();

/// @nodoc
mixin _$VacancyUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getVacancy,
    required TResult Function() selectResume,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getVacancy,
    TResult Function()? selectResume,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVacancyUserEvent value) getVacancy,
    required TResult Function(_SelectResumeVacancyUserEvent value) selectResume,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVacancyUserEvent value)? getVacancy,
    TResult Function(_SelectResumeVacancyUserEvent value)? selectResume,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VacancyUserEventCopyWith<$Res> {
  factory $VacancyUserEventCopyWith(
          VacancyUserEvent value, $Res Function(VacancyUserEvent) then) =
      _$VacancyUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VacancyUserEventCopyWithImpl<$Res>
    implements $VacancyUserEventCopyWith<$Res> {
  _$VacancyUserEventCopyWithImpl(this._value, this._then);

  final VacancyUserEvent _value;
  // ignore: unused_field
  final $Res Function(VacancyUserEvent) _then;
}

/// @nodoc
abstract class _$GetVacancyUserEventCopyWith<$Res> {
  factory _$GetVacancyUserEventCopyWith(_GetVacancyUserEvent value,
          $Res Function(_GetVacancyUserEvent) then) =
      __$GetVacancyUserEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$GetVacancyUserEventCopyWithImpl<$Res>
    extends _$VacancyUserEventCopyWithImpl<$Res>
    implements _$GetVacancyUserEventCopyWith<$Res> {
  __$GetVacancyUserEventCopyWithImpl(
      _GetVacancyUserEvent _value, $Res Function(_GetVacancyUserEvent) _then)
      : super(_value, (v) => _then(v as _GetVacancyUserEvent));

  @override
  _GetVacancyUserEvent get _value => super._value as _GetVacancyUserEvent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_GetVacancyUserEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetVacancyUserEvent implements _GetVacancyUserEvent {
  const _$_GetVacancyUserEvent({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'VacancyUserEvent.getVacancy(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetVacancyUserEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$GetVacancyUserEventCopyWith<_GetVacancyUserEvent> get copyWith =>
      __$GetVacancyUserEventCopyWithImpl<_GetVacancyUserEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getVacancy,
    required TResult Function() selectResume,
  }) {
    return getVacancy(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getVacancy,
    TResult Function()? selectResume,
    required TResult orElse(),
  }) {
    if (getVacancy != null) {
      return getVacancy(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVacancyUserEvent value) getVacancy,
    required TResult Function(_SelectResumeVacancyUserEvent value) selectResume,
  }) {
    return getVacancy(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVacancyUserEvent value)? getVacancy,
    TResult Function(_SelectResumeVacancyUserEvent value)? selectResume,
    required TResult orElse(),
  }) {
    if (getVacancy != null) {
      return getVacancy(this);
    }
    return orElse();
  }
}

abstract class _GetVacancyUserEvent implements VacancyUserEvent {
  const factory _GetVacancyUserEvent({required int id}) =
      _$_GetVacancyUserEvent;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetVacancyUserEventCopyWith<_GetVacancyUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SelectResumeVacancyUserEventCopyWith<$Res> {
  factory _$SelectResumeVacancyUserEventCopyWith(
          _SelectResumeVacancyUserEvent value,
          $Res Function(_SelectResumeVacancyUserEvent) then) =
      __$SelectResumeVacancyUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$SelectResumeVacancyUserEventCopyWithImpl<$Res>
    extends _$VacancyUserEventCopyWithImpl<$Res>
    implements _$SelectResumeVacancyUserEventCopyWith<$Res> {
  __$SelectResumeVacancyUserEventCopyWithImpl(
      _SelectResumeVacancyUserEvent _value,
      $Res Function(_SelectResumeVacancyUserEvent) _then)
      : super(_value, (v) => _then(v as _SelectResumeVacancyUserEvent));

  @override
  _SelectResumeVacancyUserEvent get _value =>
      super._value as _SelectResumeVacancyUserEvent;
}

/// @nodoc

class _$_SelectResumeVacancyUserEvent implements _SelectResumeVacancyUserEvent {
  const _$_SelectResumeVacancyUserEvent();

  @override
  String toString() {
    return 'VacancyUserEvent.selectResume()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SelectResumeVacancyUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getVacancy,
    required TResult Function() selectResume,
  }) {
    return selectResume();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getVacancy,
    TResult Function()? selectResume,
    required TResult orElse(),
  }) {
    if (selectResume != null) {
      return selectResume();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVacancyUserEvent value) getVacancy,
    required TResult Function(_SelectResumeVacancyUserEvent value) selectResume,
  }) {
    return selectResume(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVacancyUserEvent value)? getVacancy,
    TResult Function(_SelectResumeVacancyUserEvent value)? selectResume,
    required TResult orElse(),
  }) {
    if (selectResume != null) {
      return selectResume(this);
    }
    return orElse();
  }
}

abstract class _SelectResumeVacancyUserEvent implements VacancyUserEvent {
  const factory _SelectResumeVacancyUserEvent() =
      _$_SelectResumeVacancyUserEvent;
}

/// @nodoc
class _$VacancyUserStateTearOff {
  const _$VacancyUserStateTearOff();

  EmptyVacancyUserState empty() {
    return const EmptyVacancyUserState();
  }

  LoadingVacancyUserState loading() {
    return const LoadingVacancyUserState();
  }

  LoadedVacancyUserState loaded(
      {required Vacancy vacancy, required String status}) {
    return LoadedVacancyUserState(
      vacancy: vacancy,
      status: status,
    );
  }

  ErrorVacancyUserState error({required String message}) {
    return ErrorVacancyUserState(
      message: message,
    );
  }
}

/// @nodoc
const $VacancyUserState = _$VacancyUserStateTearOff();

/// @nodoc
mixin _$VacancyUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Vacancy vacancy, String status) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Vacancy vacancy, String status)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyVacancyUserState value) empty,
    required TResult Function(LoadingVacancyUserState value) loading,
    required TResult Function(LoadedVacancyUserState value) loaded,
    required TResult Function(ErrorVacancyUserState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyVacancyUserState value)? empty,
    TResult Function(LoadingVacancyUserState value)? loading,
    TResult Function(LoadedVacancyUserState value)? loaded,
    TResult Function(ErrorVacancyUserState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VacancyUserStateCopyWith<$Res> {
  factory $VacancyUserStateCopyWith(
          VacancyUserState value, $Res Function(VacancyUserState) then) =
      _$VacancyUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VacancyUserStateCopyWithImpl<$Res>
    implements $VacancyUserStateCopyWith<$Res> {
  _$VacancyUserStateCopyWithImpl(this._value, this._then);

  final VacancyUserState _value;
  // ignore: unused_field
  final $Res Function(VacancyUserState) _then;
}

/// @nodoc
abstract class $EmptyVacancyUserStateCopyWith<$Res> {
  factory $EmptyVacancyUserStateCopyWith(EmptyVacancyUserState value,
          $Res Function(EmptyVacancyUserState) then) =
      _$EmptyVacancyUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyVacancyUserStateCopyWithImpl<$Res>
    extends _$VacancyUserStateCopyWithImpl<$Res>
    implements $EmptyVacancyUserStateCopyWith<$Res> {
  _$EmptyVacancyUserStateCopyWithImpl(
      EmptyVacancyUserState _value, $Res Function(EmptyVacancyUserState) _then)
      : super(_value, (v) => _then(v as EmptyVacancyUserState));

  @override
  EmptyVacancyUserState get _value => super._value as EmptyVacancyUserState;
}

/// @nodoc

class _$EmptyVacancyUserState implements EmptyVacancyUserState {
  const _$EmptyVacancyUserState();

  @override
  String toString() {
    return 'VacancyUserState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyVacancyUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Vacancy vacancy, String status) loaded,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Vacancy vacancy, String status)? loaded,
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
    required TResult Function(EmptyVacancyUserState value) empty,
    required TResult Function(LoadingVacancyUserState value) loading,
    required TResult Function(LoadedVacancyUserState value) loaded,
    required TResult Function(ErrorVacancyUserState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyVacancyUserState value)? empty,
    TResult Function(LoadingVacancyUserState value)? loading,
    TResult Function(LoadedVacancyUserState value)? loaded,
    TResult Function(ErrorVacancyUserState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyVacancyUserState implements VacancyUserState {
  const factory EmptyVacancyUserState() = _$EmptyVacancyUserState;
}

/// @nodoc
abstract class $LoadingVacancyUserStateCopyWith<$Res> {
  factory $LoadingVacancyUserStateCopyWith(LoadingVacancyUserState value,
          $Res Function(LoadingVacancyUserState) then) =
      _$LoadingVacancyUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingVacancyUserStateCopyWithImpl<$Res>
    extends _$VacancyUserStateCopyWithImpl<$Res>
    implements $LoadingVacancyUserStateCopyWith<$Res> {
  _$LoadingVacancyUserStateCopyWithImpl(LoadingVacancyUserState _value,
      $Res Function(LoadingVacancyUserState) _then)
      : super(_value, (v) => _then(v as LoadingVacancyUserState));

  @override
  LoadingVacancyUserState get _value => super._value as LoadingVacancyUserState;
}

/// @nodoc

class _$LoadingVacancyUserState implements LoadingVacancyUserState {
  const _$LoadingVacancyUserState();

  @override
  String toString() {
    return 'VacancyUserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingVacancyUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Vacancy vacancy, String status) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Vacancy vacancy, String status)? loaded,
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
    required TResult Function(EmptyVacancyUserState value) empty,
    required TResult Function(LoadingVacancyUserState value) loading,
    required TResult Function(LoadedVacancyUserState value) loaded,
    required TResult Function(ErrorVacancyUserState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyVacancyUserState value)? empty,
    TResult Function(LoadingVacancyUserState value)? loading,
    TResult Function(LoadedVacancyUserState value)? loaded,
    TResult Function(ErrorVacancyUserState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingVacancyUserState implements VacancyUserState {
  const factory LoadingVacancyUserState() = _$LoadingVacancyUserState;
}

/// @nodoc
abstract class $LoadedVacancyUserStateCopyWith<$Res> {
  factory $LoadedVacancyUserStateCopyWith(LoadedVacancyUserState value,
          $Res Function(LoadedVacancyUserState) then) =
      _$LoadedVacancyUserStateCopyWithImpl<$Res>;
  $Res call({Vacancy vacancy, String status});
}

/// @nodoc
class _$LoadedVacancyUserStateCopyWithImpl<$Res>
    extends _$VacancyUserStateCopyWithImpl<$Res>
    implements $LoadedVacancyUserStateCopyWith<$Res> {
  _$LoadedVacancyUserStateCopyWithImpl(LoadedVacancyUserState _value,
      $Res Function(LoadedVacancyUserState) _then)
      : super(_value, (v) => _then(v as LoadedVacancyUserState));

  @override
  LoadedVacancyUserState get _value => super._value as LoadedVacancyUserState;

  @override
  $Res call({
    Object? vacancy = freezed,
    Object? status = freezed,
  }) {
    return _then(LoadedVacancyUserState(
      vacancy: vacancy == freezed
          ? _value.vacancy
          : vacancy // ignore: cast_nullable_to_non_nullable
              as Vacancy,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedVacancyUserState implements LoadedVacancyUserState {
  const _$LoadedVacancyUserState({required this.vacancy, required this.status});

  @override
  final Vacancy vacancy;
  @override
  final String status;

  @override
  String toString() {
    return 'VacancyUserState.loaded(vacancy: $vacancy, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedVacancyUserState &&
            (identical(other.vacancy, vacancy) ||
                const DeepCollectionEquality()
                    .equals(other.vacancy, vacancy)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(vacancy) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $LoadedVacancyUserStateCopyWith<LoadedVacancyUserState> get copyWith =>
      _$LoadedVacancyUserStateCopyWithImpl<LoadedVacancyUserState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Vacancy vacancy, String status) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(vacancy, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Vacancy vacancy, String status)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(vacancy, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyVacancyUserState value) empty,
    required TResult Function(LoadingVacancyUserState value) loading,
    required TResult Function(LoadedVacancyUserState value) loaded,
    required TResult Function(ErrorVacancyUserState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyVacancyUserState value)? empty,
    TResult Function(LoadingVacancyUserState value)? loading,
    TResult Function(LoadedVacancyUserState value)? loaded,
    TResult Function(ErrorVacancyUserState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedVacancyUserState implements VacancyUserState {
  const factory LoadedVacancyUserState(
      {required Vacancy vacancy,
      required String status}) = _$LoadedVacancyUserState;

  Vacancy get vacancy => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedVacancyUserStateCopyWith<LoadedVacancyUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorVacancyUserStateCopyWith<$Res> {
  factory $ErrorVacancyUserStateCopyWith(ErrorVacancyUserState value,
          $Res Function(ErrorVacancyUserState) then) =
      _$ErrorVacancyUserStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorVacancyUserStateCopyWithImpl<$Res>
    extends _$VacancyUserStateCopyWithImpl<$Res>
    implements $ErrorVacancyUserStateCopyWith<$Res> {
  _$ErrorVacancyUserStateCopyWithImpl(
      ErrorVacancyUserState _value, $Res Function(ErrorVacancyUserState) _then)
      : super(_value, (v) => _then(v as ErrorVacancyUserState));

  @override
  ErrorVacancyUserState get _value => super._value as ErrorVacancyUserState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorVacancyUserState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorVacancyUserState implements ErrorVacancyUserState {
  const _$ErrorVacancyUserState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'VacancyUserState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorVacancyUserState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorVacancyUserStateCopyWith<ErrorVacancyUserState> get copyWith =>
      _$ErrorVacancyUserStateCopyWithImpl<ErrorVacancyUserState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Vacancy vacancy, String status) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Vacancy vacancy, String status)? loaded,
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
    required TResult Function(EmptyVacancyUserState value) empty,
    required TResult Function(LoadingVacancyUserState value) loading,
    required TResult Function(LoadedVacancyUserState value) loaded,
    required TResult Function(ErrorVacancyUserState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyVacancyUserState value)? empty,
    TResult Function(LoadingVacancyUserState value)? loading,
    TResult Function(LoadedVacancyUserState value)? loaded,
    TResult Function(ErrorVacancyUserState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorVacancyUserState implements VacancyUserState {
  const factory ErrorVacancyUserState({required String message}) =
      _$ErrorVacancyUserState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorVacancyUserStateCopyWith<ErrorVacancyUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
