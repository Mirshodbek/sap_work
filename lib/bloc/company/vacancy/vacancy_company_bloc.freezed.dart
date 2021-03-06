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

  _PostVacancyCompanyEvent postVacancy(
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
      required int categoryId,
      required int sphereId}) {
    return _PostVacancyCompanyEvent(
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
      sphereId: sphereId,
    );
  }

  _EditVacancyCompanyEvent editVacancy(
      {String? city,
      String? body,
      String? grade,
      String? minsalary,
      String? maxsalary,
      String? type,
      String? stage,
      String? schedule,
      String? abilities,
      required int categoryId,
      required int sphereId,
      required int id}) {
    return _EditVacancyCompanyEvent(
      city: city,
      body: body,
      grade: grade,
      minsalary: minsalary,
      maxsalary: maxsalary,
      type: type,
      stage: stage,
      schedule: schedule,
      abilities: abilities,
      categoryId: categoryId,
      sphereId: sphereId,
      id: id,
    );
  }

  _ActivateOrDeactivateVacancyCompanyEvent activateOrDeactivate(
      {required int id, required int active}) {
    return _ActivateOrDeactivateVacancyCompanyEvent(
      id: id,
      active: active,
    );
  }
}

/// @nodoc
const $VacancyCompanyEvent = _$VacancyCompanyEventTearOff();

/// @nodoc
mixin _$VacancyCompanyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getVacancy,
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
            int categoryId,
            int sphereId)
        postVacancy,
    required TResult Function(
            String? city,
            String? body,
            String? grade,
            String? minsalary,
            String? maxsalary,
            String? type,
            String? stage,
            String? schedule,
            String? abilities,
            int categoryId,
            int sphereId,
            int id)
        editVacancy,
    required TResult Function(int id, int active) activateOrDeactivate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVacancy,
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
            int categoryId,
            int sphereId)?
        postVacancy,
    TResult Function(
            String? city,
            String? body,
            String? grade,
            String? minsalary,
            String? maxsalary,
            String? type,
            String? stage,
            String? schedule,
            String? abilities,
            int categoryId,
            int sphereId,
            int id)?
        editVacancy,
    TResult Function(int id, int active)? activateOrDeactivate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVacancyCompanyEvent value) getVacancy,
    required TResult Function(_PostVacancyCompanyEvent value) postVacancy,
    required TResult Function(_EditVacancyCompanyEvent value) editVacancy,
    required TResult Function(_ActivateOrDeactivateVacancyCompanyEvent value)
        activateOrDeactivate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVacancyCompanyEvent value)? getVacancy,
    TResult Function(_PostVacancyCompanyEvent value)? postVacancy,
    TResult Function(_EditVacancyCompanyEvent value)? editVacancy,
    TResult Function(_ActivateOrDeactivateVacancyCompanyEvent value)?
        activateOrDeactivate,
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
            int categoryId,
            int sphereId)
        postVacancy,
    required TResult Function(
            String? city,
            String? body,
            String? grade,
            String? minsalary,
            String? maxsalary,
            String? type,
            String? stage,
            String? schedule,
            String? abilities,
            int categoryId,
            int sphereId,
            int id)
        editVacancy,
    required TResult Function(int id, int active) activateOrDeactivate,
  }) {
    return getVacancy();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVacancy,
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
            int categoryId,
            int sphereId)?
        postVacancy,
    TResult Function(
            String? city,
            String? body,
            String? grade,
            String? minsalary,
            String? maxsalary,
            String? type,
            String? stage,
            String? schedule,
            String? abilities,
            int categoryId,
            int sphereId,
            int id)?
        editVacancy,
    TResult Function(int id, int active)? activateOrDeactivate,
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
    required TResult Function(_PostVacancyCompanyEvent value) postVacancy,
    required TResult Function(_EditVacancyCompanyEvent value) editVacancy,
    required TResult Function(_ActivateOrDeactivateVacancyCompanyEvent value)
        activateOrDeactivate,
  }) {
    return getVacancy(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVacancyCompanyEvent value)? getVacancy,
    TResult Function(_PostVacancyCompanyEvent value)? postVacancy,
    TResult Function(_EditVacancyCompanyEvent value)? editVacancy,
    TResult Function(_ActivateOrDeactivateVacancyCompanyEvent value)?
        activateOrDeactivate,
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
abstract class _$PostVacancyCompanyEventCopyWith<$Res> {
  factory _$PostVacancyCompanyEventCopyWith(_PostVacancyCompanyEvent value,
          $Res Function(_PostVacancyCompanyEvent) then) =
      __$PostVacancyCompanyEventCopyWithImpl<$Res>;
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
      int categoryId,
      int sphereId});
}

/// @nodoc
class __$PostVacancyCompanyEventCopyWithImpl<$Res>
    extends _$VacancyCompanyEventCopyWithImpl<$Res>
    implements _$PostVacancyCompanyEventCopyWith<$Res> {
  __$PostVacancyCompanyEventCopyWithImpl(_PostVacancyCompanyEvent _value,
      $Res Function(_PostVacancyCompanyEvent) _then)
      : super(_value, (v) => _then(v as _PostVacancyCompanyEvent));

  @override
  _PostVacancyCompanyEvent get _value =>
      super._value as _PostVacancyCompanyEvent;

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
    Object? sphereId = freezed,
  }) {
    return _then(_PostVacancyCompanyEvent(
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
      sphereId: sphereId == freezed
          ? _value.sphereId
          : sphereId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PostVacancyCompanyEvent implements _PostVacancyCompanyEvent {
  const _$_PostVacancyCompanyEvent(
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
      required this.categoryId,
      required this.sphereId});

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
  final int sphereId;

  @override
  String toString() {
    return 'VacancyCompanyEvent.postVacancy(city: $city, vacancyName: $vacancyName, body: $body, grade: $grade, minsalary: $minsalary, maxsalary: $maxsalary, type: $type, stage: $stage, schedule: $schedule, abilities: $abilities, categoryId: $categoryId, sphereId: $sphereId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostVacancyCompanyEvent &&
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
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.sphereId, sphereId) ||
                const DeepCollectionEquality()
                    .equals(other.sphereId, sphereId)));
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
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(sphereId);

  @JsonKey(ignore: true)
  @override
  _$PostVacancyCompanyEventCopyWith<_PostVacancyCompanyEvent> get copyWith =>
      __$PostVacancyCompanyEventCopyWithImpl<_PostVacancyCompanyEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getVacancy,
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
            int categoryId,
            int sphereId)
        postVacancy,
    required TResult Function(
            String? city,
            String? body,
            String? grade,
            String? minsalary,
            String? maxsalary,
            String? type,
            String? stage,
            String? schedule,
            String? abilities,
            int categoryId,
            int sphereId,
            int id)
        editVacancy,
    required TResult Function(int id, int active) activateOrDeactivate,
  }) {
    return postVacancy(city, vacancyName, body, grade, minsalary, maxsalary,
        type, stage, schedule, abilities, categoryId, sphereId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVacancy,
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
            int categoryId,
            int sphereId)?
        postVacancy,
    TResult Function(
            String? city,
            String? body,
            String? grade,
            String? minsalary,
            String? maxsalary,
            String? type,
            String? stage,
            String? schedule,
            String? abilities,
            int categoryId,
            int sphereId,
            int id)?
        editVacancy,
    TResult Function(int id, int active)? activateOrDeactivate,
    required TResult orElse(),
  }) {
    if (postVacancy != null) {
      return postVacancy(city, vacancyName, body, grade, minsalary, maxsalary,
          type, stage, schedule, abilities, categoryId, sphereId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVacancyCompanyEvent value) getVacancy,
    required TResult Function(_PostVacancyCompanyEvent value) postVacancy,
    required TResult Function(_EditVacancyCompanyEvent value) editVacancy,
    required TResult Function(_ActivateOrDeactivateVacancyCompanyEvent value)
        activateOrDeactivate,
  }) {
    return postVacancy(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVacancyCompanyEvent value)? getVacancy,
    TResult Function(_PostVacancyCompanyEvent value)? postVacancy,
    TResult Function(_EditVacancyCompanyEvent value)? editVacancy,
    TResult Function(_ActivateOrDeactivateVacancyCompanyEvent value)?
        activateOrDeactivate,
    required TResult orElse(),
  }) {
    if (postVacancy != null) {
      return postVacancy(this);
    }
    return orElse();
  }
}

abstract class _PostVacancyCompanyEvent implements VacancyCompanyEvent {
  const factory _PostVacancyCompanyEvent(
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
      required int categoryId,
      required int sphereId}) = _$_PostVacancyCompanyEvent;

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
  int get sphereId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PostVacancyCompanyEventCopyWith<_PostVacancyCompanyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EditVacancyCompanyEventCopyWith<$Res> {
  factory _$EditVacancyCompanyEventCopyWith(_EditVacancyCompanyEvent value,
          $Res Function(_EditVacancyCompanyEvent) then) =
      __$EditVacancyCompanyEventCopyWithImpl<$Res>;
  $Res call(
      {String? city,
      String? body,
      String? grade,
      String? minsalary,
      String? maxsalary,
      String? type,
      String? stage,
      String? schedule,
      String? abilities,
      int categoryId,
      int sphereId,
      int id});
}

/// @nodoc
class __$EditVacancyCompanyEventCopyWithImpl<$Res>
    extends _$VacancyCompanyEventCopyWithImpl<$Res>
    implements _$EditVacancyCompanyEventCopyWith<$Res> {
  __$EditVacancyCompanyEventCopyWithImpl(_EditVacancyCompanyEvent _value,
      $Res Function(_EditVacancyCompanyEvent) _then)
      : super(_value, (v) => _then(v as _EditVacancyCompanyEvent));

  @override
  _EditVacancyCompanyEvent get _value =>
      super._value as _EditVacancyCompanyEvent;

  @override
  $Res call({
    Object? city = freezed,
    Object? body = freezed,
    Object? grade = freezed,
    Object? minsalary = freezed,
    Object? maxsalary = freezed,
    Object? type = freezed,
    Object? stage = freezed,
    Object? schedule = freezed,
    Object? abilities = freezed,
    Object? categoryId = freezed,
    Object? sphereId = freezed,
    Object? id = freezed,
  }) {
    return _then(_EditVacancyCompanyEvent(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      grade: grade == freezed
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String?,
      minsalary: minsalary == freezed
          ? _value.minsalary
          : minsalary // ignore: cast_nullable_to_non_nullable
              as String?,
      maxsalary: maxsalary == freezed
          ? _value.maxsalary
          : maxsalary // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      stage: stage == freezed
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String?,
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String?,
      abilities: abilities == freezed
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      sphereId: sphereId == freezed
          ? _value.sphereId
          : sphereId // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EditVacancyCompanyEvent implements _EditVacancyCompanyEvent {
  const _$_EditVacancyCompanyEvent(
      {this.city,
      this.body,
      this.grade,
      this.minsalary,
      this.maxsalary,
      this.type,
      this.stage,
      this.schedule,
      this.abilities,
      required this.categoryId,
      required this.sphereId,
      required this.id});

  @override
  final String? city;
  @override
  final String? body;
  @override
  final String? grade;
  @override
  final String? minsalary;
  @override
  final String? maxsalary;
  @override
  final String? type;
  @override
  final String? stage;
  @override
  final String? schedule;
  @override
  final String? abilities;
  @override
  final int categoryId;
  @override
  final int sphereId;
  @override
  final int id;

  @override
  String toString() {
    return 'VacancyCompanyEvent.editVacancy(city: $city, body: $body, grade: $grade, minsalary: $minsalary, maxsalary: $maxsalary, type: $type, stage: $stage, schedule: $schedule, abilities: $abilities, categoryId: $categoryId, sphereId: $sphereId, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditVacancyCompanyEvent &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
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
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.sphereId, sphereId) ||
                const DeepCollectionEquality()
                    .equals(other.sphereId, sphereId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(grade) ^
      const DeepCollectionEquality().hash(minsalary) ^
      const DeepCollectionEquality().hash(maxsalary) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(stage) ^
      const DeepCollectionEquality().hash(schedule) ^
      const DeepCollectionEquality().hash(abilities) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(sphereId) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$EditVacancyCompanyEventCopyWith<_EditVacancyCompanyEvent> get copyWith =>
      __$EditVacancyCompanyEventCopyWithImpl<_EditVacancyCompanyEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getVacancy,
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
            int categoryId,
            int sphereId)
        postVacancy,
    required TResult Function(
            String? city,
            String? body,
            String? grade,
            String? minsalary,
            String? maxsalary,
            String? type,
            String? stage,
            String? schedule,
            String? abilities,
            int categoryId,
            int sphereId,
            int id)
        editVacancy,
    required TResult Function(int id, int active) activateOrDeactivate,
  }) {
    return editVacancy(city, body, grade, minsalary, maxsalary, type, stage,
        schedule, abilities, categoryId, sphereId, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVacancy,
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
            int categoryId,
            int sphereId)?
        postVacancy,
    TResult Function(
            String? city,
            String? body,
            String? grade,
            String? minsalary,
            String? maxsalary,
            String? type,
            String? stage,
            String? schedule,
            String? abilities,
            int categoryId,
            int sphereId,
            int id)?
        editVacancy,
    TResult Function(int id, int active)? activateOrDeactivate,
    required TResult orElse(),
  }) {
    if (editVacancy != null) {
      return editVacancy(city, body, grade, minsalary, maxsalary, type, stage,
          schedule, abilities, categoryId, sphereId, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVacancyCompanyEvent value) getVacancy,
    required TResult Function(_PostVacancyCompanyEvent value) postVacancy,
    required TResult Function(_EditVacancyCompanyEvent value) editVacancy,
    required TResult Function(_ActivateOrDeactivateVacancyCompanyEvent value)
        activateOrDeactivate,
  }) {
    return editVacancy(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVacancyCompanyEvent value)? getVacancy,
    TResult Function(_PostVacancyCompanyEvent value)? postVacancy,
    TResult Function(_EditVacancyCompanyEvent value)? editVacancy,
    TResult Function(_ActivateOrDeactivateVacancyCompanyEvent value)?
        activateOrDeactivate,
    required TResult orElse(),
  }) {
    if (editVacancy != null) {
      return editVacancy(this);
    }
    return orElse();
  }
}

abstract class _EditVacancyCompanyEvent implements VacancyCompanyEvent {
  const factory _EditVacancyCompanyEvent(
      {String? city,
      String? body,
      String? grade,
      String? minsalary,
      String? maxsalary,
      String? type,
      String? stage,
      String? schedule,
      String? abilities,
      required int categoryId,
      required int sphereId,
      required int id}) = _$_EditVacancyCompanyEvent;

  String? get city => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get grade => throw _privateConstructorUsedError;
  String? get minsalary => throw _privateConstructorUsedError;
  String? get maxsalary => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get stage => throw _privateConstructorUsedError;
  String? get schedule => throw _privateConstructorUsedError;
  String? get abilities => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  int get sphereId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EditVacancyCompanyEventCopyWith<_EditVacancyCompanyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ActivateOrDeactivateVacancyCompanyEventCopyWith<$Res> {
  factory _$ActivateOrDeactivateVacancyCompanyEventCopyWith(
          _ActivateOrDeactivateVacancyCompanyEvent value,
          $Res Function(_ActivateOrDeactivateVacancyCompanyEvent) then) =
      __$ActivateOrDeactivateVacancyCompanyEventCopyWithImpl<$Res>;
  $Res call({int id, int active});
}

/// @nodoc
class __$ActivateOrDeactivateVacancyCompanyEventCopyWithImpl<$Res>
    extends _$VacancyCompanyEventCopyWithImpl<$Res>
    implements _$ActivateOrDeactivateVacancyCompanyEventCopyWith<$Res> {
  __$ActivateOrDeactivateVacancyCompanyEventCopyWithImpl(
      _ActivateOrDeactivateVacancyCompanyEvent _value,
      $Res Function(_ActivateOrDeactivateVacancyCompanyEvent) _then)
      : super(_value,
            (v) => _then(v as _ActivateOrDeactivateVacancyCompanyEvent));

  @override
  _ActivateOrDeactivateVacancyCompanyEvent get _value =>
      super._value as _ActivateOrDeactivateVacancyCompanyEvent;

  @override
  $Res call({
    Object? id = freezed,
    Object? active = freezed,
  }) {
    return _then(_ActivateOrDeactivateVacancyCompanyEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ActivateOrDeactivateVacancyCompanyEvent
    implements _ActivateOrDeactivateVacancyCompanyEvent {
  const _$_ActivateOrDeactivateVacancyCompanyEvent(
      {required this.id, required this.active});

  @override
  final int id;
  @override
  final int active;

  @override
  String toString() {
    return 'VacancyCompanyEvent.activateOrDeactivate(id: $id, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActivateOrDeactivateVacancyCompanyEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(active);

  @JsonKey(ignore: true)
  @override
  _$ActivateOrDeactivateVacancyCompanyEventCopyWith<
          _ActivateOrDeactivateVacancyCompanyEvent>
      get copyWith => __$ActivateOrDeactivateVacancyCompanyEventCopyWithImpl<
          _ActivateOrDeactivateVacancyCompanyEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getVacancy,
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
            int categoryId,
            int sphereId)
        postVacancy,
    required TResult Function(
            String? city,
            String? body,
            String? grade,
            String? minsalary,
            String? maxsalary,
            String? type,
            String? stage,
            String? schedule,
            String? abilities,
            int categoryId,
            int sphereId,
            int id)
        editVacancy,
    required TResult Function(int id, int active) activateOrDeactivate,
  }) {
    return activateOrDeactivate(id, active);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVacancy,
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
            int categoryId,
            int sphereId)?
        postVacancy,
    TResult Function(
            String? city,
            String? body,
            String? grade,
            String? minsalary,
            String? maxsalary,
            String? type,
            String? stage,
            String? schedule,
            String? abilities,
            int categoryId,
            int sphereId,
            int id)?
        editVacancy,
    TResult Function(int id, int active)? activateOrDeactivate,
    required TResult orElse(),
  }) {
    if (activateOrDeactivate != null) {
      return activateOrDeactivate(id, active);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVacancyCompanyEvent value) getVacancy,
    required TResult Function(_PostVacancyCompanyEvent value) postVacancy,
    required TResult Function(_EditVacancyCompanyEvent value) editVacancy,
    required TResult Function(_ActivateOrDeactivateVacancyCompanyEvent value)
        activateOrDeactivate,
  }) {
    return activateOrDeactivate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVacancyCompanyEvent value)? getVacancy,
    TResult Function(_PostVacancyCompanyEvent value)? postVacancy,
    TResult Function(_EditVacancyCompanyEvent value)? editVacancy,
    TResult Function(_ActivateOrDeactivateVacancyCompanyEvent value)?
        activateOrDeactivate,
    required TResult orElse(),
  }) {
    if (activateOrDeactivate != null) {
      return activateOrDeactivate(this);
    }
    return orElse();
  }
}

abstract class _ActivateOrDeactivateVacancyCompanyEvent
    implements VacancyCompanyEvent {
  const factory _ActivateOrDeactivateVacancyCompanyEvent(
      {required int id,
      required int active}) = _$_ActivateOrDeactivateVacancyCompanyEvent;

  int get id => throw _privateConstructorUsedError;
  int get active => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ActivateOrDeactivateVacancyCompanyEventCopyWith<
          _ActivateOrDeactivateVacancyCompanyEvent>
      get copyWith => throw _privateConstructorUsedError;
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

  LoadedVacancyCompanyState loaded(
      {required Vacancy vacancy, required String status}) {
    return LoadedVacancyCompanyState(
      vacancy: vacancy,
      status: status,
    );
  }

  NoVacancyCompanyState noVacancy({required String status}) {
    return NoVacancyCompanyState(
      status: status,
    );
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
    required TResult Function(Vacancy vacancy, String status) loaded,
    required TResult Function(String status) noVacancy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Vacancy vacancy, String status)? loaded,
    TResult Function(String status)? noVacancy,
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
    required TResult Function(Vacancy vacancy, String status) loaded,
    required TResult Function(String status) noVacancy,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Vacancy vacancy, String status)? loaded,
    TResult Function(String status)? noVacancy,
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
    required TResult Function(Vacancy vacancy, String status) loaded,
    required TResult Function(String status) noVacancy,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Vacancy vacancy, String status)? loaded,
    TResult Function(String status)? noVacancy,
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
  $Res call({Vacancy vacancy, String status});
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
    Object? status = freezed,
  }) {
    return _then(LoadedVacancyCompanyState(
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

class _$LoadedVacancyCompanyState implements LoadedVacancyCompanyState {
  const _$LoadedVacancyCompanyState(
      {required this.vacancy, required this.status});

  @override
  final Vacancy vacancy;
  @override
  final String status;

  @override
  String toString() {
    return 'VacancyCompanyState.loaded(vacancy: $vacancy, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedVacancyCompanyState &&
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
  $LoadedVacancyCompanyStateCopyWith<LoadedVacancyCompanyState> get copyWith =>
      _$LoadedVacancyCompanyStateCopyWithImpl<LoadedVacancyCompanyState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Vacancy vacancy, String status) loaded,
    required TResult Function(String status) noVacancy,
  }) {
    return loaded(vacancy, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Vacancy vacancy, String status)? loaded,
    TResult Function(String status)? noVacancy,
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
  const factory LoadedVacancyCompanyState(
      {required Vacancy vacancy,
      required String status}) = _$LoadedVacancyCompanyState;

  Vacancy get vacancy => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedVacancyCompanyStateCopyWith<LoadedVacancyCompanyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoVacancyCompanyStateCopyWith<$Res> {
  factory $NoVacancyCompanyStateCopyWith(NoVacancyCompanyState value,
          $Res Function(NoVacancyCompanyState) then) =
      _$NoVacancyCompanyStateCopyWithImpl<$Res>;
  $Res call({String status});
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

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(NoVacancyCompanyState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoVacancyCompanyState implements NoVacancyCompanyState {
  const _$NoVacancyCompanyState({required this.status});

  @override
  final String status;

  @override
  String toString() {
    return 'VacancyCompanyState.noVacancy(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NoVacancyCompanyState &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $NoVacancyCompanyStateCopyWith<NoVacancyCompanyState> get copyWith =>
      _$NoVacancyCompanyStateCopyWithImpl<NoVacancyCompanyState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Vacancy vacancy, String status) loaded,
    required TResult Function(String status) noVacancy,
  }) {
    return noVacancy(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Vacancy vacancy, String status)? loaded,
    TResult Function(String status)? noVacancy,
    required TResult orElse(),
  }) {
    if (noVacancy != null) {
      return noVacancy(status);
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
  const factory NoVacancyCompanyState({required String status}) =
      _$NoVacancyCompanyState;

  String get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoVacancyCompanyStateCopyWith<NoVacancyCompanyState> get copyWith =>
      throw _privateConstructorUsedError;
}
