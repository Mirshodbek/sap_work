// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'core_profile_company_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoreProfileCompanyEventTearOff {
  const _$CoreProfileCompanyEventTearOff();

  _InitialCoreProfileCompanyEvent initial() {
    return const _InitialCoreProfileCompanyEvent();
  }

  _OnSelectCoreProfileCompanyEvent onSelect(
      {required String title, required int id}) {
    return _OnSelectCoreProfileCompanyEvent(
      title: title,
      id: id,
    );
  }
}

/// @nodoc
const $CoreProfileCompanyEvent = _$CoreProfileCompanyEventTearOff();

/// @nodoc
mixin _$CoreProfileCompanyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String title, int id) onSelect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String title, int id)? onSelect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCoreProfileCompanyEvent value) initial,
    required TResult Function(_OnSelectCoreProfileCompanyEvent value) onSelect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCoreProfileCompanyEvent value)? initial,
    TResult Function(_OnSelectCoreProfileCompanyEvent value)? onSelect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreProfileCompanyEventCopyWith<$Res> {
  factory $CoreProfileCompanyEventCopyWith(CoreProfileCompanyEvent value,
          $Res Function(CoreProfileCompanyEvent) then) =
      _$CoreProfileCompanyEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoreProfileCompanyEventCopyWithImpl<$Res>
    implements $CoreProfileCompanyEventCopyWith<$Res> {
  _$CoreProfileCompanyEventCopyWithImpl(this._value, this._then);

  final CoreProfileCompanyEvent _value;
  // ignore: unused_field
  final $Res Function(CoreProfileCompanyEvent) _then;
}

/// @nodoc
abstract class _$InitialCoreProfileCompanyEventCopyWith<$Res> {
  factory _$InitialCoreProfileCompanyEventCopyWith(
          _InitialCoreProfileCompanyEvent value,
          $Res Function(_InitialCoreProfileCompanyEvent) then) =
      __$InitialCoreProfileCompanyEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCoreProfileCompanyEventCopyWithImpl<$Res>
    extends _$CoreProfileCompanyEventCopyWithImpl<$Res>
    implements _$InitialCoreProfileCompanyEventCopyWith<$Res> {
  __$InitialCoreProfileCompanyEventCopyWithImpl(
      _InitialCoreProfileCompanyEvent _value,
      $Res Function(_InitialCoreProfileCompanyEvent) _then)
      : super(_value, (v) => _then(v as _InitialCoreProfileCompanyEvent));

  @override
  _InitialCoreProfileCompanyEvent get _value =>
      super._value as _InitialCoreProfileCompanyEvent;
}

/// @nodoc

class _$_InitialCoreProfileCompanyEvent
    implements _InitialCoreProfileCompanyEvent {
  const _$_InitialCoreProfileCompanyEvent();

  @override
  String toString() {
    return 'CoreProfileCompanyEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialCoreProfileCompanyEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String title, int id) onSelect,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String title, int id)? onSelect,
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
    required TResult Function(_InitialCoreProfileCompanyEvent value) initial,
    required TResult Function(_OnSelectCoreProfileCompanyEvent value) onSelect,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCoreProfileCompanyEvent value)? initial,
    TResult Function(_OnSelectCoreProfileCompanyEvent value)? onSelect,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialCoreProfileCompanyEvent
    implements CoreProfileCompanyEvent {
  const factory _InitialCoreProfileCompanyEvent() =
      _$_InitialCoreProfileCompanyEvent;
}

/// @nodoc
abstract class _$OnSelectCoreProfileCompanyEventCopyWith<$Res> {
  factory _$OnSelectCoreProfileCompanyEventCopyWith(
          _OnSelectCoreProfileCompanyEvent value,
          $Res Function(_OnSelectCoreProfileCompanyEvent) then) =
      __$OnSelectCoreProfileCompanyEventCopyWithImpl<$Res>;
  $Res call({String title, int id});
}

/// @nodoc
class __$OnSelectCoreProfileCompanyEventCopyWithImpl<$Res>
    extends _$CoreProfileCompanyEventCopyWithImpl<$Res>
    implements _$OnSelectCoreProfileCompanyEventCopyWith<$Res> {
  __$OnSelectCoreProfileCompanyEventCopyWithImpl(
      _OnSelectCoreProfileCompanyEvent _value,
      $Res Function(_OnSelectCoreProfileCompanyEvent) _then)
      : super(_value, (v) => _then(v as _OnSelectCoreProfileCompanyEvent));

  @override
  _OnSelectCoreProfileCompanyEvent get _value =>
      super._value as _OnSelectCoreProfileCompanyEvent;

  @override
  $Res call({
    Object? title = freezed,
    Object? id = freezed,
  }) {
    return _then(_OnSelectCoreProfileCompanyEvent(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OnSelectCoreProfileCompanyEvent
    implements _OnSelectCoreProfileCompanyEvent {
  const _$_OnSelectCoreProfileCompanyEvent(
      {required this.title, required this.id});

  @override
  final String title;
  @override
  final int id;

  @override
  String toString() {
    return 'CoreProfileCompanyEvent.onSelect(title: $title, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnSelectCoreProfileCompanyEvent &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$OnSelectCoreProfileCompanyEventCopyWith<_OnSelectCoreProfileCompanyEvent>
      get copyWith => __$OnSelectCoreProfileCompanyEventCopyWithImpl<
          _OnSelectCoreProfileCompanyEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String title, int id) onSelect,
  }) {
    return onSelect(title, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String title, int id)? onSelect,
    required TResult orElse(),
  }) {
    if (onSelect != null) {
      return onSelect(title, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCoreProfileCompanyEvent value) initial,
    required TResult Function(_OnSelectCoreProfileCompanyEvent value) onSelect,
  }) {
    return onSelect(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCoreProfileCompanyEvent value)? initial,
    TResult Function(_OnSelectCoreProfileCompanyEvent value)? onSelect,
    required TResult orElse(),
  }) {
    if (onSelect != null) {
      return onSelect(this);
    }
    return orElse();
  }
}

abstract class _OnSelectCoreProfileCompanyEvent
    implements CoreProfileCompanyEvent {
  const factory _OnSelectCoreProfileCompanyEvent(
      {required String title,
      required int id}) = _$_OnSelectCoreProfileCompanyEvent;

  String get title => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnSelectCoreProfileCompanyEventCopyWith<_OnSelectCoreProfileCompanyEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CoreProfileCompanyStateTearOff {
  const _$CoreProfileCompanyStateTearOff();

  EmptyCoreProfileCompanyState empty() {
    return const EmptyCoreProfileCompanyState();
  }

  LoadingCoreProfileCompanyState loading() {
    return const LoadingCoreProfileCompanyState();
  }

  AttributesCoreProfileCompanyState attributes(
      {required LocalVacancyData localVacancy,
      required int vacancyId,
      required List<Feature> categories,
      required List<Feature> spheres,
      required String status}) {
    return AttributesCoreProfileCompanyState(
      localVacancy: localVacancy,
      vacancyId: vacancyId,
      categories: categories,
      spheres: spheres,
      status: status,
    );
  }

  ErrorCoreProfileCompanyState error({required String message}) {
    return ErrorCoreProfileCompanyState(
      message: message,
    );
  }
}

/// @nodoc
const $CoreProfileCompanyState = _$CoreProfileCompanyStateTearOff();

/// @nodoc
mixin _$CoreProfileCompanyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(LocalVacancyData localVacancy, int vacancyId,
            List<Feature> categories, List<Feature> spheres, String status)
        attributes,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(LocalVacancyData localVacancy, int vacancyId,
            List<Feature> categories, List<Feature> spheres, String status)?
        attributes,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyCoreProfileCompanyState value) empty,
    required TResult Function(LoadingCoreProfileCompanyState value) loading,
    required TResult Function(AttributesCoreProfileCompanyState value)
        attributes,
    required TResult Function(ErrorCoreProfileCompanyState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoreProfileCompanyState value)? empty,
    TResult Function(LoadingCoreProfileCompanyState value)? loading,
    TResult Function(AttributesCoreProfileCompanyState value)? attributes,
    TResult Function(ErrorCoreProfileCompanyState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreProfileCompanyStateCopyWith<$Res> {
  factory $CoreProfileCompanyStateCopyWith(CoreProfileCompanyState value,
          $Res Function(CoreProfileCompanyState) then) =
      _$CoreProfileCompanyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoreProfileCompanyStateCopyWithImpl<$Res>
    implements $CoreProfileCompanyStateCopyWith<$Res> {
  _$CoreProfileCompanyStateCopyWithImpl(this._value, this._then);

  final CoreProfileCompanyState _value;
  // ignore: unused_field
  final $Res Function(CoreProfileCompanyState) _then;
}

/// @nodoc
abstract class $EmptyCoreProfileCompanyStateCopyWith<$Res> {
  factory $EmptyCoreProfileCompanyStateCopyWith(
          EmptyCoreProfileCompanyState value,
          $Res Function(EmptyCoreProfileCompanyState) then) =
      _$EmptyCoreProfileCompanyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyCoreProfileCompanyStateCopyWithImpl<$Res>
    extends _$CoreProfileCompanyStateCopyWithImpl<$Res>
    implements $EmptyCoreProfileCompanyStateCopyWith<$Res> {
  _$EmptyCoreProfileCompanyStateCopyWithImpl(
      EmptyCoreProfileCompanyState _value,
      $Res Function(EmptyCoreProfileCompanyState) _then)
      : super(_value, (v) => _then(v as EmptyCoreProfileCompanyState));

  @override
  EmptyCoreProfileCompanyState get _value =>
      super._value as EmptyCoreProfileCompanyState;
}

/// @nodoc

class _$EmptyCoreProfileCompanyState implements EmptyCoreProfileCompanyState {
  const _$EmptyCoreProfileCompanyState();

  @override
  String toString() {
    return 'CoreProfileCompanyState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyCoreProfileCompanyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(LocalVacancyData localVacancy, int vacancyId,
            List<Feature> categories, List<Feature> spheres, String status)
        attributes,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(LocalVacancyData localVacancy, int vacancyId,
            List<Feature> categories, List<Feature> spheres, String status)?
        attributes,
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
    required TResult Function(EmptyCoreProfileCompanyState value) empty,
    required TResult Function(LoadingCoreProfileCompanyState value) loading,
    required TResult Function(AttributesCoreProfileCompanyState value)
        attributes,
    required TResult Function(ErrorCoreProfileCompanyState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoreProfileCompanyState value)? empty,
    TResult Function(LoadingCoreProfileCompanyState value)? loading,
    TResult Function(AttributesCoreProfileCompanyState value)? attributes,
    TResult Function(ErrorCoreProfileCompanyState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyCoreProfileCompanyState implements CoreProfileCompanyState {
  const factory EmptyCoreProfileCompanyState() = _$EmptyCoreProfileCompanyState;
}

/// @nodoc
abstract class $LoadingCoreProfileCompanyStateCopyWith<$Res> {
  factory $LoadingCoreProfileCompanyStateCopyWith(
          LoadingCoreProfileCompanyState value,
          $Res Function(LoadingCoreProfileCompanyState) then) =
      _$LoadingCoreProfileCompanyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCoreProfileCompanyStateCopyWithImpl<$Res>
    extends _$CoreProfileCompanyStateCopyWithImpl<$Res>
    implements $LoadingCoreProfileCompanyStateCopyWith<$Res> {
  _$LoadingCoreProfileCompanyStateCopyWithImpl(
      LoadingCoreProfileCompanyState _value,
      $Res Function(LoadingCoreProfileCompanyState) _then)
      : super(_value, (v) => _then(v as LoadingCoreProfileCompanyState));

  @override
  LoadingCoreProfileCompanyState get _value =>
      super._value as LoadingCoreProfileCompanyState;
}

/// @nodoc

class _$LoadingCoreProfileCompanyState
    implements LoadingCoreProfileCompanyState {
  const _$LoadingCoreProfileCompanyState();

  @override
  String toString() {
    return 'CoreProfileCompanyState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingCoreProfileCompanyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(LocalVacancyData localVacancy, int vacancyId,
            List<Feature> categories, List<Feature> spheres, String status)
        attributes,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(LocalVacancyData localVacancy, int vacancyId,
            List<Feature> categories, List<Feature> spheres, String status)?
        attributes,
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
    required TResult Function(EmptyCoreProfileCompanyState value) empty,
    required TResult Function(LoadingCoreProfileCompanyState value) loading,
    required TResult Function(AttributesCoreProfileCompanyState value)
        attributes,
    required TResult Function(ErrorCoreProfileCompanyState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoreProfileCompanyState value)? empty,
    TResult Function(LoadingCoreProfileCompanyState value)? loading,
    TResult Function(AttributesCoreProfileCompanyState value)? attributes,
    TResult Function(ErrorCoreProfileCompanyState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingCoreProfileCompanyState
    implements CoreProfileCompanyState {
  const factory LoadingCoreProfileCompanyState() =
      _$LoadingCoreProfileCompanyState;
}

/// @nodoc
abstract class $AttributesCoreProfileCompanyStateCopyWith<$Res> {
  factory $AttributesCoreProfileCompanyStateCopyWith(
          AttributesCoreProfileCompanyState value,
          $Res Function(AttributesCoreProfileCompanyState) then) =
      _$AttributesCoreProfileCompanyStateCopyWithImpl<$Res>;
  $Res call(
      {LocalVacancyData localVacancy,
      int vacancyId,
      List<Feature> categories,
      List<Feature> spheres,
      String status});
}

/// @nodoc
class _$AttributesCoreProfileCompanyStateCopyWithImpl<$Res>
    extends _$CoreProfileCompanyStateCopyWithImpl<$Res>
    implements $AttributesCoreProfileCompanyStateCopyWith<$Res> {
  _$AttributesCoreProfileCompanyStateCopyWithImpl(
      AttributesCoreProfileCompanyState _value,
      $Res Function(AttributesCoreProfileCompanyState) _then)
      : super(_value, (v) => _then(v as AttributesCoreProfileCompanyState));

  @override
  AttributesCoreProfileCompanyState get _value =>
      super._value as AttributesCoreProfileCompanyState;

  @override
  $Res call({
    Object? localVacancy = freezed,
    Object? vacancyId = freezed,
    Object? categories = freezed,
    Object? spheres = freezed,
    Object? status = freezed,
  }) {
    return _then(AttributesCoreProfileCompanyState(
      localVacancy: localVacancy == freezed
          ? _value.localVacancy
          : localVacancy // ignore: cast_nullable_to_non_nullable
              as LocalVacancyData,
      vacancyId: vacancyId == freezed
          ? _value.vacancyId
          : vacancyId // ignore: cast_nullable_to_non_nullable
              as int,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Feature>,
      spheres: spheres == freezed
          ? _value.spheres
          : spheres // ignore: cast_nullable_to_non_nullable
              as List<Feature>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AttributesCoreProfileCompanyState
    implements AttributesCoreProfileCompanyState {
  const _$AttributesCoreProfileCompanyState(
      {required this.localVacancy,
      required this.vacancyId,
      required this.categories,
      required this.spheres,
      required this.status});

  @override
  final LocalVacancyData localVacancy;
  @override
  final int vacancyId;
  @override
  final List<Feature> categories;
  @override
  final List<Feature> spheres;
  @override
  final String status;

  @override
  String toString() {
    return 'CoreProfileCompanyState.attributes(localVacancy: $localVacancy, vacancyId: $vacancyId, categories: $categories, spheres: $spheres, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AttributesCoreProfileCompanyState &&
            (identical(other.localVacancy, localVacancy) ||
                const DeepCollectionEquality()
                    .equals(other.localVacancy, localVacancy)) &&
            (identical(other.vacancyId, vacancyId) ||
                const DeepCollectionEquality()
                    .equals(other.vacancyId, vacancyId)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.spheres, spheres) ||
                const DeepCollectionEquality()
                    .equals(other.spheres, spheres)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(localVacancy) ^
      const DeepCollectionEquality().hash(vacancyId) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(spheres) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $AttributesCoreProfileCompanyStateCopyWith<AttributesCoreProfileCompanyState>
      get copyWith => _$AttributesCoreProfileCompanyStateCopyWithImpl<
          AttributesCoreProfileCompanyState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(LocalVacancyData localVacancy, int vacancyId,
            List<Feature> categories, List<Feature> spheres, String status)
        attributes,
    required TResult Function(String message) error,
  }) {
    return attributes(localVacancy, vacancyId, categories, spheres, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(LocalVacancyData localVacancy, int vacancyId,
            List<Feature> categories, List<Feature> spheres, String status)?
        attributes,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (attributes != null) {
      return attributes(localVacancy, vacancyId, categories, spheres, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyCoreProfileCompanyState value) empty,
    required TResult Function(LoadingCoreProfileCompanyState value) loading,
    required TResult Function(AttributesCoreProfileCompanyState value)
        attributes,
    required TResult Function(ErrorCoreProfileCompanyState value) error,
  }) {
    return attributes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoreProfileCompanyState value)? empty,
    TResult Function(LoadingCoreProfileCompanyState value)? loading,
    TResult Function(AttributesCoreProfileCompanyState value)? attributes,
    TResult Function(ErrorCoreProfileCompanyState value)? error,
    required TResult orElse(),
  }) {
    if (attributes != null) {
      return attributes(this);
    }
    return orElse();
  }
}

abstract class AttributesCoreProfileCompanyState
    implements CoreProfileCompanyState {
  const factory AttributesCoreProfileCompanyState(
      {required LocalVacancyData localVacancy,
      required int vacancyId,
      required List<Feature> categories,
      required List<Feature> spheres,
      required String status}) = _$AttributesCoreProfileCompanyState;

  LocalVacancyData get localVacancy => throw _privateConstructorUsedError;
  int get vacancyId => throw _privateConstructorUsedError;
  List<Feature> get categories => throw _privateConstructorUsedError;
  List<Feature> get spheres => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributesCoreProfileCompanyStateCopyWith<AttributesCoreProfileCompanyState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCoreProfileCompanyStateCopyWith<$Res> {
  factory $ErrorCoreProfileCompanyStateCopyWith(
          ErrorCoreProfileCompanyState value,
          $Res Function(ErrorCoreProfileCompanyState) then) =
      _$ErrorCoreProfileCompanyStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorCoreProfileCompanyStateCopyWithImpl<$Res>
    extends _$CoreProfileCompanyStateCopyWithImpl<$Res>
    implements $ErrorCoreProfileCompanyStateCopyWith<$Res> {
  _$ErrorCoreProfileCompanyStateCopyWithImpl(
      ErrorCoreProfileCompanyState _value,
      $Res Function(ErrorCoreProfileCompanyState) _then)
      : super(_value, (v) => _then(v as ErrorCoreProfileCompanyState));

  @override
  ErrorCoreProfileCompanyState get _value =>
      super._value as ErrorCoreProfileCompanyState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorCoreProfileCompanyState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorCoreProfileCompanyState implements ErrorCoreProfileCompanyState {
  const _$ErrorCoreProfileCompanyState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CoreProfileCompanyState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorCoreProfileCompanyState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorCoreProfileCompanyStateCopyWith<ErrorCoreProfileCompanyState>
      get copyWith => _$ErrorCoreProfileCompanyStateCopyWithImpl<
          ErrorCoreProfileCompanyState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(LocalVacancyData localVacancy, int vacancyId,
            List<Feature> categories, List<Feature> spheres, String status)
        attributes,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(LocalVacancyData localVacancy, int vacancyId,
            List<Feature> categories, List<Feature> spheres, String status)?
        attributes,
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
    required TResult Function(EmptyCoreProfileCompanyState value) empty,
    required TResult Function(LoadingCoreProfileCompanyState value) loading,
    required TResult Function(AttributesCoreProfileCompanyState value)
        attributes,
    required TResult Function(ErrorCoreProfileCompanyState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoreProfileCompanyState value)? empty,
    TResult Function(LoadingCoreProfileCompanyState value)? loading,
    TResult Function(AttributesCoreProfileCompanyState value)? attributes,
    TResult Function(ErrorCoreProfileCompanyState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorCoreProfileCompanyState implements CoreProfileCompanyState {
  const factory ErrorCoreProfileCompanyState({required String message}) =
      _$ErrorCoreProfileCompanyState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCoreProfileCompanyStateCopyWith<ErrorCoreProfileCompanyState>
      get copyWith => throw _privateConstructorUsedError;
}
