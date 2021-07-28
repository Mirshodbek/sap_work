// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'resume_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResumeUserEventTearOff {
  const _$ResumeUserEventTearOff();

  _GetVResumeUserEvent getResume() {
    return const _GetVResumeUserEvent();
  }

  _EditResumeUserEvent editResume(
      {required String phone,
      required String email,
      String? body,
      String? abilities,
      String? city,
      required int sphere,
      required int category,
      required int id}) {
    return _EditResumeUserEvent(
      phone: phone,
      email: email,
      body: body,
      abilities: abilities,
      city: city,
      sphere: sphere,
      category: category,
      id: id,
    );
  }

  _PostResumeUserEvent postResume(
      {required String body,
      required String abilities,
      required String name,
      required String phone,
      required String city,
      required String email,
      required int category,
      required int sphere,
      required List<Map<String, dynamic>> stages,
      required List<Map<String, dynamic>> grades}) {
    return _PostResumeUserEvent(
      body: body,
      abilities: abilities,
      name: name,
      phone: phone,
      city: city,
      email: email,
      category: category,
      sphere: sphere,
      stages: stages,
      grades: grades,
    );
  }

  _ActivateOrDeactivateResumeUserEvent activateOrDeactivate(
      {required int id, required int active}) {
    return _ActivateOrDeactivateResumeUserEvent(
      id: id,
      active: active,
    );
  }

  _AddFileResumeUserEvent addFile({required String path, required int id}) {
    return _AddFileResumeUserEvent(
      path: path,
      id: id,
    );
  }

  _ChangeExtraBlocksResumeUserEvent changeExtraBlocks(
      {int? stageId,
      int? gradeId,
      required Map<String, dynamic> toMap,
      required String typeBlock,
      required int resumeId}) {
    return _ChangeExtraBlocksResumeUserEvent(
      stageId: stageId,
      gradeId: gradeId,
      toMap: toMap,
      typeBlock: typeBlock,
      resumeId: resumeId,
    );
  }

  _AddExtraBlocksResumeUserEvent addExtraBlocks(
      {required int id,
      required String typeBlock,
      required List<Map<String, dynamic>> toMaps}) {
    return _AddExtraBlocksResumeUserEvent(
      id: id,
      typeBlock: typeBlock,
      toMaps: toMaps,
    );
  }

  _DeleteExtraBlocksResumeUserEvent deleteExtraBlocks(
      {required int resumeId,
      required String typeBlock,
      int? stageId,
      int? gradeId}) {
    return _DeleteExtraBlocksResumeUserEvent(
      resumeId: resumeId,
      typeBlock: typeBlock,
      stageId: stageId,
      gradeId: gradeId,
    );
  }
}

/// @nodoc
const $ResumeUserEvent = _$ResumeUserEventTearOff();

/// @nodoc
mixin _$ResumeUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getResume,
    required TResult Function(String phone, String email, String? body,
            String? abilities, String? city, int sphere, int category, int id)
        editResume,
    required TResult Function(
            String body,
            String abilities,
            String name,
            String phone,
            String city,
            String email,
            int category,
            int sphere,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)
        postResume,
    required TResult Function(int id, int active) activateOrDeactivate,
    required TResult Function(String path, int id) addFile,
    required TResult Function(int? stageId, int? gradeId,
            Map<String, dynamic> toMap, String typeBlock, int resumeId)
        changeExtraBlocks,
    required TResult Function(
            int id, String typeBlock, List<Map<String, dynamic>> toMaps)
        addExtraBlocks,
    required TResult Function(
            int resumeId, String typeBlock, int? stageId, int? gradeId)
        deleteExtraBlocks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getResume,
    TResult Function(String phone, String email, String? body,
            String? abilities, String? city, int sphere, int category, int id)?
        editResume,
    TResult Function(
            String body,
            String abilities,
            String name,
            String phone,
            String city,
            String email,
            int category,
            int sphere,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)?
        postResume,
    TResult Function(int id, int active)? activateOrDeactivate,
    TResult Function(String path, int id)? addFile,
    TResult Function(int? stageId, int? gradeId, Map<String, dynamic> toMap,
            String typeBlock, int resumeId)?
        changeExtraBlocks,
    TResult Function(
            int id, String typeBlock, List<Map<String, dynamic>> toMaps)?
        addExtraBlocks,
    TResult Function(
            int resumeId, String typeBlock, int? stageId, int? gradeId)?
        deleteExtraBlocks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVResumeUserEvent value) getResume,
    required TResult Function(_EditResumeUserEvent value) editResume,
    required TResult Function(_PostResumeUserEvent value) postResume,
    required TResult Function(_ActivateOrDeactivateResumeUserEvent value)
        activateOrDeactivate,
    required TResult Function(_AddFileResumeUserEvent value) addFile,
    required TResult Function(_ChangeExtraBlocksResumeUserEvent value)
        changeExtraBlocks,
    required TResult Function(_AddExtraBlocksResumeUserEvent value)
        addExtraBlocks,
    required TResult Function(_DeleteExtraBlocksResumeUserEvent value)
        deleteExtraBlocks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVResumeUserEvent value)? getResume,
    TResult Function(_EditResumeUserEvent value)? editResume,
    TResult Function(_PostResumeUserEvent value)? postResume,
    TResult Function(_ActivateOrDeactivateResumeUserEvent value)?
        activateOrDeactivate,
    TResult Function(_AddFileResumeUserEvent value)? addFile,
    TResult Function(_ChangeExtraBlocksResumeUserEvent value)?
        changeExtraBlocks,
    TResult Function(_AddExtraBlocksResumeUserEvent value)? addExtraBlocks,
    TResult Function(_DeleteExtraBlocksResumeUserEvent value)?
        deleteExtraBlocks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeUserEventCopyWith<$Res> {
  factory $ResumeUserEventCopyWith(
          ResumeUserEvent value, $Res Function(ResumeUserEvent) then) =
      _$ResumeUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResumeUserEventCopyWithImpl<$Res>
    implements $ResumeUserEventCopyWith<$Res> {
  _$ResumeUserEventCopyWithImpl(this._value, this._then);

  final ResumeUserEvent _value;
  // ignore: unused_field
  final $Res Function(ResumeUserEvent) _then;
}

/// @nodoc
abstract class _$GetVResumeUserEventCopyWith<$Res> {
  factory _$GetVResumeUserEventCopyWith(_GetVResumeUserEvent value,
          $Res Function(_GetVResumeUserEvent) then) =
      __$GetVResumeUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetVResumeUserEventCopyWithImpl<$Res>
    extends _$ResumeUserEventCopyWithImpl<$Res>
    implements _$GetVResumeUserEventCopyWith<$Res> {
  __$GetVResumeUserEventCopyWithImpl(
      _GetVResumeUserEvent _value, $Res Function(_GetVResumeUserEvent) _then)
      : super(_value, (v) => _then(v as _GetVResumeUserEvent));

  @override
  _GetVResumeUserEvent get _value => super._value as _GetVResumeUserEvent;
}

/// @nodoc

class _$_GetVResumeUserEvent implements _GetVResumeUserEvent {
  const _$_GetVResumeUserEvent();

  @override
  String toString() {
    return 'ResumeUserEvent.getResume()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetVResumeUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getResume,
    required TResult Function(String phone, String email, String? body,
            String? abilities, String? city, int sphere, int category, int id)
        editResume,
    required TResult Function(
            String body,
            String abilities,
            String name,
            String phone,
            String city,
            String email,
            int category,
            int sphere,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)
        postResume,
    required TResult Function(int id, int active) activateOrDeactivate,
    required TResult Function(String path, int id) addFile,
    required TResult Function(int? stageId, int? gradeId,
            Map<String, dynamic> toMap, String typeBlock, int resumeId)
        changeExtraBlocks,
    required TResult Function(
            int id, String typeBlock, List<Map<String, dynamic>> toMaps)
        addExtraBlocks,
    required TResult Function(
            int resumeId, String typeBlock, int? stageId, int? gradeId)
        deleteExtraBlocks,
  }) {
    return getResume();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getResume,
    TResult Function(String phone, String email, String? body,
            String? abilities, String? city, int sphere, int category, int id)?
        editResume,
    TResult Function(
            String body,
            String abilities,
            String name,
            String phone,
            String city,
            String email,
            int category,
            int sphere,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)?
        postResume,
    TResult Function(int id, int active)? activateOrDeactivate,
    TResult Function(String path, int id)? addFile,
    TResult Function(int? stageId, int? gradeId, Map<String, dynamic> toMap,
            String typeBlock, int resumeId)?
        changeExtraBlocks,
    TResult Function(
            int id, String typeBlock, List<Map<String, dynamic>> toMaps)?
        addExtraBlocks,
    TResult Function(
            int resumeId, String typeBlock, int? stageId, int? gradeId)?
        deleteExtraBlocks,
    required TResult orElse(),
  }) {
    if (getResume != null) {
      return getResume();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVResumeUserEvent value) getResume,
    required TResult Function(_EditResumeUserEvent value) editResume,
    required TResult Function(_PostResumeUserEvent value) postResume,
    required TResult Function(_ActivateOrDeactivateResumeUserEvent value)
        activateOrDeactivate,
    required TResult Function(_AddFileResumeUserEvent value) addFile,
    required TResult Function(_ChangeExtraBlocksResumeUserEvent value)
        changeExtraBlocks,
    required TResult Function(_AddExtraBlocksResumeUserEvent value)
        addExtraBlocks,
    required TResult Function(_DeleteExtraBlocksResumeUserEvent value)
        deleteExtraBlocks,
  }) {
    return getResume(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVResumeUserEvent value)? getResume,
    TResult Function(_EditResumeUserEvent value)? editResume,
    TResult Function(_PostResumeUserEvent value)? postResume,
    TResult Function(_ActivateOrDeactivateResumeUserEvent value)?
        activateOrDeactivate,
    TResult Function(_AddFileResumeUserEvent value)? addFile,
    TResult Function(_ChangeExtraBlocksResumeUserEvent value)?
        changeExtraBlocks,
    TResult Function(_AddExtraBlocksResumeUserEvent value)? addExtraBlocks,
    TResult Function(_DeleteExtraBlocksResumeUserEvent value)?
        deleteExtraBlocks,
    required TResult orElse(),
  }) {
    if (getResume != null) {
      return getResume(this);
    }
    return orElse();
  }
}

abstract class _GetVResumeUserEvent implements ResumeUserEvent {
  const factory _GetVResumeUserEvent() = _$_GetVResumeUserEvent;
}

/// @nodoc
abstract class _$EditResumeUserEventCopyWith<$Res> {
  factory _$EditResumeUserEventCopyWith(_EditResumeUserEvent value,
          $Res Function(_EditResumeUserEvent) then) =
      __$EditResumeUserEventCopyWithImpl<$Res>;
  $Res call(
      {String phone,
      String email,
      String? body,
      String? abilities,
      String? city,
      int sphere,
      int category,
      int id});
}

/// @nodoc
class __$EditResumeUserEventCopyWithImpl<$Res>
    extends _$ResumeUserEventCopyWithImpl<$Res>
    implements _$EditResumeUserEventCopyWith<$Res> {
  __$EditResumeUserEventCopyWithImpl(
      _EditResumeUserEvent _value, $Res Function(_EditResumeUserEvent) _then)
      : super(_value, (v) => _then(v as _EditResumeUserEvent));

  @override
  _EditResumeUserEvent get _value => super._value as _EditResumeUserEvent;

  @override
  $Res call({
    Object? phone = freezed,
    Object? email = freezed,
    Object? body = freezed,
    Object? abilities = freezed,
    Object? city = freezed,
    Object? sphere = freezed,
    Object? category = freezed,
    Object? id = freezed,
  }) {
    return _then(_EditResumeUserEvent(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      abilities: abilities == freezed
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      sphere: sphere == freezed
          ? _value.sphere
          : sphere // ignore: cast_nullable_to_non_nullable
              as int,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EditResumeUserEvent implements _EditResumeUserEvent {
  const _$_EditResumeUserEvent(
      {required this.phone,
      required this.email,
      this.body,
      this.abilities,
      this.city,
      required this.sphere,
      required this.category,
      required this.id});

  @override
  final String phone;
  @override
  final String email;
  @override
  final String? body;
  @override
  final String? abilities;
  @override
  final String? city;
  @override
  final int sphere;
  @override
  final int category;
  @override
  final int id;

  @override
  String toString() {
    return 'ResumeUserEvent.editResume(phone: $phone, email: $email, body: $body, abilities: $abilities, city: $city, sphere: $sphere, category: $category, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditResumeUserEvent &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.abilities, abilities) ||
                const DeepCollectionEquality()
                    .equals(other.abilities, abilities)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.sphere, sphere) ||
                const DeepCollectionEquality().equals(other.sphere, sphere)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(abilities) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(sphere) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$EditResumeUserEventCopyWith<_EditResumeUserEvent> get copyWith =>
      __$EditResumeUserEventCopyWithImpl<_EditResumeUserEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getResume,
    required TResult Function(String phone, String email, String? body,
            String? abilities, String? city, int sphere, int category, int id)
        editResume,
    required TResult Function(
            String body,
            String abilities,
            String name,
            String phone,
            String city,
            String email,
            int category,
            int sphere,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)
        postResume,
    required TResult Function(int id, int active) activateOrDeactivate,
    required TResult Function(String path, int id) addFile,
    required TResult Function(int? stageId, int? gradeId,
            Map<String, dynamic> toMap, String typeBlock, int resumeId)
        changeExtraBlocks,
    required TResult Function(
            int id, String typeBlock, List<Map<String, dynamic>> toMaps)
        addExtraBlocks,
    required TResult Function(
            int resumeId, String typeBlock, int? stageId, int? gradeId)
        deleteExtraBlocks,
  }) {
    return editResume(
        phone, email, body, abilities, city, sphere, category, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getResume,
    TResult Function(String phone, String email, String? body,
            String? abilities, String? city, int sphere, int category, int id)?
        editResume,
    TResult Function(
            String body,
            String abilities,
            String name,
            String phone,
            String city,
            String email,
            int category,
            int sphere,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)?
        postResume,
    TResult Function(int id, int active)? activateOrDeactivate,
    TResult Function(String path, int id)? addFile,
    TResult Function(int? stageId, int? gradeId, Map<String, dynamic> toMap,
            String typeBlock, int resumeId)?
        changeExtraBlocks,
    TResult Function(
            int id, String typeBlock, List<Map<String, dynamic>> toMaps)?
        addExtraBlocks,
    TResult Function(
            int resumeId, String typeBlock, int? stageId, int? gradeId)?
        deleteExtraBlocks,
    required TResult orElse(),
  }) {
    if (editResume != null) {
      return editResume(
          phone, email, body, abilities, city, sphere, category, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVResumeUserEvent value) getResume,
    required TResult Function(_EditResumeUserEvent value) editResume,
    required TResult Function(_PostResumeUserEvent value) postResume,
    required TResult Function(_ActivateOrDeactivateResumeUserEvent value)
        activateOrDeactivate,
    required TResult Function(_AddFileResumeUserEvent value) addFile,
    required TResult Function(_ChangeExtraBlocksResumeUserEvent value)
        changeExtraBlocks,
    required TResult Function(_AddExtraBlocksResumeUserEvent value)
        addExtraBlocks,
    required TResult Function(_DeleteExtraBlocksResumeUserEvent value)
        deleteExtraBlocks,
  }) {
    return editResume(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVResumeUserEvent value)? getResume,
    TResult Function(_EditResumeUserEvent value)? editResume,
    TResult Function(_PostResumeUserEvent value)? postResume,
    TResult Function(_ActivateOrDeactivateResumeUserEvent value)?
        activateOrDeactivate,
    TResult Function(_AddFileResumeUserEvent value)? addFile,
    TResult Function(_ChangeExtraBlocksResumeUserEvent value)?
        changeExtraBlocks,
    TResult Function(_AddExtraBlocksResumeUserEvent value)? addExtraBlocks,
    TResult Function(_DeleteExtraBlocksResumeUserEvent value)?
        deleteExtraBlocks,
    required TResult orElse(),
  }) {
    if (editResume != null) {
      return editResume(this);
    }
    return orElse();
  }
}

abstract class _EditResumeUserEvent implements ResumeUserEvent {
  const factory _EditResumeUserEvent(
      {required String phone,
      required String email,
      String? body,
      String? abilities,
      String? city,
      required int sphere,
      required int category,
      required int id}) = _$_EditResumeUserEvent;

  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get abilities => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  int get sphere => throw _privateConstructorUsedError;
  int get category => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EditResumeUserEventCopyWith<_EditResumeUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PostResumeUserEventCopyWith<$Res> {
  factory _$PostResumeUserEventCopyWith(_PostResumeUserEvent value,
          $Res Function(_PostResumeUserEvent) then) =
      __$PostResumeUserEventCopyWithImpl<$Res>;
  $Res call(
      {String body,
      String abilities,
      String name,
      String phone,
      String city,
      String email,
      int category,
      int sphere,
      List<Map<String, dynamic>> stages,
      List<Map<String, dynamic>> grades});
}

/// @nodoc
class __$PostResumeUserEventCopyWithImpl<$Res>
    extends _$ResumeUserEventCopyWithImpl<$Res>
    implements _$PostResumeUserEventCopyWith<$Res> {
  __$PostResumeUserEventCopyWithImpl(
      _PostResumeUserEvent _value, $Res Function(_PostResumeUserEvent) _then)
      : super(_value, (v) => _then(v as _PostResumeUserEvent));

  @override
  _PostResumeUserEvent get _value => super._value as _PostResumeUserEvent;

  @override
  $Res call({
    Object? body = freezed,
    Object? abilities = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? city = freezed,
    Object? email = freezed,
    Object? category = freezed,
    Object? sphere = freezed,
    Object? stages = freezed,
    Object? grades = freezed,
  }) {
    return _then(_PostResumeUserEvent(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      abilities: abilities == freezed
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      sphere: sphere == freezed
          ? _value.sphere
          : sphere // ignore: cast_nullable_to_non_nullable
              as int,
      stages: stages == freezed
          ? _value.stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      grades: grades == freezed
          ? _value.grades
          : grades // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_PostResumeUserEvent implements _PostResumeUserEvent {
  const _$_PostResumeUserEvent(
      {required this.body,
      required this.abilities,
      required this.name,
      required this.phone,
      required this.city,
      required this.email,
      required this.category,
      required this.sphere,
      required this.stages,
      required this.grades});

  @override
  final String body;
  @override
  final String abilities;
  @override
  final String name;
  @override
  final String phone;
  @override
  final String city;
  @override
  final String email;
  @override
  final int category;
  @override
  final int sphere;
  @override
  final List<Map<String, dynamic>> stages;
  @override
  final List<Map<String, dynamic>> grades;

  @override
  String toString() {
    return 'ResumeUserEvent.postResume(body: $body, abilities: $abilities, name: $name, phone: $phone, city: $city, email: $email, category: $category, sphere: $sphere, stages: $stages, grades: $grades)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostResumeUserEvent &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.abilities, abilities) ||
                const DeepCollectionEquality()
                    .equals(other.abilities, abilities)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.sphere, sphere) ||
                const DeepCollectionEquality().equals(other.sphere, sphere)) &&
            (identical(other.stages, stages) ||
                const DeepCollectionEquality().equals(other.stages, stages)) &&
            (identical(other.grades, grades) ||
                const DeepCollectionEquality().equals(other.grades, grades)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(abilities) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(sphere) ^
      const DeepCollectionEquality().hash(stages) ^
      const DeepCollectionEquality().hash(grades);

  @JsonKey(ignore: true)
  @override
  _$PostResumeUserEventCopyWith<_PostResumeUserEvent> get copyWith =>
      __$PostResumeUserEventCopyWithImpl<_PostResumeUserEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getResume,
    required TResult Function(String phone, String email, String? body,
            String? abilities, String? city, int sphere, int category, int id)
        editResume,
    required TResult Function(
            String body,
            String abilities,
            String name,
            String phone,
            String city,
            String email,
            int category,
            int sphere,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)
        postResume,
    required TResult Function(int id, int active) activateOrDeactivate,
    required TResult Function(String path, int id) addFile,
    required TResult Function(int? stageId, int? gradeId,
            Map<String, dynamic> toMap, String typeBlock, int resumeId)
        changeExtraBlocks,
    required TResult Function(
            int id, String typeBlock, List<Map<String, dynamic>> toMaps)
        addExtraBlocks,
    required TResult Function(
            int resumeId, String typeBlock, int? stageId, int? gradeId)
        deleteExtraBlocks,
  }) {
    return postResume(body, abilities, name, phone, city, email, category,
        sphere, stages, grades);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getResume,
    TResult Function(String phone, String email, String? body,
            String? abilities, String? city, int sphere, int category, int id)?
        editResume,
    TResult Function(
            String body,
            String abilities,
            String name,
            String phone,
            String city,
            String email,
            int category,
            int sphere,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)?
        postResume,
    TResult Function(int id, int active)? activateOrDeactivate,
    TResult Function(String path, int id)? addFile,
    TResult Function(int? stageId, int? gradeId, Map<String, dynamic> toMap,
            String typeBlock, int resumeId)?
        changeExtraBlocks,
    TResult Function(
            int id, String typeBlock, List<Map<String, dynamic>> toMaps)?
        addExtraBlocks,
    TResult Function(
            int resumeId, String typeBlock, int? stageId, int? gradeId)?
        deleteExtraBlocks,
    required TResult orElse(),
  }) {
    if (postResume != null) {
      return postResume(body, abilities, name, phone, city, email, category,
          sphere, stages, grades);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVResumeUserEvent value) getResume,
    required TResult Function(_EditResumeUserEvent value) editResume,
    required TResult Function(_PostResumeUserEvent value) postResume,
    required TResult Function(_ActivateOrDeactivateResumeUserEvent value)
        activateOrDeactivate,
    required TResult Function(_AddFileResumeUserEvent value) addFile,
    required TResult Function(_ChangeExtraBlocksResumeUserEvent value)
        changeExtraBlocks,
    required TResult Function(_AddExtraBlocksResumeUserEvent value)
        addExtraBlocks,
    required TResult Function(_DeleteExtraBlocksResumeUserEvent value)
        deleteExtraBlocks,
  }) {
    return postResume(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVResumeUserEvent value)? getResume,
    TResult Function(_EditResumeUserEvent value)? editResume,
    TResult Function(_PostResumeUserEvent value)? postResume,
    TResult Function(_ActivateOrDeactivateResumeUserEvent value)?
        activateOrDeactivate,
    TResult Function(_AddFileResumeUserEvent value)? addFile,
    TResult Function(_ChangeExtraBlocksResumeUserEvent value)?
        changeExtraBlocks,
    TResult Function(_AddExtraBlocksResumeUserEvent value)? addExtraBlocks,
    TResult Function(_DeleteExtraBlocksResumeUserEvent value)?
        deleteExtraBlocks,
    required TResult orElse(),
  }) {
    if (postResume != null) {
      return postResume(this);
    }
    return orElse();
  }
}

abstract class _PostResumeUserEvent implements ResumeUserEvent {
  const factory _PostResumeUserEvent(
      {required String body,
      required String abilities,
      required String name,
      required String phone,
      required String city,
      required String email,
      required int category,
      required int sphere,
      required List<Map<String, dynamic>> stages,
      required List<Map<String, dynamic>> grades}) = _$_PostResumeUserEvent;

  String get body => throw _privateConstructorUsedError;
  String get abilities => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int get category => throw _privateConstructorUsedError;
  int get sphere => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get stages => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get grades => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PostResumeUserEventCopyWith<_PostResumeUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ActivateOrDeactivateResumeUserEventCopyWith<$Res> {
  factory _$ActivateOrDeactivateResumeUserEventCopyWith(
          _ActivateOrDeactivateResumeUserEvent value,
          $Res Function(_ActivateOrDeactivateResumeUserEvent) then) =
      __$ActivateOrDeactivateResumeUserEventCopyWithImpl<$Res>;
  $Res call({int id, int active});
}

/// @nodoc
class __$ActivateOrDeactivateResumeUserEventCopyWithImpl<$Res>
    extends _$ResumeUserEventCopyWithImpl<$Res>
    implements _$ActivateOrDeactivateResumeUserEventCopyWith<$Res> {
  __$ActivateOrDeactivateResumeUserEventCopyWithImpl(
      _ActivateOrDeactivateResumeUserEvent _value,
      $Res Function(_ActivateOrDeactivateResumeUserEvent) _then)
      : super(_value, (v) => _then(v as _ActivateOrDeactivateResumeUserEvent));

  @override
  _ActivateOrDeactivateResumeUserEvent get _value =>
      super._value as _ActivateOrDeactivateResumeUserEvent;

  @override
  $Res call({
    Object? id = freezed,
    Object? active = freezed,
  }) {
    return _then(_ActivateOrDeactivateResumeUserEvent(
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

class _$_ActivateOrDeactivateResumeUserEvent
    implements _ActivateOrDeactivateResumeUserEvent {
  const _$_ActivateOrDeactivateResumeUserEvent(
      {required this.id, required this.active});

  @override
  final int id;
  @override
  final int active;

  @override
  String toString() {
    return 'ResumeUserEvent.activateOrDeactivate(id: $id, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActivateOrDeactivateResumeUserEvent &&
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
  _$ActivateOrDeactivateResumeUserEventCopyWith<
          _ActivateOrDeactivateResumeUserEvent>
      get copyWith => __$ActivateOrDeactivateResumeUserEventCopyWithImpl<
          _ActivateOrDeactivateResumeUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getResume,
    required TResult Function(String phone, String email, String? body,
            String? abilities, String? city, int sphere, int category, int id)
        editResume,
    required TResult Function(
            String body,
            String abilities,
            String name,
            String phone,
            String city,
            String email,
            int category,
            int sphere,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)
        postResume,
    required TResult Function(int id, int active) activateOrDeactivate,
    required TResult Function(String path, int id) addFile,
    required TResult Function(int? stageId, int? gradeId,
            Map<String, dynamic> toMap, String typeBlock, int resumeId)
        changeExtraBlocks,
    required TResult Function(
            int id, String typeBlock, List<Map<String, dynamic>> toMaps)
        addExtraBlocks,
    required TResult Function(
            int resumeId, String typeBlock, int? stageId, int? gradeId)
        deleteExtraBlocks,
  }) {
    return activateOrDeactivate(id, active);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getResume,
    TResult Function(String phone, String email, String? body,
            String? abilities, String? city, int sphere, int category, int id)?
        editResume,
    TResult Function(
            String body,
            String abilities,
            String name,
            String phone,
            String city,
            String email,
            int category,
            int sphere,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)?
        postResume,
    TResult Function(int id, int active)? activateOrDeactivate,
    TResult Function(String path, int id)? addFile,
    TResult Function(int? stageId, int? gradeId, Map<String, dynamic> toMap,
            String typeBlock, int resumeId)?
        changeExtraBlocks,
    TResult Function(
            int id, String typeBlock, List<Map<String, dynamic>> toMaps)?
        addExtraBlocks,
    TResult Function(
            int resumeId, String typeBlock, int? stageId, int? gradeId)?
        deleteExtraBlocks,
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
    required TResult Function(_GetVResumeUserEvent value) getResume,
    required TResult Function(_EditResumeUserEvent value) editResume,
    required TResult Function(_PostResumeUserEvent value) postResume,
    required TResult Function(_ActivateOrDeactivateResumeUserEvent value)
        activateOrDeactivate,
    required TResult Function(_AddFileResumeUserEvent value) addFile,
    required TResult Function(_ChangeExtraBlocksResumeUserEvent value)
        changeExtraBlocks,
    required TResult Function(_AddExtraBlocksResumeUserEvent value)
        addExtraBlocks,
    required TResult Function(_DeleteExtraBlocksResumeUserEvent value)
        deleteExtraBlocks,
  }) {
    return activateOrDeactivate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVResumeUserEvent value)? getResume,
    TResult Function(_EditResumeUserEvent value)? editResume,
    TResult Function(_PostResumeUserEvent value)? postResume,
    TResult Function(_ActivateOrDeactivateResumeUserEvent value)?
        activateOrDeactivate,
    TResult Function(_AddFileResumeUserEvent value)? addFile,
    TResult Function(_ChangeExtraBlocksResumeUserEvent value)?
        changeExtraBlocks,
    TResult Function(_AddExtraBlocksResumeUserEvent value)? addExtraBlocks,
    TResult Function(_DeleteExtraBlocksResumeUserEvent value)?
        deleteExtraBlocks,
    required TResult orElse(),
  }) {
    if (activateOrDeactivate != null) {
      return activateOrDeactivate(this);
    }
    return orElse();
  }
}

abstract class _ActivateOrDeactivateResumeUserEvent implements ResumeUserEvent {
  const factory _ActivateOrDeactivateResumeUserEvent(
      {required int id,
      required int active}) = _$_ActivateOrDeactivateResumeUserEvent;

  int get id => throw _privateConstructorUsedError;
  int get active => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ActivateOrDeactivateResumeUserEventCopyWith<
          _ActivateOrDeactivateResumeUserEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddFileResumeUserEventCopyWith<$Res> {
  factory _$AddFileResumeUserEventCopyWith(_AddFileResumeUserEvent value,
          $Res Function(_AddFileResumeUserEvent) then) =
      __$AddFileResumeUserEventCopyWithImpl<$Res>;
  $Res call({String path, int id});
}

/// @nodoc
class __$AddFileResumeUserEventCopyWithImpl<$Res>
    extends _$ResumeUserEventCopyWithImpl<$Res>
    implements _$AddFileResumeUserEventCopyWith<$Res> {
  __$AddFileResumeUserEventCopyWithImpl(_AddFileResumeUserEvent _value,
      $Res Function(_AddFileResumeUserEvent) _then)
      : super(_value, (v) => _then(v as _AddFileResumeUserEvent));

  @override
  _AddFileResumeUserEvent get _value => super._value as _AddFileResumeUserEvent;

  @override
  $Res call({
    Object? path = freezed,
    Object? id = freezed,
  }) {
    return _then(_AddFileResumeUserEvent(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AddFileResumeUserEvent implements _AddFileResumeUserEvent {
  const _$_AddFileResumeUserEvent({required this.path, required this.id});

  @override
  final String path;
  @override
  final int id;

  @override
  String toString() {
    return 'ResumeUserEvent.addFile(path: $path, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddFileResumeUserEvent &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$AddFileResumeUserEventCopyWith<_AddFileResumeUserEvent> get copyWith =>
      __$AddFileResumeUserEventCopyWithImpl<_AddFileResumeUserEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getResume,
    required TResult Function(String phone, String email, String? body,
            String? abilities, String? city, int sphere, int category, int id)
        editResume,
    required TResult Function(
            String body,
            String abilities,
            String name,
            String phone,
            String city,
            String email,
            int category,
            int sphere,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)
        postResume,
    required TResult Function(int id, int active) activateOrDeactivate,
    required TResult Function(String path, int id) addFile,
    required TResult Function(int? stageId, int? gradeId,
            Map<String, dynamic> toMap, String typeBlock, int resumeId)
        changeExtraBlocks,
    required TResult Function(
            int id, String typeBlock, List<Map<String, dynamic>> toMaps)
        addExtraBlocks,
    required TResult Function(
            int resumeId, String typeBlock, int? stageId, int? gradeId)
        deleteExtraBlocks,
  }) {
    return addFile(path, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getResume,
    TResult Function(String phone, String email, String? body,
            String? abilities, String? city, int sphere, int category, int id)?
        editResume,
    TResult Function(
            String body,
            String abilities,
            String name,
            String phone,
            String city,
            String email,
            int category,
            int sphere,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)?
        postResume,
    TResult Function(int id, int active)? activateOrDeactivate,
    TResult Function(String path, int id)? addFile,
    TResult Function(int? stageId, int? gradeId, Map<String, dynamic> toMap,
            String typeBlock, int resumeId)?
        changeExtraBlocks,
    TResult Function(
            int id, String typeBlock, List<Map<String, dynamic>> toMaps)?
        addExtraBlocks,
    TResult Function(
            int resumeId, String typeBlock, int? stageId, int? gradeId)?
        deleteExtraBlocks,
    required TResult orElse(),
  }) {
    if (addFile != null) {
      return addFile(path, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVResumeUserEvent value) getResume,
    required TResult Function(_EditResumeUserEvent value) editResume,
    required TResult Function(_PostResumeUserEvent value) postResume,
    required TResult Function(_ActivateOrDeactivateResumeUserEvent value)
        activateOrDeactivate,
    required TResult Function(_AddFileResumeUserEvent value) addFile,
    required TResult Function(_ChangeExtraBlocksResumeUserEvent value)
        changeExtraBlocks,
    required TResult Function(_AddExtraBlocksResumeUserEvent value)
        addExtraBlocks,
    required TResult Function(_DeleteExtraBlocksResumeUserEvent value)
        deleteExtraBlocks,
  }) {
    return addFile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVResumeUserEvent value)? getResume,
    TResult Function(_EditResumeUserEvent value)? editResume,
    TResult Function(_PostResumeUserEvent value)? postResume,
    TResult Function(_ActivateOrDeactivateResumeUserEvent value)?
        activateOrDeactivate,
    TResult Function(_AddFileResumeUserEvent value)? addFile,
    TResult Function(_ChangeExtraBlocksResumeUserEvent value)?
        changeExtraBlocks,
    TResult Function(_AddExtraBlocksResumeUserEvent value)? addExtraBlocks,
    TResult Function(_DeleteExtraBlocksResumeUserEvent value)?
        deleteExtraBlocks,
    required TResult orElse(),
  }) {
    if (addFile != null) {
      return addFile(this);
    }
    return orElse();
  }
}

abstract class _AddFileResumeUserEvent implements ResumeUserEvent {
  const factory _AddFileResumeUserEvent(
      {required String path, required int id}) = _$_AddFileResumeUserEvent;

  String get path => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddFileResumeUserEventCopyWith<_AddFileResumeUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeExtraBlocksResumeUserEventCopyWith<$Res> {
  factory _$ChangeExtraBlocksResumeUserEventCopyWith(
          _ChangeExtraBlocksResumeUserEvent value,
          $Res Function(_ChangeExtraBlocksResumeUserEvent) then) =
      __$ChangeExtraBlocksResumeUserEventCopyWithImpl<$Res>;
  $Res call(
      {int? stageId,
      int? gradeId,
      Map<String, dynamic> toMap,
      String typeBlock,
      int resumeId});
}

/// @nodoc
class __$ChangeExtraBlocksResumeUserEventCopyWithImpl<$Res>
    extends _$ResumeUserEventCopyWithImpl<$Res>
    implements _$ChangeExtraBlocksResumeUserEventCopyWith<$Res> {
  __$ChangeExtraBlocksResumeUserEventCopyWithImpl(
      _ChangeExtraBlocksResumeUserEvent _value,
      $Res Function(_ChangeExtraBlocksResumeUserEvent) _then)
      : super(_value, (v) => _then(v as _ChangeExtraBlocksResumeUserEvent));

  @override
  _ChangeExtraBlocksResumeUserEvent get _value =>
      super._value as _ChangeExtraBlocksResumeUserEvent;

  @override
  $Res call({
    Object? stageId = freezed,
    Object? gradeId = freezed,
    Object? toMap = freezed,
    Object? typeBlock = freezed,
    Object? resumeId = freezed,
  }) {
    return _then(_ChangeExtraBlocksResumeUserEvent(
      stageId: stageId == freezed
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int?,
      gradeId: gradeId == freezed
          ? _value.gradeId
          : gradeId // ignore: cast_nullable_to_non_nullable
              as int?,
      toMap: toMap == freezed
          ? _value.toMap
          : toMap // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      typeBlock: typeBlock == freezed
          ? _value.typeBlock
          : typeBlock // ignore: cast_nullable_to_non_nullable
              as String,
      resumeId: resumeId == freezed
          ? _value.resumeId
          : resumeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeExtraBlocksResumeUserEvent
    implements _ChangeExtraBlocksResumeUserEvent {
  const _$_ChangeExtraBlocksResumeUserEvent(
      {this.stageId,
      this.gradeId,
      required this.toMap,
      required this.typeBlock,
      required this.resumeId});

  @override
  final int? stageId;
  @override
  final int? gradeId;
  @override
  final Map<String, dynamic> toMap;
  @override
  final String typeBlock;
  @override
  final int resumeId;

  @override
  String toString() {
    return 'ResumeUserEvent.changeExtraBlocks(stageId: $stageId, gradeId: $gradeId, toMap: $toMap, typeBlock: $typeBlock, resumeId: $resumeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeExtraBlocksResumeUserEvent &&
            (identical(other.stageId, stageId) ||
                const DeepCollectionEquality()
                    .equals(other.stageId, stageId)) &&
            (identical(other.gradeId, gradeId) ||
                const DeepCollectionEquality()
                    .equals(other.gradeId, gradeId)) &&
            (identical(other.toMap, toMap) ||
                const DeepCollectionEquality().equals(other.toMap, toMap)) &&
            (identical(other.typeBlock, typeBlock) ||
                const DeepCollectionEquality()
                    .equals(other.typeBlock, typeBlock)) &&
            (identical(other.resumeId, resumeId) ||
                const DeepCollectionEquality()
                    .equals(other.resumeId, resumeId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(stageId) ^
      const DeepCollectionEquality().hash(gradeId) ^
      const DeepCollectionEquality().hash(toMap) ^
      const DeepCollectionEquality().hash(typeBlock) ^
      const DeepCollectionEquality().hash(resumeId);

  @JsonKey(ignore: true)
  @override
  _$ChangeExtraBlocksResumeUserEventCopyWith<_ChangeExtraBlocksResumeUserEvent>
      get copyWith => __$ChangeExtraBlocksResumeUserEventCopyWithImpl<
          _ChangeExtraBlocksResumeUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getResume,
    required TResult Function(String phone, String email, String? body,
            String? abilities, String? city, int sphere, int category, int id)
        editResume,
    required TResult Function(
            String body,
            String abilities,
            String name,
            String phone,
            String city,
            String email,
            int category,
            int sphere,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)
        postResume,
    required TResult Function(int id, int active) activateOrDeactivate,
    required TResult Function(String path, int id) addFile,
    required TResult Function(int? stageId, int? gradeId,
            Map<String, dynamic> toMap, String typeBlock, int resumeId)
        changeExtraBlocks,
    required TResult Function(
            int id, String typeBlock, List<Map<String, dynamic>> toMaps)
        addExtraBlocks,
    required TResult Function(
            int resumeId, String typeBlock, int? stageId, int? gradeId)
        deleteExtraBlocks,
  }) {
    return changeExtraBlocks(stageId, gradeId, toMap, typeBlock, resumeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getResume,
    TResult Function(String phone, String email, String? body,
            String? abilities, String? city, int sphere, int category, int id)?
        editResume,
    TResult Function(
            String body,
            String abilities,
            String name,
            String phone,
            String city,
            String email,
            int category,
            int sphere,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)?
        postResume,
    TResult Function(int id, int active)? activateOrDeactivate,
    TResult Function(String path, int id)? addFile,
    TResult Function(int? stageId, int? gradeId, Map<String, dynamic> toMap,
            String typeBlock, int resumeId)?
        changeExtraBlocks,
    TResult Function(
            int id, String typeBlock, List<Map<String, dynamic>> toMaps)?
        addExtraBlocks,
    TResult Function(
            int resumeId, String typeBlock, int? stageId, int? gradeId)?
        deleteExtraBlocks,
    required TResult orElse(),
  }) {
    if (changeExtraBlocks != null) {
      return changeExtraBlocks(stageId, gradeId, toMap, typeBlock, resumeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVResumeUserEvent value) getResume,
    required TResult Function(_EditResumeUserEvent value) editResume,
    required TResult Function(_PostResumeUserEvent value) postResume,
    required TResult Function(_ActivateOrDeactivateResumeUserEvent value)
        activateOrDeactivate,
    required TResult Function(_AddFileResumeUserEvent value) addFile,
    required TResult Function(_ChangeExtraBlocksResumeUserEvent value)
        changeExtraBlocks,
    required TResult Function(_AddExtraBlocksResumeUserEvent value)
        addExtraBlocks,
    required TResult Function(_DeleteExtraBlocksResumeUserEvent value)
        deleteExtraBlocks,
  }) {
    return changeExtraBlocks(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVResumeUserEvent value)? getResume,
    TResult Function(_EditResumeUserEvent value)? editResume,
    TResult Function(_PostResumeUserEvent value)? postResume,
    TResult Function(_ActivateOrDeactivateResumeUserEvent value)?
        activateOrDeactivate,
    TResult Function(_AddFileResumeUserEvent value)? addFile,
    TResult Function(_ChangeExtraBlocksResumeUserEvent value)?
        changeExtraBlocks,
    TResult Function(_AddExtraBlocksResumeUserEvent value)? addExtraBlocks,
    TResult Function(_DeleteExtraBlocksResumeUserEvent value)?
        deleteExtraBlocks,
    required TResult orElse(),
  }) {
    if (changeExtraBlocks != null) {
      return changeExtraBlocks(this);
    }
    return orElse();
  }
}

abstract class _ChangeExtraBlocksResumeUserEvent implements ResumeUserEvent {
  const factory _ChangeExtraBlocksResumeUserEvent(
      {int? stageId,
      int? gradeId,
      required Map<String, dynamic> toMap,
      required String typeBlock,
      required int resumeId}) = _$_ChangeExtraBlocksResumeUserEvent;

  int? get stageId => throw _privateConstructorUsedError;
  int? get gradeId => throw _privateConstructorUsedError;
  Map<String, dynamic> get toMap => throw _privateConstructorUsedError;
  String get typeBlock => throw _privateConstructorUsedError;
  int get resumeId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeExtraBlocksResumeUserEventCopyWith<_ChangeExtraBlocksResumeUserEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddExtraBlocksResumeUserEventCopyWith<$Res> {
  factory _$AddExtraBlocksResumeUserEventCopyWith(
          _AddExtraBlocksResumeUserEvent value,
          $Res Function(_AddExtraBlocksResumeUserEvent) then) =
      __$AddExtraBlocksResumeUserEventCopyWithImpl<$Res>;
  $Res call({int id, String typeBlock, List<Map<String, dynamic>> toMaps});
}

/// @nodoc
class __$AddExtraBlocksResumeUserEventCopyWithImpl<$Res>
    extends _$ResumeUserEventCopyWithImpl<$Res>
    implements _$AddExtraBlocksResumeUserEventCopyWith<$Res> {
  __$AddExtraBlocksResumeUserEventCopyWithImpl(
      _AddExtraBlocksResumeUserEvent _value,
      $Res Function(_AddExtraBlocksResumeUserEvent) _then)
      : super(_value, (v) => _then(v as _AddExtraBlocksResumeUserEvent));

  @override
  _AddExtraBlocksResumeUserEvent get _value =>
      super._value as _AddExtraBlocksResumeUserEvent;

  @override
  $Res call({
    Object? id = freezed,
    Object? typeBlock = freezed,
    Object? toMaps = freezed,
  }) {
    return _then(_AddExtraBlocksResumeUserEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      typeBlock: typeBlock == freezed
          ? _value.typeBlock
          : typeBlock // ignore: cast_nullable_to_non_nullable
              as String,
      toMaps: toMaps == freezed
          ? _value.toMaps
          : toMaps // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_AddExtraBlocksResumeUserEvent
    implements _AddExtraBlocksResumeUserEvent {
  const _$_AddExtraBlocksResumeUserEvent(
      {required this.id, required this.typeBlock, required this.toMaps});

  @override
  final int id;
  @override
  final String typeBlock;
  @override
  final List<Map<String, dynamic>> toMaps;

  @override
  String toString() {
    return 'ResumeUserEvent.addExtraBlocks(id: $id, typeBlock: $typeBlock, toMaps: $toMaps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddExtraBlocksResumeUserEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.typeBlock, typeBlock) ||
                const DeepCollectionEquality()
                    .equals(other.typeBlock, typeBlock)) &&
            (identical(other.toMaps, toMaps) ||
                const DeepCollectionEquality().equals(other.toMaps, toMaps)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(typeBlock) ^
      const DeepCollectionEquality().hash(toMaps);

  @JsonKey(ignore: true)
  @override
  _$AddExtraBlocksResumeUserEventCopyWith<_AddExtraBlocksResumeUserEvent>
      get copyWith => __$AddExtraBlocksResumeUserEventCopyWithImpl<
          _AddExtraBlocksResumeUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getResume,
    required TResult Function(String phone, String email, String? body,
            String? abilities, String? city, int sphere, int category, int id)
        editResume,
    required TResult Function(
            String body,
            String abilities,
            String name,
            String phone,
            String city,
            String email,
            int category,
            int sphere,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)
        postResume,
    required TResult Function(int id, int active) activateOrDeactivate,
    required TResult Function(String path, int id) addFile,
    required TResult Function(int? stageId, int? gradeId,
            Map<String, dynamic> toMap, String typeBlock, int resumeId)
        changeExtraBlocks,
    required TResult Function(
            int id, String typeBlock, List<Map<String, dynamic>> toMaps)
        addExtraBlocks,
    required TResult Function(
            int resumeId, String typeBlock, int? stageId, int? gradeId)
        deleteExtraBlocks,
  }) {
    return addExtraBlocks(id, typeBlock, toMaps);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getResume,
    TResult Function(String phone, String email, String? body,
            String? abilities, String? city, int sphere, int category, int id)?
        editResume,
    TResult Function(
            String body,
            String abilities,
            String name,
            String phone,
            String city,
            String email,
            int category,
            int sphere,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)?
        postResume,
    TResult Function(int id, int active)? activateOrDeactivate,
    TResult Function(String path, int id)? addFile,
    TResult Function(int? stageId, int? gradeId, Map<String, dynamic> toMap,
            String typeBlock, int resumeId)?
        changeExtraBlocks,
    TResult Function(
            int id, String typeBlock, List<Map<String, dynamic>> toMaps)?
        addExtraBlocks,
    TResult Function(
            int resumeId, String typeBlock, int? stageId, int? gradeId)?
        deleteExtraBlocks,
    required TResult orElse(),
  }) {
    if (addExtraBlocks != null) {
      return addExtraBlocks(id, typeBlock, toMaps);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVResumeUserEvent value) getResume,
    required TResult Function(_EditResumeUserEvent value) editResume,
    required TResult Function(_PostResumeUserEvent value) postResume,
    required TResult Function(_ActivateOrDeactivateResumeUserEvent value)
        activateOrDeactivate,
    required TResult Function(_AddFileResumeUserEvent value) addFile,
    required TResult Function(_ChangeExtraBlocksResumeUserEvent value)
        changeExtraBlocks,
    required TResult Function(_AddExtraBlocksResumeUserEvent value)
        addExtraBlocks,
    required TResult Function(_DeleteExtraBlocksResumeUserEvent value)
        deleteExtraBlocks,
  }) {
    return addExtraBlocks(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVResumeUserEvent value)? getResume,
    TResult Function(_EditResumeUserEvent value)? editResume,
    TResult Function(_PostResumeUserEvent value)? postResume,
    TResult Function(_ActivateOrDeactivateResumeUserEvent value)?
        activateOrDeactivate,
    TResult Function(_AddFileResumeUserEvent value)? addFile,
    TResult Function(_ChangeExtraBlocksResumeUserEvent value)?
        changeExtraBlocks,
    TResult Function(_AddExtraBlocksResumeUserEvent value)? addExtraBlocks,
    TResult Function(_DeleteExtraBlocksResumeUserEvent value)?
        deleteExtraBlocks,
    required TResult orElse(),
  }) {
    if (addExtraBlocks != null) {
      return addExtraBlocks(this);
    }
    return orElse();
  }
}

abstract class _AddExtraBlocksResumeUserEvent implements ResumeUserEvent {
  const factory _AddExtraBlocksResumeUserEvent(
          {required int id,
          required String typeBlock,
          required List<Map<String, dynamic>> toMaps}) =
      _$_AddExtraBlocksResumeUserEvent;

  int get id => throw _privateConstructorUsedError;
  String get typeBlock => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get toMaps => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddExtraBlocksResumeUserEventCopyWith<_AddExtraBlocksResumeUserEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteExtraBlocksResumeUserEventCopyWith<$Res> {
  factory _$DeleteExtraBlocksResumeUserEventCopyWith(
          _DeleteExtraBlocksResumeUserEvent value,
          $Res Function(_DeleteExtraBlocksResumeUserEvent) then) =
      __$DeleteExtraBlocksResumeUserEventCopyWithImpl<$Res>;
  $Res call({int resumeId, String typeBlock, int? stageId, int? gradeId});
}

/// @nodoc
class __$DeleteExtraBlocksResumeUserEventCopyWithImpl<$Res>
    extends _$ResumeUserEventCopyWithImpl<$Res>
    implements _$DeleteExtraBlocksResumeUserEventCopyWith<$Res> {
  __$DeleteExtraBlocksResumeUserEventCopyWithImpl(
      _DeleteExtraBlocksResumeUserEvent _value,
      $Res Function(_DeleteExtraBlocksResumeUserEvent) _then)
      : super(_value, (v) => _then(v as _DeleteExtraBlocksResumeUserEvent));

  @override
  _DeleteExtraBlocksResumeUserEvent get _value =>
      super._value as _DeleteExtraBlocksResumeUserEvent;

  @override
  $Res call({
    Object? resumeId = freezed,
    Object? typeBlock = freezed,
    Object? stageId = freezed,
    Object? gradeId = freezed,
  }) {
    return _then(_DeleteExtraBlocksResumeUserEvent(
      resumeId: resumeId == freezed
          ? _value.resumeId
          : resumeId // ignore: cast_nullable_to_non_nullable
              as int,
      typeBlock: typeBlock == freezed
          ? _value.typeBlock
          : typeBlock // ignore: cast_nullable_to_non_nullable
              as String,
      stageId: stageId == freezed
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int?,
      gradeId: gradeId == freezed
          ? _value.gradeId
          : gradeId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_DeleteExtraBlocksResumeUserEvent
    implements _DeleteExtraBlocksResumeUserEvent {
  const _$_DeleteExtraBlocksResumeUserEvent(
      {required this.resumeId,
      required this.typeBlock,
      this.stageId,
      this.gradeId});

  @override
  final int resumeId;
  @override
  final String typeBlock;
  @override
  final int? stageId;
  @override
  final int? gradeId;

  @override
  String toString() {
    return 'ResumeUserEvent.deleteExtraBlocks(resumeId: $resumeId, typeBlock: $typeBlock, stageId: $stageId, gradeId: $gradeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteExtraBlocksResumeUserEvent &&
            (identical(other.resumeId, resumeId) ||
                const DeepCollectionEquality()
                    .equals(other.resumeId, resumeId)) &&
            (identical(other.typeBlock, typeBlock) ||
                const DeepCollectionEquality()
                    .equals(other.typeBlock, typeBlock)) &&
            (identical(other.stageId, stageId) ||
                const DeepCollectionEquality()
                    .equals(other.stageId, stageId)) &&
            (identical(other.gradeId, gradeId) ||
                const DeepCollectionEquality().equals(other.gradeId, gradeId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(resumeId) ^
      const DeepCollectionEquality().hash(typeBlock) ^
      const DeepCollectionEquality().hash(stageId) ^
      const DeepCollectionEquality().hash(gradeId);

  @JsonKey(ignore: true)
  @override
  _$DeleteExtraBlocksResumeUserEventCopyWith<_DeleteExtraBlocksResumeUserEvent>
      get copyWith => __$DeleteExtraBlocksResumeUserEventCopyWithImpl<
          _DeleteExtraBlocksResumeUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getResume,
    required TResult Function(String phone, String email, String? body,
            String? abilities, String? city, int sphere, int category, int id)
        editResume,
    required TResult Function(
            String body,
            String abilities,
            String name,
            String phone,
            String city,
            String email,
            int category,
            int sphere,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)
        postResume,
    required TResult Function(int id, int active) activateOrDeactivate,
    required TResult Function(String path, int id) addFile,
    required TResult Function(int? stageId, int? gradeId,
            Map<String, dynamic> toMap, String typeBlock, int resumeId)
        changeExtraBlocks,
    required TResult Function(
            int id, String typeBlock, List<Map<String, dynamic>> toMaps)
        addExtraBlocks,
    required TResult Function(
            int resumeId, String typeBlock, int? stageId, int? gradeId)
        deleteExtraBlocks,
  }) {
    return deleteExtraBlocks(resumeId, typeBlock, stageId, gradeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getResume,
    TResult Function(String phone, String email, String? body,
            String? abilities, String? city, int sphere, int category, int id)?
        editResume,
    TResult Function(
            String body,
            String abilities,
            String name,
            String phone,
            String city,
            String email,
            int category,
            int sphere,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)?
        postResume,
    TResult Function(int id, int active)? activateOrDeactivate,
    TResult Function(String path, int id)? addFile,
    TResult Function(int? stageId, int? gradeId, Map<String, dynamic> toMap,
            String typeBlock, int resumeId)?
        changeExtraBlocks,
    TResult Function(
            int id, String typeBlock, List<Map<String, dynamic>> toMaps)?
        addExtraBlocks,
    TResult Function(
            int resumeId, String typeBlock, int? stageId, int? gradeId)?
        deleteExtraBlocks,
    required TResult orElse(),
  }) {
    if (deleteExtraBlocks != null) {
      return deleteExtraBlocks(resumeId, typeBlock, stageId, gradeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVResumeUserEvent value) getResume,
    required TResult Function(_EditResumeUserEvent value) editResume,
    required TResult Function(_PostResumeUserEvent value) postResume,
    required TResult Function(_ActivateOrDeactivateResumeUserEvent value)
        activateOrDeactivate,
    required TResult Function(_AddFileResumeUserEvent value) addFile,
    required TResult Function(_ChangeExtraBlocksResumeUserEvent value)
        changeExtraBlocks,
    required TResult Function(_AddExtraBlocksResumeUserEvent value)
        addExtraBlocks,
    required TResult Function(_DeleteExtraBlocksResumeUserEvent value)
        deleteExtraBlocks,
  }) {
    return deleteExtraBlocks(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVResumeUserEvent value)? getResume,
    TResult Function(_EditResumeUserEvent value)? editResume,
    TResult Function(_PostResumeUserEvent value)? postResume,
    TResult Function(_ActivateOrDeactivateResumeUserEvent value)?
        activateOrDeactivate,
    TResult Function(_AddFileResumeUserEvent value)? addFile,
    TResult Function(_ChangeExtraBlocksResumeUserEvent value)?
        changeExtraBlocks,
    TResult Function(_AddExtraBlocksResumeUserEvent value)? addExtraBlocks,
    TResult Function(_DeleteExtraBlocksResumeUserEvent value)?
        deleteExtraBlocks,
    required TResult orElse(),
  }) {
    if (deleteExtraBlocks != null) {
      return deleteExtraBlocks(this);
    }
    return orElse();
  }
}

abstract class _DeleteExtraBlocksResumeUserEvent implements ResumeUserEvent {
  const factory _DeleteExtraBlocksResumeUserEvent(
      {required int resumeId,
      required String typeBlock,
      int? stageId,
      int? gradeId}) = _$_DeleteExtraBlocksResumeUserEvent;

  int get resumeId => throw _privateConstructorUsedError;
  String get typeBlock => throw _privateConstructorUsedError;
  int? get stageId => throw _privateConstructorUsedError;
  int? get gradeId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteExtraBlocksResumeUserEventCopyWith<_DeleteExtraBlocksResumeUserEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ResumeUserStateTearOff {
  const _$ResumeUserStateTearOff();

  EmptyResumeUserState empty() {
    return const EmptyResumeUserState();
  }

  LoadingResumeUserState loading() {
    return const LoadingResumeUserState();
  }

  LoadedResumeUserState loaded(
      {required Resume resume, required String status}) {
    return LoadedResumeUserState(
      resume: resume,
      status: status,
    );
  }

  NoResumeUserState noResume({required String status}) {
    return NoResumeUserState(
      status: status,
    );
  }
}

/// @nodoc
const $ResumeUserState = _$ResumeUserStateTearOff();

/// @nodoc
mixin _$ResumeUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Resume resume, String status) loaded,
    required TResult Function(String status) noResume,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Resume resume, String status)? loaded,
    TResult Function(String status)? noResume,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyResumeUserState value) empty,
    required TResult Function(LoadingResumeUserState value) loading,
    required TResult Function(LoadedResumeUserState value) loaded,
    required TResult Function(NoResumeUserState value) noResume,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyResumeUserState value)? empty,
    TResult Function(LoadingResumeUserState value)? loading,
    TResult Function(LoadedResumeUserState value)? loaded,
    TResult Function(NoResumeUserState value)? noResume,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeUserStateCopyWith<$Res> {
  factory $ResumeUserStateCopyWith(
          ResumeUserState value, $Res Function(ResumeUserState) then) =
      _$ResumeUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResumeUserStateCopyWithImpl<$Res>
    implements $ResumeUserStateCopyWith<$Res> {
  _$ResumeUserStateCopyWithImpl(this._value, this._then);

  final ResumeUserState _value;
  // ignore: unused_field
  final $Res Function(ResumeUserState) _then;
}

/// @nodoc
abstract class $EmptyResumeUserStateCopyWith<$Res> {
  factory $EmptyResumeUserStateCopyWith(EmptyResumeUserState value,
          $Res Function(EmptyResumeUserState) then) =
      _$EmptyResumeUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyResumeUserStateCopyWithImpl<$Res>
    extends _$ResumeUserStateCopyWithImpl<$Res>
    implements $EmptyResumeUserStateCopyWith<$Res> {
  _$EmptyResumeUserStateCopyWithImpl(
      EmptyResumeUserState _value, $Res Function(EmptyResumeUserState) _then)
      : super(_value, (v) => _then(v as EmptyResumeUserState));

  @override
  EmptyResumeUserState get _value => super._value as EmptyResumeUserState;
}

/// @nodoc

class _$EmptyResumeUserState implements EmptyResumeUserState {
  const _$EmptyResumeUserState();

  @override
  String toString() {
    return 'ResumeUserState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyResumeUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Resume resume, String status) loaded,
    required TResult Function(String status) noResume,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Resume resume, String status)? loaded,
    TResult Function(String status)? noResume,
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
    required TResult Function(EmptyResumeUserState value) empty,
    required TResult Function(LoadingResumeUserState value) loading,
    required TResult Function(LoadedResumeUserState value) loaded,
    required TResult Function(NoResumeUserState value) noResume,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyResumeUserState value)? empty,
    TResult Function(LoadingResumeUserState value)? loading,
    TResult Function(LoadedResumeUserState value)? loaded,
    TResult Function(NoResumeUserState value)? noResume,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyResumeUserState implements ResumeUserState {
  const factory EmptyResumeUserState() = _$EmptyResumeUserState;
}

/// @nodoc
abstract class $LoadingResumeUserStateCopyWith<$Res> {
  factory $LoadingResumeUserStateCopyWith(LoadingResumeUserState value,
          $Res Function(LoadingResumeUserState) then) =
      _$LoadingResumeUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingResumeUserStateCopyWithImpl<$Res>
    extends _$ResumeUserStateCopyWithImpl<$Res>
    implements $LoadingResumeUserStateCopyWith<$Res> {
  _$LoadingResumeUserStateCopyWithImpl(LoadingResumeUserState _value,
      $Res Function(LoadingResumeUserState) _then)
      : super(_value, (v) => _then(v as LoadingResumeUserState));

  @override
  LoadingResumeUserState get _value => super._value as LoadingResumeUserState;
}

/// @nodoc

class _$LoadingResumeUserState implements LoadingResumeUserState {
  const _$LoadingResumeUserState();

  @override
  String toString() {
    return 'ResumeUserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingResumeUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Resume resume, String status) loaded,
    required TResult Function(String status) noResume,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Resume resume, String status)? loaded,
    TResult Function(String status)? noResume,
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
    required TResult Function(EmptyResumeUserState value) empty,
    required TResult Function(LoadingResumeUserState value) loading,
    required TResult Function(LoadedResumeUserState value) loaded,
    required TResult Function(NoResumeUserState value) noResume,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyResumeUserState value)? empty,
    TResult Function(LoadingResumeUserState value)? loading,
    TResult Function(LoadedResumeUserState value)? loaded,
    TResult Function(NoResumeUserState value)? noResume,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingResumeUserState implements ResumeUserState {
  const factory LoadingResumeUserState() = _$LoadingResumeUserState;
}

/// @nodoc
abstract class $LoadedResumeUserStateCopyWith<$Res> {
  factory $LoadedResumeUserStateCopyWith(LoadedResumeUserState value,
          $Res Function(LoadedResumeUserState) then) =
      _$LoadedResumeUserStateCopyWithImpl<$Res>;
  $Res call({Resume resume, String status});
}

/// @nodoc
class _$LoadedResumeUserStateCopyWithImpl<$Res>
    extends _$ResumeUserStateCopyWithImpl<$Res>
    implements $LoadedResumeUserStateCopyWith<$Res> {
  _$LoadedResumeUserStateCopyWithImpl(
      LoadedResumeUserState _value, $Res Function(LoadedResumeUserState) _then)
      : super(_value, (v) => _then(v as LoadedResumeUserState));

  @override
  LoadedResumeUserState get _value => super._value as LoadedResumeUserState;

  @override
  $Res call({
    Object? resume = freezed,
    Object? status = freezed,
  }) {
    return _then(LoadedResumeUserState(
      resume: resume == freezed
          ? _value.resume
          : resume // ignore: cast_nullable_to_non_nullable
              as Resume,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedResumeUserState implements LoadedResumeUserState {
  const _$LoadedResumeUserState({required this.resume, required this.status});

  @override
  final Resume resume;
  @override
  final String status;

  @override
  String toString() {
    return 'ResumeUserState.loaded(resume: $resume, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedResumeUserState &&
            (identical(other.resume, resume) ||
                const DeepCollectionEquality().equals(other.resume, resume)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(resume) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $LoadedResumeUserStateCopyWith<LoadedResumeUserState> get copyWith =>
      _$LoadedResumeUserStateCopyWithImpl<LoadedResumeUserState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Resume resume, String status) loaded,
    required TResult Function(String status) noResume,
  }) {
    return loaded(resume, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Resume resume, String status)? loaded,
    TResult Function(String status)? noResume,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(resume, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyResumeUserState value) empty,
    required TResult Function(LoadingResumeUserState value) loading,
    required TResult Function(LoadedResumeUserState value) loaded,
    required TResult Function(NoResumeUserState value) noResume,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyResumeUserState value)? empty,
    TResult Function(LoadingResumeUserState value)? loading,
    TResult Function(LoadedResumeUserState value)? loaded,
    TResult Function(NoResumeUserState value)? noResume,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedResumeUserState implements ResumeUserState {
  const factory LoadedResumeUserState(
      {required Resume resume,
      required String status}) = _$LoadedResumeUserState;

  Resume get resume => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedResumeUserStateCopyWith<LoadedResumeUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoResumeUserStateCopyWith<$Res> {
  factory $NoResumeUserStateCopyWith(
          NoResumeUserState value, $Res Function(NoResumeUserState) then) =
      _$NoResumeUserStateCopyWithImpl<$Res>;
  $Res call({String status});
}

/// @nodoc
class _$NoResumeUserStateCopyWithImpl<$Res>
    extends _$ResumeUserStateCopyWithImpl<$Res>
    implements $NoResumeUserStateCopyWith<$Res> {
  _$NoResumeUserStateCopyWithImpl(
      NoResumeUserState _value, $Res Function(NoResumeUserState) _then)
      : super(_value, (v) => _then(v as NoResumeUserState));

  @override
  NoResumeUserState get _value => super._value as NoResumeUserState;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(NoResumeUserState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoResumeUserState implements NoResumeUserState {
  const _$NoResumeUserState({required this.status});

  @override
  final String status;

  @override
  String toString() {
    return 'ResumeUserState.noResume(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NoResumeUserState &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $NoResumeUserStateCopyWith<NoResumeUserState> get copyWith =>
      _$NoResumeUserStateCopyWithImpl<NoResumeUserState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Resume resume, String status) loaded,
    required TResult Function(String status) noResume,
  }) {
    return noResume(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Resume resume, String status)? loaded,
    TResult Function(String status)? noResume,
    required TResult orElse(),
  }) {
    if (noResume != null) {
      return noResume(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyResumeUserState value) empty,
    required TResult Function(LoadingResumeUserState value) loading,
    required TResult Function(LoadedResumeUserState value) loaded,
    required TResult Function(NoResumeUserState value) noResume,
  }) {
    return noResume(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyResumeUserState value)? empty,
    TResult Function(LoadingResumeUserState value)? loading,
    TResult Function(LoadedResumeUserState value)? loaded,
    TResult Function(NoResumeUserState value)? noResume,
    required TResult orElse(),
  }) {
    if (noResume != null) {
      return noResume(this);
    }
    return orElse();
  }
}

abstract class NoResumeUserState implements ResumeUserState {
  const factory NoResumeUserState({required String status}) =
      _$NoResumeUserState;

  String get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoResumeUserStateCopyWith<NoResumeUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
