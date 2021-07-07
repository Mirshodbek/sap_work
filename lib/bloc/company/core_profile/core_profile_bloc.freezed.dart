// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'core_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoreProfileEventTearOff {
  const _$CoreProfileEventTearOff();

  _InitialCoreProfileEvent initial() {
    return const _InitialCoreProfileEvent();
  }

  _OnSelectCoreProfileEvent onSelect({required String title, required int id}) {
    return _OnSelectCoreProfileEvent(
      title: title,
      id: id,
    );
  }

  _PostVacancyCoreProfileEvent postVacancy(
      {required String city,
      required String vacancyName,
      required String body,
      required String grade,
      required String minsalary,
      required String maxsalary,
      required String type,
      required String stage,
      required String schedule,
      required String abilities,
      required int categoryId}) {
    return _PostVacancyCoreProfileEvent(
      city: city,
      vacancyName: vacancyName,
      body: body,
      grade: grade,
      minsalary: minsalary,
      maxsalary: maxsalary,
      type: type,
      stage: stage,
      schedule: schedule,
      abilities: abilities,
      categoryId: categoryId,
    );
  }
}

/// @nodoc
const $CoreProfileEvent = _$CoreProfileEventTearOff();

/// @nodoc
mixin _$CoreProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String title, int id) onSelect,
    required TResult Function(
            String city,
            String vacancyName,
            String body,
            String grade,
            String minsalary,
            String maxsalary,
            String type,
            String stage,
            String schedule,
            String abilities,
            int categoryId)
        postVacancy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String title, int id)? onSelect,
    TResult Function(
            String city,
            String vacancyName,
            String body,
            String grade,
            String minsalary,
            String maxsalary,
            String type,
            String stage,
            String schedule,
            String abilities,
            int categoryId)?
        postVacancy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCoreProfileEvent value) initial,
    required TResult Function(_OnSelectCoreProfileEvent value) onSelect,
    required TResult Function(_PostVacancyCoreProfileEvent value) postVacancy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCoreProfileEvent value)? initial,
    TResult Function(_OnSelectCoreProfileEvent value)? onSelect,
    TResult Function(_PostVacancyCoreProfileEvent value)? postVacancy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreProfileEventCopyWith<$Res> {
  factory $CoreProfileEventCopyWith(
          CoreProfileEvent value, $Res Function(CoreProfileEvent) then) =
      _$CoreProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoreProfileEventCopyWithImpl<$Res>
    implements $CoreProfileEventCopyWith<$Res> {
  _$CoreProfileEventCopyWithImpl(this._value, this._then);

  final CoreProfileEvent _value;
  // ignore: unused_field
  final $Res Function(CoreProfileEvent) _then;
}

/// @nodoc
abstract class _$InitialCoreProfileEventCopyWith<$Res> {
  factory _$InitialCoreProfileEventCopyWith(_InitialCoreProfileEvent value,
          $Res Function(_InitialCoreProfileEvent) then) =
      __$InitialCoreProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCoreProfileEventCopyWithImpl<$Res>
    extends _$CoreProfileEventCopyWithImpl<$Res>
    implements _$InitialCoreProfileEventCopyWith<$Res> {
  __$InitialCoreProfileEventCopyWithImpl(_InitialCoreProfileEvent _value,
      $Res Function(_InitialCoreProfileEvent) _then)
      : super(_value, (v) => _then(v as _InitialCoreProfileEvent));

  @override
  _InitialCoreProfileEvent get _value =>
      super._value as _InitialCoreProfileEvent;
}

/// @nodoc

class _$_InitialCoreProfileEvent implements _InitialCoreProfileEvent {
  const _$_InitialCoreProfileEvent();

  @override
  String toString() {
    return 'CoreProfileEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialCoreProfileEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String title, int id) onSelect,
    required TResult Function(
            String city,
            String vacancyName,
            String body,
            String grade,
            String minsalary,
            String maxsalary,
            String type,
            String stage,
            String schedule,
            String abilities,
            int categoryId)
        postVacancy,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String title, int id)? onSelect,
    TResult Function(
            String city,
            String vacancyName,
            String body,
            String grade,
            String minsalary,
            String maxsalary,
            String type,
            String stage,
            String schedule,
            String abilities,
            int categoryId)?
        postVacancy,
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
    required TResult Function(_InitialCoreProfileEvent value) initial,
    required TResult Function(_OnSelectCoreProfileEvent value) onSelect,
    required TResult Function(_PostVacancyCoreProfileEvent value) postVacancy,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCoreProfileEvent value)? initial,
    TResult Function(_OnSelectCoreProfileEvent value)? onSelect,
    TResult Function(_PostVacancyCoreProfileEvent value)? postVacancy,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialCoreProfileEvent implements CoreProfileEvent {
  const factory _InitialCoreProfileEvent() = _$_InitialCoreProfileEvent;
}

/// @nodoc
abstract class _$OnSelectCoreProfileEventCopyWith<$Res> {
  factory _$OnSelectCoreProfileEventCopyWith(_OnSelectCoreProfileEvent value,
          $Res Function(_OnSelectCoreProfileEvent) then) =
      __$OnSelectCoreProfileEventCopyWithImpl<$Res>;
  $Res call({String title, int id});
}

/// @nodoc
class __$OnSelectCoreProfileEventCopyWithImpl<$Res>
    extends _$CoreProfileEventCopyWithImpl<$Res>
    implements _$OnSelectCoreProfileEventCopyWith<$Res> {
  __$OnSelectCoreProfileEventCopyWithImpl(_OnSelectCoreProfileEvent _value,
      $Res Function(_OnSelectCoreProfileEvent) _then)
      : super(_value, (v) => _then(v as _OnSelectCoreProfileEvent));

  @override
  _OnSelectCoreProfileEvent get _value =>
      super._value as _OnSelectCoreProfileEvent;

  @override
  $Res call({
    Object? title = freezed,
    Object? id = freezed,
  }) {
    return _then(_OnSelectCoreProfileEvent(
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

class _$_OnSelectCoreProfileEvent implements _OnSelectCoreProfileEvent {
  const _$_OnSelectCoreProfileEvent({required this.title, required this.id});

  @override
  final String title;
  @override
  final int id;

  @override
  String toString() {
    return 'CoreProfileEvent.onSelect(title: $title, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnSelectCoreProfileEvent &&
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
  _$OnSelectCoreProfileEventCopyWith<_OnSelectCoreProfileEvent> get copyWith =>
      __$OnSelectCoreProfileEventCopyWithImpl<_OnSelectCoreProfileEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String title, int id) onSelect,
    required TResult Function(
            String city,
            String vacancyName,
            String body,
            String grade,
            String minsalary,
            String maxsalary,
            String type,
            String stage,
            String schedule,
            String abilities,
            int categoryId)
        postVacancy,
  }) {
    return onSelect(title, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String title, int id)? onSelect,
    TResult Function(
            String city,
            String vacancyName,
            String body,
            String grade,
            String minsalary,
            String maxsalary,
            String type,
            String stage,
            String schedule,
            String abilities,
            int categoryId)?
        postVacancy,
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
    required TResult Function(_InitialCoreProfileEvent value) initial,
    required TResult Function(_OnSelectCoreProfileEvent value) onSelect,
    required TResult Function(_PostVacancyCoreProfileEvent value) postVacancy,
  }) {
    return onSelect(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCoreProfileEvent value)? initial,
    TResult Function(_OnSelectCoreProfileEvent value)? onSelect,
    TResult Function(_PostVacancyCoreProfileEvent value)? postVacancy,
    required TResult orElse(),
  }) {
    if (onSelect != null) {
      return onSelect(this);
    }
    return orElse();
  }
}

abstract class _OnSelectCoreProfileEvent implements CoreProfileEvent {
  const factory _OnSelectCoreProfileEvent(
      {required String title, required int id}) = _$_OnSelectCoreProfileEvent;

  String get title => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnSelectCoreProfileEventCopyWith<_OnSelectCoreProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PostVacancyCoreProfileEventCopyWith<$Res> {
  factory _$PostVacancyCoreProfileEventCopyWith(
          _PostVacancyCoreProfileEvent value,
          $Res Function(_PostVacancyCoreProfileEvent) then) =
      __$PostVacancyCoreProfileEventCopyWithImpl<$Res>;
  $Res call(
      {String city,
      String vacancyName,
      String body,
      String grade,
      String minsalary,
      String maxsalary,
      String type,
      String stage,
      String schedule,
      String abilities,
      int categoryId});
}

/// @nodoc
class __$PostVacancyCoreProfileEventCopyWithImpl<$Res>
    extends _$CoreProfileEventCopyWithImpl<$Res>
    implements _$PostVacancyCoreProfileEventCopyWith<$Res> {
  __$PostVacancyCoreProfileEventCopyWithImpl(
      _PostVacancyCoreProfileEvent _value,
      $Res Function(_PostVacancyCoreProfileEvent) _then)
      : super(_value, (v) => _then(v as _PostVacancyCoreProfileEvent));

  @override
  _PostVacancyCoreProfileEvent get _value =>
      super._value as _PostVacancyCoreProfileEvent;

  @override
  $Res call({
    Object? city = freezed,
    Object? vacancyName = freezed,
    Object? body = freezed,
    Object? grade = freezed,
    Object? minsalary = freezed,
    Object? maxsalary = freezed,
    Object? type = freezed,
    Object? stage = freezed,
    Object? schedule = freezed,
    Object? abilities = freezed,
    Object? categoryId = freezed,
  }) {
    return _then(_PostVacancyCoreProfileEvent(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      vacancyName: vacancyName == freezed
          ? _value.vacancyName
          : vacancyName // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      grade: grade == freezed
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String,
      minsalary: minsalary == freezed
          ? _value.minsalary
          : minsalary // ignore: cast_nullable_to_non_nullable
              as String,
      maxsalary: maxsalary == freezed
          ? _value.maxsalary
          : maxsalary // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      stage: stage == freezed
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String,
      abilities: abilities == freezed
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PostVacancyCoreProfileEvent implements _PostVacancyCoreProfileEvent {
  const _$_PostVacancyCoreProfileEvent(
      {required this.city,
      required this.vacancyName,
      required this.body,
      required this.grade,
      required this.minsalary,
      required this.maxsalary,
      required this.type,
      required this.stage,
      required this.schedule,
      required this.abilities,
      required this.categoryId});

  @override
  final String city;
  @override
  final String vacancyName;
  @override
  final String body;
  @override
  final String grade;
  @override
  final String minsalary;
  @override
  final String maxsalary;
  @override
  final String type;
  @override
  final String stage;
  @override
  final String schedule;
  @override
  final String abilities;
  @override
  final int categoryId;

  @override
  String toString() {
    return 'CoreProfileEvent.postVacancy(city: $city, vacancyName: $vacancyName, body: $body, grade: $grade, minsalary: $minsalary, maxsalary: $maxsalary, type: $type, stage: $stage, schedule: $schedule, abilities: $abilities, categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostVacancyCoreProfileEvent &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.vacancyName, vacancyName) ||
                const DeepCollectionEquality()
                    .equals(other.vacancyName, vacancyName)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.grade, grade) ||
                const DeepCollectionEquality().equals(other.grade, grade)) &&
            (identical(other.minsalary, minsalary) ||
                const DeepCollectionEquality()
                    .equals(other.minsalary, minsalary)) &&
            (identical(other.maxsalary, maxsalary) ||
                const DeepCollectionEquality()
                    .equals(other.maxsalary, maxsalary)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.stage, stage) ||
                const DeepCollectionEquality().equals(other.stage, stage)) &&
            (identical(other.schedule, schedule) ||
                const DeepCollectionEquality()
                    .equals(other.schedule, schedule)) &&
            (identical(other.abilities, abilities) ||
                const DeepCollectionEquality()
                    .equals(other.abilities, abilities)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(vacancyName) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(grade) ^
      const DeepCollectionEquality().hash(minsalary) ^
      const DeepCollectionEquality().hash(maxsalary) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(stage) ^
      const DeepCollectionEquality().hash(schedule) ^
      const DeepCollectionEquality().hash(abilities) ^
      const DeepCollectionEquality().hash(categoryId);

  @JsonKey(ignore: true)
  @override
  _$PostVacancyCoreProfileEventCopyWith<_PostVacancyCoreProfileEvent>
      get copyWith => __$PostVacancyCoreProfileEventCopyWithImpl<
          _PostVacancyCoreProfileEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String title, int id) onSelect,
    required TResult Function(
            String city,
            String vacancyName,
            String body,
            String grade,
            String minsalary,
            String maxsalary,
            String type,
            String stage,
            String schedule,
            String abilities,
            int categoryId)
        postVacancy,
  }) {
    return postVacancy(city, vacancyName, body, grade, minsalary, maxsalary,
        type, stage, schedule, abilities, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String title, int id)? onSelect,
    TResult Function(
            String city,
            String vacancyName,
            String body,
            String grade,
            String minsalary,
            String maxsalary,
            String type,
            String stage,
            String schedule,
            String abilities,
            int categoryId)?
        postVacancy,
    required TResult orElse(),
  }) {
    if (postVacancy != null) {
      return postVacancy(city, vacancyName, body, grade, minsalary, maxsalary,
          type, stage, schedule, abilities, categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCoreProfileEvent value) initial,
    required TResult Function(_OnSelectCoreProfileEvent value) onSelect,
    required TResult Function(_PostVacancyCoreProfileEvent value) postVacancy,
  }) {
    return postVacancy(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCoreProfileEvent value)? initial,
    TResult Function(_OnSelectCoreProfileEvent value)? onSelect,
    TResult Function(_PostVacancyCoreProfileEvent value)? postVacancy,
    required TResult orElse(),
  }) {
    if (postVacancy != null) {
      return postVacancy(this);
    }
    return orElse();
  }
}

abstract class _PostVacancyCoreProfileEvent implements CoreProfileEvent {
  const factory _PostVacancyCoreProfileEvent(
      {required String city,
      required String vacancyName,
      required String body,
      required String grade,
      required String minsalary,
      required String maxsalary,
      required String type,
      required String stage,
      required String schedule,
      required String abilities,
      required int categoryId}) = _$_PostVacancyCoreProfileEvent;

  String get city => throw _privateConstructorUsedError;
  String get vacancyName => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get grade => throw _privateConstructorUsedError;
  String get minsalary => throw _privateConstructorUsedError;
  String get maxsalary => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get stage => throw _privateConstructorUsedError;
  String get schedule => throw _privateConstructorUsedError;
  String get abilities => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PostVacancyCoreProfileEventCopyWith<_PostVacancyCoreProfileEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CoreProfileStateTearOff {
  const _$CoreProfileStateTearOff();

  EmptyCoreProfileState empty() {
    return const EmptyCoreProfileState();
  }

  LoadingCoreProfileState loading() {
    return const LoadingCoreProfileState();
  }

  AttributesCoreProfileState attributes(
      {required LocalVacancyData localVacancy,
      required int vacancyId,
      required List<Category> categories,
      required FormzStatus status}) {
    return AttributesCoreProfileState(
      localVacancy: localVacancy,
      vacancyId: vacancyId,
      categories: categories,
      status: status,
    );
  }

  ErrorCoreProfileState error({required String message}) {
    return ErrorCoreProfileState(
      message: message,
    );
  }
}

/// @nodoc
const $CoreProfileState = _$CoreProfileStateTearOff();

/// @nodoc
mixin _$CoreProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(LocalVacancyData localVacancy, int vacancyId,
            List<Category> categories, FormzStatus status)
        attributes,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(LocalVacancyData localVacancy, int vacancyId,
            List<Category> categories, FormzStatus status)?
        attributes,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyCoreProfileState value) empty,
    required TResult Function(LoadingCoreProfileState value) loading,
    required TResult Function(AttributesCoreProfileState value) attributes,
    required TResult Function(ErrorCoreProfileState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoreProfileState value)? empty,
    TResult Function(LoadingCoreProfileState value)? loading,
    TResult Function(AttributesCoreProfileState value)? attributes,
    TResult Function(ErrorCoreProfileState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreProfileStateCopyWith<$Res> {
  factory $CoreProfileStateCopyWith(
          CoreProfileState value, $Res Function(CoreProfileState) then) =
      _$CoreProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoreProfileStateCopyWithImpl<$Res>
    implements $CoreProfileStateCopyWith<$Res> {
  _$CoreProfileStateCopyWithImpl(this._value, this._then);

  final CoreProfileState _value;
  // ignore: unused_field
  final $Res Function(CoreProfileState) _then;
}

/// @nodoc
abstract class $EmptyCoreProfileStateCopyWith<$Res> {
  factory $EmptyCoreProfileStateCopyWith(EmptyCoreProfileState value,
          $Res Function(EmptyCoreProfileState) then) =
      _$EmptyCoreProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyCoreProfileStateCopyWithImpl<$Res>
    extends _$CoreProfileStateCopyWithImpl<$Res>
    implements $EmptyCoreProfileStateCopyWith<$Res> {
  _$EmptyCoreProfileStateCopyWithImpl(
      EmptyCoreProfileState _value, $Res Function(EmptyCoreProfileState) _then)
      : super(_value, (v) => _then(v as EmptyCoreProfileState));

  @override
  EmptyCoreProfileState get _value => super._value as EmptyCoreProfileState;
}

/// @nodoc

class _$EmptyCoreProfileState implements EmptyCoreProfileState {
  const _$EmptyCoreProfileState();

  @override
  String toString() {
    return 'CoreProfileState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyCoreProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(LocalVacancyData localVacancy, int vacancyId,
            List<Category> categories, FormzStatus status)
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
            List<Category> categories, FormzStatus status)?
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
    required TResult Function(EmptyCoreProfileState value) empty,
    required TResult Function(LoadingCoreProfileState value) loading,
    required TResult Function(AttributesCoreProfileState value) attributes,
    required TResult Function(ErrorCoreProfileState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoreProfileState value)? empty,
    TResult Function(LoadingCoreProfileState value)? loading,
    TResult Function(AttributesCoreProfileState value)? attributes,
    TResult Function(ErrorCoreProfileState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyCoreProfileState implements CoreProfileState {
  const factory EmptyCoreProfileState() = _$EmptyCoreProfileState;
}

/// @nodoc
abstract class $LoadingCoreProfileStateCopyWith<$Res> {
  factory $LoadingCoreProfileStateCopyWith(LoadingCoreProfileState value,
          $Res Function(LoadingCoreProfileState) then) =
      _$LoadingCoreProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCoreProfileStateCopyWithImpl<$Res>
    extends _$CoreProfileStateCopyWithImpl<$Res>
    implements $LoadingCoreProfileStateCopyWith<$Res> {
  _$LoadingCoreProfileStateCopyWithImpl(LoadingCoreProfileState _value,
      $Res Function(LoadingCoreProfileState) _then)
      : super(_value, (v) => _then(v as LoadingCoreProfileState));

  @override
  LoadingCoreProfileState get _value => super._value as LoadingCoreProfileState;
}

/// @nodoc

class _$LoadingCoreProfileState implements LoadingCoreProfileState {
  const _$LoadingCoreProfileState();

  @override
  String toString() {
    return 'CoreProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingCoreProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(LocalVacancyData localVacancy, int vacancyId,
            List<Category> categories, FormzStatus status)
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
            List<Category> categories, FormzStatus status)?
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
    required TResult Function(EmptyCoreProfileState value) empty,
    required TResult Function(LoadingCoreProfileState value) loading,
    required TResult Function(AttributesCoreProfileState value) attributes,
    required TResult Function(ErrorCoreProfileState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoreProfileState value)? empty,
    TResult Function(LoadingCoreProfileState value)? loading,
    TResult Function(AttributesCoreProfileState value)? attributes,
    TResult Function(ErrorCoreProfileState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingCoreProfileState implements CoreProfileState {
  const factory LoadingCoreProfileState() = _$LoadingCoreProfileState;
}

/// @nodoc
abstract class $AttributesCoreProfileStateCopyWith<$Res> {
  factory $AttributesCoreProfileStateCopyWith(AttributesCoreProfileState value,
          $Res Function(AttributesCoreProfileState) then) =
      _$AttributesCoreProfileStateCopyWithImpl<$Res>;
  $Res call(
      {LocalVacancyData localVacancy,
      int vacancyId,
      List<Category> categories,
      FormzStatus status});
}

/// @nodoc
class _$AttributesCoreProfileStateCopyWithImpl<$Res>
    extends _$CoreProfileStateCopyWithImpl<$Res>
    implements $AttributesCoreProfileStateCopyWith<$Res> {
  _$AttributesCoreProfileStateCopyWithImpl(AttributesCoreProfileState _value,
      $Res Function(AttributesCoreProfileState) _then)
      : super(_value, (v) => _then(v as AttributesCoreProfileState));

  @override
  AttributesCoreProfileState get _value =>
      super._value as AttributesCoreProfileState;

  @override
  $Res call({
    Object? localVacancy = freezed,
    Object? vacancyId = freezed,
    Object? categories = freezed,
    Object? status = freezed,
  }) {
    return _then(AttributesCoreProfileState(
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
              as List<Category>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$AttributesCoreProfileState implements AttributesCoreProfileState {
  const _$AttributesCoreProfileState(
      {required this.localVacancy,
      required this.vacancyId,
      required this.categories,
      required this.status});

  @override
  final LocalVacancyData localVacancy;
  @override
  final int vacancyId;
  @override
  final List<Category> categories;
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'CoreProfileState.attributes(localVacancy: $localVacancy, vacancyId: $vacancyId, categories: $categories, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AttributesCoreProfileState &&
            (identical(other.localVacancy, localVacancy) ||
                const DeepCollectionEquality()
                    .equals(other.localVacancy, localVacancy)) &&
            (identical(other.vacancyId, vacancyId) ||
                const DeepCollectionEquality()
                    .equals(other.vacancyId, vacancyId)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(localVacancy) ^
      const DeepCollectionEquality().hash(vacancyId) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $AttributesCoreProfileStateCopyWith<AttributesCoreProfileState>
      get copyWith =>
          _$AttributesCoreProfileStateCopyWithImpl<AttributesCoreProfileState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(LocalVacancyData localVacancy, int vacancyId,
            List<Category> categories, FormzStatus status)
        attributes,
    required TResult Function(String message) error,
  }) {
    return attributes(localVacancy, vacancyId, categories, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(LocalVacancyData localVacancy, int vacancyId,
            List<Category> categories, FormzStatus status)?
        attributes,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (attributes != null) {
      return attributes(localVacancy, vacancyId, categories, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyCoreProfileState value) empty,
    required TResult Function(LoadingCoreProfileState value) loading,
    required TResult Function(AttributesCoreProfileState value) attributes,
    required TResult Function(ErrorCoreProfileState value) error,
  }) {
    return attributes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoreProfileState value)? empty,
    TResult Function(LoadingCoreProfileState value)? loading,
    TResult Function(AttributesCoreProfileState value)? attributes,
    TResult Function(ErrorCoreProfileState value)? error,
    required TResult orElse(),
  }) {
    if (attributes != null) {
      return attributes(this);
    }
    return orElse();
  }
}

abstract class AttributesCoreProfileState implements CoreProfileState {
  const factory AttributesCoreProfileState(
      {required LocalVacancyData localVacancy,
      required int vacancyId,
      required List<Category> categories,
      required FormzStatus status}) = _$AttributesCoreProfileState;

  LocalVacancyData get localVacancy => throw _privateConstructorUsedError;
  int get vacancyId => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributesCoreProfileStateCopyWith<AttributesCoreProfileState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCoreProfileStateCopyWith<$Res> {
  factory $ErrorCoreProfileStateCopyWith(ErrorCoreProfileState value,
          $Res Function(ErrorCoreProfileState) then) =
      _$ErrorCoreProfileStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorCoreProfileStateCopyWithImpl<$Res>
    extends _$CoreProfileStateCopyWithImpl<$Res>
    implements $ErrorCoreProfileStateCopyWith<$Res> {
  _$ErrorCoreProfileStateCopyWithImpl(
      ErrorCoreProfileState _value, $Res Function(ErrorCoreProfileState) _then)
      : super(_value, (v) => _then(v as ErrorCoreProfileState));

  @override
  ErrorCoreProfileState get _value => super._value as ErrorCoreProfileState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorCoreProfileState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorCoreProfileState implements ErrorCoreProfileState {
  const _$ErrorCoreProfileState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CoreProfileState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorCoreProfileState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorCoreProfileStateCopyWith<ErrorCoreProfileState> get copyWith =>
      _$ErrorCoreProfileStateCopyWithImpl<ErrorCoreProfileState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(LocalVacancyData localVacancy, int vacancyId,
            List<Category> categories, FormzStatus status)
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
            List<Category> categories, FormzStatus status)?
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
    required TResult Function(EmptyCoreProfileState value) empty,
    required TResult Function(LoadingCoreProfileState value) loading,
    required TResult Function(AttributesCoreProfileState value) attributes,
    required TResult Function(ErrorCoreProfileState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoreProfileState value)? empty,
    TResult Function(LoadingCoreProfileState value)? loading,
    TResult Function(AttributesCoreProfileState value)? attributes,
    TResult Function(ErrorCoreProfileState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorCoreProfileState implements CoreProfileState {
  const factory ErrorCoreProfileState({required String message}) =
      _$ErrorCoreProfileState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCoreProfileStateCopyWith<ErrorCoreProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
