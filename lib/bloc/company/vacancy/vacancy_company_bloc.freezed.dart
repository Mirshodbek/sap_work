// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'vacancy_company_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VacancyCompanyEventTearOff {
  const _$VacancyCompanyEventTearOff();

  _GetVacancyCompanyEvent getVacancy() {
    return const _GetVacancyCompanyEvent();
  }
}

/// @nodoc
const $VacancyCompanyEvent = _$VacancyCompanyEventTearOff();

/// @nodoc
mixin _$VacancyCompanyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getVacancy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVacancy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVacancyCompanyEvent value) getVacancy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVacancyCompanyEvent value)? getVacancy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VacancyCompanyEventCopyWith<$Res> {
  factory $VacancyCompanyEventCopyWith(
          VacancyCompanyEvent value, $Res Function(VacancyCompanyEvent) then) =
      _$VacancyCompanyEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VacancyCompanyEventCopyWithImpl<$Res>
    implements $VacancyCompanyEventCopyWith<$Res> {
  _$VacancyCompanyEventCopyWithImpl(this._value, this._then);

  final VacancyCompanyEvent _value;
  // ignore: unused_field
  final $Res Function(VacancyCompanyEvent) _then;
}

/// @nodoc
abstract class _$GetVacancyCompanyEventCopyWith<$Res> {
  factory _$GetVacancyCompanyEventCopyWith(_GetVacancyCompanyEvent value,
          $Res Function(_GetVacancyCompanyEvent) then) =
      __$GetVacancyCompanyEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetVacancyCompanyEventCopyWithImpl<$Res>
    extends _$VacancyCompanyEventCopyWithImpl<$Res>
    implements _$GetVacancyCompanyEventCopyWith<$Res> {
  __$GetVacancyCompanyEventCopyWithImpl(_GetVacancyCompanyEvent _value,
      $Res Function(_GetVacancyCompanyEvent) _then)
      : super(_value, (v) => _then(v as _GetVacancyCompanyEvent));

  @override
  _GetVacancyCompanyEvent get _value => super._value as _GetVacancyCompanyEvent;
}

/// @nodoc

class _$_GetVacancyCompanyEvent implements _GetVacancyCompanyEvent {
  const _$_GetVacancyCompanyEvent();

  @override
  String toString() {
    return 'VacancyCompanyEvent.getVacancy()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetVacancyCompanyEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getVacancy,
  }) {
    return getVacancy();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVacancy,
    required TResult orElse(),
  }) {
    if (getVacancy != null) {
      return getVacancy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVacancyCompanyEvent value) getVacancy,
  }) {
    return getVacancy(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVacancyCompanyEvent value)? getVacancy,
    required TResult orElse(),
  }) {
    if (getVacancy != null) {
      return getVacancy(this);
    }
    return orElse();
  }
}

abstract class _GetVacancyCompanyEvent implements VacancyCompanyEvent {
  const factory _GetVacancyCompanyEvent() = _$_GetVacancyCompanyEvent;
}

/// @nodoc
class _$VacancyCompanyStateTearOff {
  const _$VacancyCompanyStateTearOff();

  EmptyVacancyCompanyState empty() {
    return const EmptyVacancyCompanyState();
  }

  LoadingVacancyCompanyState loading() {
    return const LoadingVacancyCompanyState();
  }

  LoadedVacancyCompanyState loaded({required Vacancy vacancy}) {
    return LoadedVacancyCompanyState(
      vacancy: vacancy,
    );
  }

  NoVacancyCompanyState noVacancy() {
    return const NoVacancyCompanyState();
  }
}

/// @nodoc
const $VacancyCompanyState = _$VacancyCompanyStateTearOff();

/// @nodoc
mixin _$VacancyCompanyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Vacancy vacancy) loaded,
    required TResult Function() noVacancy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Vacancy vacancy)? loaded,
    TResult Function()? noVacancy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyVacancyCompanyState value) empty,
    required TResult Function(LoadingVacancyCompanyState value) loading,
    required TResult Function(LoadedVacancyCompanyState value) loaded,
    required TResult Function(NoVacancyCompanyState value) noVacancy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyVacancyCompanyState value)? empty,
    TResult Function(LoadingVacancyCompanyState value)? loading,
    TResult Function(LoadedVacancyCompanyState value)? loaded,
    TResult Function(NoVacancyCompanyState value)? noVacancy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VacancyCompanyStateCopyWith<$Res> {
  factory $VacancyCompanyStateCopyWith(
          VacancyCompanyState value, $Res Function(VacancyCompanyState) then) =
      _$VacancyCompanyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VacancyCompanyStateCopyWithImpl<$Res>
    implements $VacancyCompanyStateCopyWith<$Res> {
  _$VacancyCompanyStateCopyWithImpl(this._value, this._then);

  final VacancyCompanyState _value;
  // ignore: unused_field
  final $Res Function(VacancyCompanyState) _then;
}

/// @nodoc
abstract class $EmptyVacancyCompanyStateCopyWith<$Res> {
  factory $EmptyVacancyCompanyStateCopyWith(EmptyVacancyCompanyState value,
          $Res Function(EmptyVacancyCompanyState) then) =
      _$EmptyVacancyCompanyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyVacancyCompanyStateCopyWithImpl<$Res>
    extends _$VacancyCompanyStateCopyWithImpl<$Res>
    implements $EmptyVacancyCompanyStateCopyWith<$Res> {
  _$EmptyVacancyCompanyStateCopyWithImpl(EmptyVacancyCompanyState _value,
      $Res Function(EmptyVacancyCompanyState) _then)
      : super(_value, (v) => _then(v as EmptyVacancyCompanyState));

  @override
  EmptyVacancyCompanyState get _value =>
      super._value as EmptyVacancyCompanyState;
}

/// @nodoc

class _$EmptyVacancyCompanyState implements EmptyVacancyCompanyState {
  const _$EmptyVacancyCompanyState();

  @override
  String toString() {
    return 'VacancyCompanyState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyVacancyCompanyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Vacancy vacancy) loaded,
    required TResult Function() noVacancy,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Vacancy vacancy)? loaded,
    TResult Function()? noVacancy,
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
    required TResult Function(EmptyVacancyCompanyState value) empty,
    required TResult Function(LoadingVacancyCompanyState value) loading,
    required TResult Function(LoadedVacancyCompanyState value) loaded,
    required TResult Function(NoVacancyCompanyState value) noVacancy,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyVacancyCompanyState value)? empty,
    TResult Function(LoadingVacancyCompanyState value)? loading,
    TResult Function(LoadedVacancyCompanyState value)? loaded,
    TResult Function(NoVacancyCompanyState value)? noVacancy,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyVacancyCompanyState implements VacancyCompanyState {
  const factory EmptyVacancyCompanyState() = _$EmptyVacancyCompanyState;
}

/// @nodoc
abstract class $LoadingVacancyCompanyStateCopyWith<$Res> {
  factory $LoadingVacancyCompanyStateCopyWith(LoadingVacancyCompanyState value,
          $Res Function(LoadingVacancyCompanyState) then) =
      _$LoadingVacancyCompanyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingVacancyCompanyStateCopyWithImpl<$Res>
    extends _$VacancyCompanyStateCopyWithImpl<$Res>
    implements $LoadingVacancyCompanyStateCopyWith<$Res> {
  _$LoadingVacancyCompanyStateCopyWithImpl(LoadingVacancyCompanyState _value,
      $Res Function(LoadingVacancyCompanyState) _then)
      : super(_value, (v) => _then(v as LoadingVacancyCompanyState));

  @override
  LoadingVacancyCompanyState get _value =>
      super._value as LoadingVacancyCompanyState;
}

/// @nodoc

class _$LoadingVacancyCompanyState implements LoadingVacancyCompanyState {
  const _$LoadingVacancyCompanyState();

  @override
  String toString() {
    return 'VacancyCompanyState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingVacancyCompanyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Vacancy vacancy) loaded,
    required TResult Function() noVacancy,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Vacancy vacancy)? loaded,
    TResult Function()? noVacancy,
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
    required TResult Function(EmptyVacancyCompanyState value) empty,
    required TResult Function(LoadingVacancyCompanyState value) loading,
    required TResult Function(LoadedVacancyCompanyState value) loaded,
    required TResult Function(NoVacancyCompanyState value) noVacancy,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyVacancyCompanyState value)? empty,
    TResult Function(LoadingVacancyCompanyState value)? loading,
    TResult Function(LoadedVacancyCompanyState value)? loaded,
    TResult Function(NoVacancyCompanyState value)? noVacancy,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingVacancyCompanyState implements VacancyCompanyState {
  const factory LoadingVacancyCompanyState() = _$LoadingVacancyCompanyState;
}

/// @nodoc
abstract class $LoadedVacancyCompanyStateCopyWith<$Res> {
  factory $LoadedVacancyCompanyStateCopyWith(LoadedVacancyCompanyState value,
          $Res Function(LoadedVacancyCompanyState) then) =
      _$LoadedVacancyCompanyStateCopyWithImpl<$Res>;
  $Res call({Vacancy vacancy});
}

/// @nodoc
class _$LoadedVacancyCompanyStateCopyWithImpl<$Res>
    extends _$VacancyCompanyStateCopyWithImpl<$Res>
    implements $LoadedVacancyCompanyStateCopyWith<$Res> {
  _$LoadedVacancyCompanyStateCopyWithImpl(LoadedVacancyCompanyState _value,
      $Res Function(LoadedVacancyCompanyState) _then)
      : super(_value, (v) => _then(v as LoadedVacancyCompanyState));

  @override
  LoadedVacancyCompanyState get _value =>
      super._value as LoadedVacancyCompanyState;

  @override
  $Res call({
    Object? vacancy = freezed,
  }) {
    return _then(LoadedVacancyCompanyState(
      vacancy: vacancy == freezed
          ? _value.vacancy
          : vacancy // ignore: cast_nullable_to_non_nullable
              as Vacancy,
    ));
  }
}

/// @nodoc

class _$LoadedVacancyCompanyState implements LoadedVacancyCompanyState {
  const _$LoadedVacancyCompanyState({required this.vacancy});

  @override
  final Vacancy vacancy;

  @override
  String toString() {
    return 'VacancyCompanyState.loaded(vacancy: $vacancy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedVacancyCompanyState &&
            (identical(other.vacancy, vacancy) ||
                const DeepCollectionEquality().equals(other.vacancy, vacancy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(vacancy);

  @JsonKey(ignore: true)
  @override
  $LoadedVacancyCompanyStateCopyWith<LoadedVacancyCompanyState> get copyWith =>
      _$LoadedVacancyCompanyStateCopyWithImpl<LoadedVacancyCompanyState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Vacancy vacancy) loaded,
    required TResult Function() noVacancy,
  }) {
    return loaded(vacancy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Vacancy vacancy)? loaded,
    TResult Function()? noVacancy,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(vacancy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyVacancyCompanyState value) empty,
    required TResult Function(LoadingVacancyCompanyState value) loading,
    required TResult Function(LoadedVacancyCompanyState value) loaded,
    required TResult Function(NoVacancyCompanyState value) noVacancy,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyVacancyCompanyState value)? empty,
    TResult Function(LoadingVacancyCompanyState value)? loading,
    TResult Function(LoadedVacancyCompanyState value)? loaded,
    TResult Function(NoVacancyCompanyState value)? noVacancy,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedVacancyCompanyState implements VacancyCompanyState {
  const factory LoadedVacancyCompanyState({required Vacancy vacancy}) =
      _$LoadedVacancyCompanyState;

  Vacancy get vacancy => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedVacancyCompanyStateCopyWith<LoadedVacancyCompanyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoVacancyCompanyStateCopyWith<$Res> {
  factory $NoVacancyCompanyStateCopyWith(NoVacancyCompanyState value,
          $Res Function(NoVacancyCompanyState) then) =
      _$NoVacancyCompanyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoVacancyCompanyStateCopyWithImpl<$Res>
    extends _$VacancyCompanyStateCopyWithImpl<$Res>
    implements $NoVacancyCompanyStateCopyWith<$Res> {
  _$NoVacancyCompanyStateCopyWithImpl(
      NoVacancyCompanyState _value, $Res Function(NoVacancyCompanyState) _then)
      : super(_value, (v) => _then(v as NoVacancyCompanyState));

  @override
  NoVacancyCompanyState get _value => super._value as NoVacancyCompanyState;
}

/// @nodoc

class _$NoVacancyCompanyState implements NoVacancyCompanyState {
  const _$NoVacancyCompanyState();

  @override
  String toString() {
    return 'VacancyCompanyState.noVacancy()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoVacancyCompanyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Vacancy vacancy) loaded,
    required TResult Function() noVacancy,
  }) {
    return noVacancy();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Vacancy vacancy)? loaded,
    TResult Function()? noVacancy,
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
    required TResult Function(EmptyVacancyCompanyState value) empty,
    required TResult Function(LoadingVacancyCompanyState value) loading,
    required TResult Function(LoadedVacancyCompanyState value) loaded,
    required TResult Function(NoVacancyCompanyState value) noVacancy,
  }) {
    return noVacancy(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyVacancyCompanyState value)? empty,
    TResult Function(LoadingVacancyCompanyState value)? loading,
    TResult Function(LoadedVacancyCompanyState value)? loaded,
    TResult Function(NoVacancyCompanyState value)? noVacancy,
    required TResult orElse(),
  }) {
    if (noVacancy != null) {
      return noVacancy(this);
    }
    return orElse();
  }
}

abstract class NoVacancyCompanyState implements VacancyCompanyState {
  const factory NoVacancyCompanyState() = _$NoVacancyCompanyState;
}
