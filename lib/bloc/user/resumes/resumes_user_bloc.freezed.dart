// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'resumes_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResumesUserEventTearOff {
  const _$ResumesUserEventTearOff();

  _GetResumesUserEvent getResumes() {
    return const _GetResumesUserEvent();
  }

  _AddOrDeleteLocalResumesUserEvent addOrDeleteLocalResume(
      {required String nameResume, required bool delete}) {
    return _AddOrDeleteLocalResumesUserEvent(
      nameResume: nameResume,
      delete: delete,
    );
  }

  _EditLocalNameResumesUserEvent editLocalName(
      {required String nameResume, required int id}) {
    return _EditLocalNameResumesUserEvent(
      nameResume: nameResume,
      id: id,
    );
  }

  _EditRemotedNameResumesUserEvent editRemotedName(
      {required String nameResume,
      required String phone,
      required String email,
      required int category,
      required int id}) {
    return _EditRemotedNameResumesUserEvent(
      nameResume: nameResume,
      phone: phone,
      email: email,
      category: category,
      id: id,
    );
  }

  _DeleteResumesUserEvent deleteResumes({required int id}) {
    return _DeleteResumesUserEvent(
      id: id,
    );
  }
}

/// @nodoc
const $ResumesUserEvent = _$ResumesUserEventTearOff();

/// @nodoc
mixin _$ResumesUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getResumes,
    required TResult Function(String nameResume, bool delete)
        addOrDeleteLocalResume,
    required TResult Function(String nameResume, int id) editLocalName,
    required TResult Function(
            String nameResume, String phone, String email, int category, int id)
        editRemotedName,
    required TResult Function(int id) deleteResumes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getResumes,
    TResult Function(String nameResume, bool delete)? addOrDeleteLocalResume,
    TResult Function(String nameResume, int id)? editLocalName,
    TResult Function(String nameResume, String phone, String email,
            int category, int id)?
        editRemotedName,
    TResult Function(int id)? deleteResumes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetResumesUserEvent value) getResumes,
    required TResult Function(_AddOrDeleteLocalResumesUserEvent value)
        addOrDeleteLocalResume,
    required TResult Function(_EditLocalNameResumesUserEvent value)
        editLocalName,
    required TResult Function(_EditRemotedNameResumesUserEvent value)
        editRemotedName,
    required TResult Function(_DeleteResumesUserEvent value) deleteResumes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetResumesUserEvent value)? getResumes,
    TResult Function(_AddOrDeleteLocalResumesUserEvent value)?
        addOrDeleteLocalResume,
    TResult Function(_EditLocalNameResumesUserEvent value)? editLocalName,
    TResult Function(_EditRemotedNameResumesUserEvent value)? editRemotedName,
    TResult Function(_DeleteResumesUserEvent value)? deleteResumes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumesUserEventCopyWith<$Res> {
  factory $ResumesUserEventCopyWith(
          ResumesUserEvent value, $Res Function(ResumesUserEvent) then) =
      _$ResumesUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResumesUserEventCopyWithImpl<$Res>
    implements $ResumesUserEventCopyWith<$Res> {
  _$ResumesUserEventCopyWithImpl(this._value, this._then);

  final ResumesUserEvent _value;
  // ignore: unused_field
  final $Res Function(ResumesUserEvent) _then;
}

/// @nodoc
abstract class _$GetResumesUserEventCopyWith<$Res> {
  factory _$GetResumesUserEventCopyWith(_GetResumesUserEvent value,
          $Res Function(_GetResumesUserEvent) then) =
      __$GetResumesUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetResumesUserEventCopyWithImpl<$Res>
    extends _$ResumesUserEventCopyWithImpl<$Res>
    implements _$GetResumesUserEventCopyWith<$Res> {
  __$GetResumesUserEventCopyWithImpl(
      _GetResumesUserEvent _value, $Res Function(_GetResumesUserEvent) _then)
      : super(_value, (v) => _then(v as _GetResumesUserEvent));

  @override
  _GetResumesUserEvent get _value => super._value as _GetResumesUserEvent;
}

/// @nodoc

class _$_GetResumesUserEvent implements _GetResumesUserEvent {
  const _$_GetResumesUserEvent();

  @override
  String toString() {
    return 'ResumesUserEvent.getResumes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetResumesUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getResumes,
    required TResult Function(String nameResume, bool delete)
        addOrDeleteLocalResume,
    required TResult Function(String nameResume, int id) editLocalName,
    required TResult Function(
            String nameResume, String phone, String email, int category, int id)
        editRemotedName,
    required TResult Function(int id) deleteResumes,
  }) {
    return getResumes();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getResumes,
    TResult Function(String nameResume, bool delete)? addOrDeleteLocalResume,
    TResult Function(String nameResume, int id)? editLocalName,
    TResult Function(String nameResume, String phone, String email,
            int category, int id)?
        editRemotedName,
    TResult Function(int id)? deleteResumes,
    required TResult orElse(),
  }) {
    if (getResumes != null) {
      return getResumes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetResumesUserEvent value) getResumes,
    required TResult Function(_AddOrDeleteLocalResumesUserEvent value)
        addOrDeleteLocalResume,
    required TResult Function(_EditLocalNameResumesUserEvent value)
        editLocalName,
    required TResult Function(_EditRemotedNameResumesUserEvent value)
        editRemotedName,
    required TResult Function(_DeleteResumesUserEvent value) deleteResumes,
  }) {
    return getResumes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetResumesUserEvent value)? getResumes,
    TResult Function(_AddOrDeleteLocalResumesUserEvent value)?
        addOrDeleteLocalResume,
    TResult Function(_EditLocalNameResumesUserEvent value)? editLocalName,
    TResult Function(_EditRemotedNameResumesUserEvent value)? editRemotedName,
    TResult Function(_DeleteResumesUserEvent value)? deleteResumes,
    required TResult orElse(),
  }) {
    if (getResumes != null) {
      return getResumes(this);
    }
    return orElse();
  }
}

abstract class _GetResumesUserEvent implements ResumesUserEvent {
  const factory _GetResumesUserEvent() = _$_GetResumesUserEvent;
}

/// @nodoc
abstract class _$AddOrDeleteLocalResumesUserEventCopyWith<$Res> {
  factory _$AddOrDeleteLocalResumesUserEventCopyWith(
          _AddOrDeleteLocalResumesUserEvent value,
          $Res Function(_AddOrDeleteLocalResumesUserEvent) then) =
      __$AddOrDeleteLocalResumesUserEventCopyWithImpl<$Res>;
  $Res call({String nameResume, bool delete});
}

/// @nodoc
class __$AddOrDeleteLocalResumesUserEventCopyWithImpl<$Res>
    extends _$ResumesUserEventCopyWithImpl<$Res>
    implements _$AddOrDeleteLocalResumesUserEventCopyWith<$Res> {
  __$AddOrDeleteLocalResumesUserEventCopyWithImpl(
      _AddOrDeleteLocalResumesUserEvent _value,
      $Res Function(_AddOrDeleteLocalResumesUserEvent) _then)
      : super(_value, (v) => _then(v as _AddOrDeleteLocalResumesUserEvent));

  @override
  _AddOrDeleteLocalResumesUserEvent get _value =>
      super._value as _AddOrDeleteLocalResumesUserEvent;

  @override
  $Res call({
    Object? nameResume = freezed,
    Object? delete = freezed,
  }) {
    return _then(_AddOrDeleteLocalResumesUserEvent(
      nameResume: nameResume == freezed
          ? _value.nameResume
          : nameResume // ignore: cast_nullable_to_non_nullable
              as String,
      delete: delete == freezed
          ? _value.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddOrDeleteLocalResumesUserEvent
    implements _AddOrDeleteLocalResumesUserEvent {
  const _$_AddOrDeleteLocalResumesUserEvent(
      {required this.nameResume, required this.delete});

  @override
  final String nameResume;
  @override
  final bool delete;

  @override
  String toString() {
    return 'ResumesUserEvent.addOrDeleteLocalResume(nameResume: $nameResume, delete: $delete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddOrDeleteLocalResumesUserEvent &&
            (identical(other.nameResume, nameResume) ||
                const DeepCollectionEquality()
                    .equals(other.nameResume, nameResume)) &&
            (identical(other.delete, delete) ||
                const DeepCollectionEquality().equals(other.delete, delete)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nameResume) ^
      const DeepCollectionEquality().hash(delete);

  @JsonKey(ignore: true)
  @override
  _$AddOrDeleteLocalResumesUserEventCopyWith<_AddOrDeleteLocalResumesUserEvent>
      get copyWith => __$AddOrDeleteLocalResumesUserEventCopyWithImpl<
          _AddOrDeleteLocalResumesUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getResumes,
    required TResult Function(String nameResume, bool delete)
        addOrDeleteLocalResume,
    required TResult Function(String nameResume, int id) editLocalName,
    required TResult Function(
            String nameResume, String phone, String email, int category, int id)
        editRemotedName,
    required TResult Function(int id) deleteResumes,
  }) {
    return addOrDeleteLocalResume(nameResume, delete);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getResumes,
    TResult Function(String nameResume, bool delete)? addOrDeleteLocalResume,
    TResult Function(String nameResume, int id)? editLocalName,
    TResult Function(String nameResume, String phone, String email,
            int category, int id)?
        editRemotedName,
    TResult Function(int id)? deleteResumes,
    required TResult orElse(),
  }) {
    if (addOrDeleteLocalResume != null) {
      return addOrDeleteLocalResume(nameResume, delete);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetResumesUserEvent value) getResumes,
    required TResult Function(_AddOrDeleteLocalResumesUserEvent value)
        addOrDeleteLocalResume,
    required TResult Function(_EditLocalNameResumesUserEvent value)
        editLocalName,
    required TResult Function(_EditRemotedNameResumesUserEvent value)
        editRemotedName,
    required TResult Function(_DeleteResumesUserEvent value) deleteResumes,
  }) {
    return addOrDeleteLocalResume(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetResumesUserEvent value)? getResumes,
    TResult Function(_AddOrDeleteLocalResumesUserEvent value)?
        addOrDeleteLocalResume,
    TResult Function(_EditLocalNameResumesUserEvent value)? editLocalName,
    TResult Function(_EditRemotedNameResumesUserEvent value)? editRemotedName,
    TResult Function(_DeleteResumesUserEvent value)? deleteResumes,
    required TResult orElse(),
  }) {
    if (addOrDeleteLocalResume != null) {
      return addOrDeleteLocalResume(this);
    }
    return orElse();
  }
}

abstract class _AddOrDeleteLocalResumesUserEvent implements ResumesUserEvent {
  const factory _AddOrDeleteLocalResumesUserEvent(
      {required String nameResume,
      required bool delete}) = _$_AddOrDeleteLocalResumesUserEvent;

  String get nameResume => throw _privateConstructorUsedError;
  bool get delete => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddOrDeleteLocalResumesUserEventCopyWith<_AddOrDeleteLocalResumesUserEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EditLocalNameResumesUserEventCopyWith<$Res> {
  factory _$EditLocalNameResumesUserEventCopyWith(
          _EditLocalNameResumesUserEvent value,
          $Res Function(_EditLocalNameResumesUserEvent) then) =
      __$EditLocalNameResumesUserEventCopyWithImpl<$Res>;
  $Res call({String nameResume, int id});
}

/// @nodoc
class __$EditLocalNameResumesUserEventCopyWithImpl<$Res>
    extends _$ResumesUserEventCopyWithImpl<$Res>
    implements _$EditLocalNameResumesUserEventCopyWith<$Res> {
  __$EditLocalNameResumesUserEventCopyWithImpl(
      _EditLocalNameResumesUserEvent _value,
      $Res Function(_EditLocalNameResumesUserEvent) _then)
      : super(_value, (v) => _then(v as _EditLocalNameResumesUserEvent));

  @override
  _EditLocalNameResumesUserEvent get _value =>
      super._value as _EditLocalNameResumesUserEvent;

  @override
  $Res call({
    Object? nameResume = freezed,
    Object? id = freezed,
  }) {
    return _then(_EditLocalNameResumesUserEvent(
      nameResume: nameResume == freezed
          ? _value.nameResume
          : nameResume // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EditLocalNameResumesUserEvent
    implements _EditLocalNameResumesUserEvent {
  const _$_EditLocalNameResumesUserEvent(
      {required this.nameResume, required this.id});

  @override
  final String nameResume;
  @override
  final int id;

  @override
  String toString() {
    return 'ResumesUserEvent.editLocalName(nameResume: $nameResume, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditLocalNameResumesUserEvent &&
            (identical(other.nameResume, nameResume) ||
                const DeepCollectionEquality()
                    .equals(other.nameResume, nameResume)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nameResume) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$EditLocalNameResumesUserEventCopyWith<_EditLocalNameResumesUserEvent>
      get copyWith => __$EditLocalNameResumesUserEventCopyWithImpl<
          _EditLocalNameResumesUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getResumes,
    required TResult Function(String nameResume, bool delete)
        addOrDeleteLocalResume,
    required TResult Function(String nameResume, int id) editLocalName,
    required TResult Function(
            String nameResume, String phone, String email, int category, int id)
        editRemotedName,
    required TResult Function(int id) deleteResumes,
  }) {
    return editLocalName(nameResume, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getResumes,
    TResult Function(String nameResume, bool delete)? addOrDeleteLocalResume,
    TResult Function(String nameResume, int id)? editLocalName,
    TResult Function(String nameResume, String phone, String email,
            int category, int id)?
        editRemotedName,
    TResult Function(int id)? deleteResumes,
    required TResult orElse(),
  }) {
    if (editLocalName != null) {
      return editLocalName(nameResume, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetResumesUserEvent value) getResumes,
    required TResult Function(_AddOrDeleteLocalResumesUserEvent value)
        addOrDeleteLocalResume,
    required TResult Function(_EditLocalNameResumesUserEvent value)
        editLocalName,
    required TResult Function(_EditRemotedNameResumesUserEvent value)
        editRemotedName,
    required TResult Function(_DeleteResumesUserEvent value) deleteResumes,
  }) {
    return editLocalName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetResumesUserEvent value)? getResumes,
    TResult Function(_AddOrDeleteLocalResumesUserEvent value)?
        addOrDeleteLocalResume,
    TResult Function(_EditLocalNameResumesUserEvent value)? editLocalName,
    TResult Function(_EditRemotedNameResumesUserEvent value)? editRemotedName,
    TResult Function(_DeleteResumesUserEvent value)? deleteResumes,
    required TResult orElse(),
  }) {
    if (editLocalName != null) {
      return editLocalName(this);
    }
    return orElse();
  }
}

abstract class _EditLocalNameResumesUserEvent implements ResumesUserEvent {
  const factory _EditLocalNameResumesUserEvent(
      {required String nameResume,
      required int id}) = _$_EditLocalNameResumesUserEvent;

  String get nameResume => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EditLocalNameResumesUserEventCopyWith<_EditLocalNameResumesUserEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EditRemotedNameResumesUserEventCopyWith<$Res> {
  factory _$EditRemotedNameResumesUserEventCopyWith(
          _EditRemotedNameResumesUserEvent value,
          $Res Function(_EditRemotedNameResumesUserEvent) then) =
      __$EditRemotedNameResumesUserEventCopyWithImpl<$Res>;
  $Res call(
      {String nameResume, String phone, String email, int category, int id});
}

/// @nodoc
class __$EditRemotedNameResumesUserEventCopyWithImpl<$Res>
    extends _$ResumesUserEventCopyWithImpl<$Res>
    implements _$EditRemotedNameResumesUserEventCopyWith<$Res> {
  __$EditRemotedNameResumesUserEventCopyWithImpl(
      _EditRemotedNameResumesUserEvent _value,
      $Res Function(_EditRemotedNameResumesUserEvent) _then)
      : super(_value, (v) => _then(v as _EditRemotedNameResumesUserEvent));

  @override
  _EditRemotedNameResumesUserEvent get _value =>
      super._value as _EditRemotedNameResumesUserEvent;

  @override
  $Res call({
    Object? nameResume = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? category = freezed,
    Object? id = freezed,
  }) {
    return _then(_EditRemotedNameResumesUserEvent(
      nameResume: nameResume == freezed
          ? _value.nameResume
          : nameResume // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_EditRemotedNameResumesUserEvent
    implements _EditRemotedNameResumesUserEvent {
  const _$_EditRemotedNameResumesUserEvent(
      {required this.nameResume,
      required this.phone,
      required this.email,
      required this.category,
      required this.id});

  @override
  final String nameResume;
  @override
  final String phone;
  @override
  final String email;
  @override
  final int category;
  @override
  final int id;

  @override
  String toString() {
    return 'ResumesUserEvent.editRemotedName(nameResume: $nameResume, phone: $phone, email: $email, category: $category, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditRemotedNameResumesUserEvent &&
            (identical(other.nameResume, nameResume) ||
                const DeepCollectionEquality()
                    .equals(other.nameResume, nameResume)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nameResume) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$EditRemotedNameResumesUserEventCopyWith<_EditRemotedNameResumesUserEvent>
      get copyWith => __$EditRemotedNameResumesUserEventCopyWithImpl<
          _EditRemotedNameResumesUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getResumes,
    required TResult Function(String nameResume, bool delete)
        addOrDeleteLocalResume,
    required TResult Function(String nameResume, int id) editLocalName,
    required TResult Function(
            String nameResume, String phone, String email, int category, int id)
        editRemotedName,
    required TResult Function(int id) deleteResumes,
  }) {
    return editRemotedName(nameResume, phone, email, category, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getResumes,
    TResult Function(String nameResume, bool delete)? addOrDeleteLocalResume,
    TResult Function(String nameResume, int id)? editLocalName,
    TResult Function(String nameResume, String phone, String email,
            int category, int id)?
        editRemotedName,
    TResult Function(int id)? deleteResumes,
    required TResult orElse(),
  }) {
    if (editRemotedName != null) {
      return editRemotedName(nameResume, phone, email, category, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetResumesUserEvent value) getResumes,
    required TResult Function(_AddOrDeleteLocalResumesUserEvent value)
        addOrDeleteLocalResume,
    required TResult Function(_EditLocalNameResumesUserEvent value)
        editLocalName,
    required TResult Function(_EditRemotedNameResumesUserEvent value)
        editRemotedName,
    required TResult Function(_DeleteResumesUserEvent value) deleteResumes,
  }) {
    return editRemotedName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetResumesUserEvent value)? getResumes,
    TResult Function(_AddOrDeleteLocalResumesUserEvent value)?
        addOrDeleteLocalResume,
    TResult Function(_EditLocalNameResumesUserEvent value)? editLocalName,
    TResult Function(_EditRemotedNameResumesUserEvent value)? editRemotedName,
    TResult Function(_DeleteResumesUserEvent value)? deleteResumes,
    required TResult orElse(),
  }) {
    if (editRemotedName != null) {
      return editRemotedName(this);
    }
    return orElse();
  }
}

abstract class _EditRemotedNameResumesUserEvent implements ResumesUserEvent {
  const factory _EditRemotedNameResumesUserEvent(
      {required String nameResume,
      required String phone,
      required String email,
      required int category,
      required int id}) = _$_EditRemotedNameResumesUserEvent;

  String get nameResume => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int get category => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EditRemotedNameResumesUserEventCopyWith<_EditRemotedNameResumesUserEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteResumesUserEventCopyWith<$Res> {
  factory _$DeleteResumesUserEventCopyWith(_DeleteResumesUserEvent value,
          $Res Function(_DeleteResumesUserEvent) then) =
      __$DeleteResumesUserEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$DeleteResumesUserEventCopyWithImpl<$Res>
    extends _$ResumesUserEventCopyWithImpl<$Res>
    implements _$DeleteResumesUserEventCopyWith<$Res> {
  __$DeleteResumesUserEventCopyWithImpl(_DeleteResumesUserEvent _value,
      $Res Function(_DeleteResumesUserEvent) _then)
      : super(_value, (v) => _then(v as _DeleteResumesUserEvent));

  @override
  _DeleteResumesUserEvent get _value => super._value as _DeleteResumesUserEvent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_DeleteResumesUserEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteResumesUserEvent implements _DeleteResumesUserEvent {
  const _$_DeleteResumesUserEvent({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ResumesUserEvent.deleteResumes(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteResumesUserEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$DeleteResumesUserEventCopyWith<_DeleteResumesUserEvent> get copyWith =>
      __$DeleteResumesUserEventCopyWithImpl<_DeleteResumesUserEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getResumes,
    required TResult Function(String nameResume, bool delete)
        addOrDeleteLocalResume,
    required TResult Function(String nameResume, int id) editLocalName,
    required TResult Function(
            String nameResume, String phone, String email, int category, int id)
        editRemotedName,
    required TResult Function(int id) deleteResumes,
  }) {
    return deleteResumes(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getResumes,
    TResult Function(String nameResume, bool delete)? addOrDeleteLocalResume,
    TResult Function(String nameResume, int id)? editLocalName,
    TResult Function(String nameResume, String phone, String email,
            int category, int id)?
        editRemotedName,
    TResult Function(int id)? deleteResumes,
    required TResult orElse(),
  }) {
    if (deleteResumes != null) {
      return deleteResumes(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetResumesUserEvent value) getResumes,
    required TResult Function(_AddOrDeleteLocalResumesUserEvent value)
        addOrDeleteLocalResume,
    required TResult Function(_EditLocalNameResumesUserEvent value)
        editLocalName,
    required TResult Function(_EditRemotedNameResumesUserEvent value)
        editRemotedName,
    required TResult Function(_DeleteResumesUserEvent value) deleteResumes,
  }) {
    return deleteResumes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetResumesUserEvent value)? getResumes,
    TResult Function(_AddOrDeleteLocalResumesUserEvent value)?
        addOrDeleteLocalResume,
    TResult Function(_EditLocalNameResumesUserEvent value)? editLocalName,
    TResult Function(_EditRemotedNameResumesUserEvent value)? editRemotedName,
    TResult Function(_DeleteResumesUserEvent value)? deleteResumes,
    required TResult orElse(),
  }) {
    if (deleteResumes != null) {
      return deleteResumes(this);
    }
    return orElse();
  }
}

abstract class _DeleteResumesUserEvent implements ResumesUserEvent {
  const factory _DeleteResumesUserEvent({required int id}) =
      _$_DeleteResumesUserEvent;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteResumesUserEventCopyWith<_DeleteResumesUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ResumesUserStateTearOff {
  const _$ResumesUserStateTearOff();

  EmptyResumesUserState empty() {
    return const EmptyResumesUserState();
  }

  LoadingResumesUserState loading() {
    return const LoadingResumesUserState();
  }

  LoadedResumesUserState loaded(
      {required List<Resume> resumes,
      required int id,
      required String status,
      required List<LocalResumeData> localResumesName}) {
    return LoadedResumesUserState(
      resumes: resumes,
      id: id,
      status: status,
      localResumesName: localResumesName,
    );
  }

  ErrorResumesUserState error({required String message}) {
    return ErrorResumesUserState(
      message: message,
    );
  }
}

/// @nodoc
const $ResumesUserState = _$ResumesUserStateTearOff();

/// @nodoc
mixin _$ResumesUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Resume> resumes, int id, String status,
            List<LocalResumeData> localResumesName)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Resume> resumes, int id, String status,
            List<LocalResumeData> localResumesName)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyResumesUserState value) empty,
    required TResult Function(LoadingResumesUserState value) loading,
    required TResult Function(LoadedResumesUserState value) loaded,
    required TResult Function(ErrorResumesUserState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyResumesUserState value)? empty,
    TResult Function(LoadingResumesUserState value)? loading,
    TResult Function(LoadedResumesUserState value)? loaded,
    TResult Function(ErrorResumesUserState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumesUserStateCopyWith<$Res> {
  factory $ResumesUserStateCopyWith(
          ResumesUserState value, $Res Function(ResumesUserState) then) =
      _$ResumesUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResumesUserStateCopyWithImpl<$Res>
    implements $ResumesUserStateCopyWith<$Res> {
  _$ResumesUserStateCopyWithImpl(this._value, this._then);

  final ResumesUserState _value;
  // ignore: unused_field
  final $Res Function(ResumesUserState) _then;
}

/// @nodoc
abstract class $EmptyResumesUserStateCopyWith<$Res> {
  factory $EmptyResumesUserStateCopyWith(EmptyResumesUserState value,
          $Res Function(EmptyResumesUserState) then) =
      _$EmptyResumesUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyResumesUserStateCopyWithImpl<$Res>
    extends _$ResumesUserStateCopyWithImpl<$Res>
    implements $EmptyResumesUserStateCopyWith<$Res> {
  _$EmptyResumesUserStateCopyWithImpl(
      EmptyResumesUserState _value, $Res Function(EmptyResumesUserState) _then)
      : super(_value, (v) => _then(v as EmptyResumesUserState));

  @override
  EmptyResumesUserState get _value => super._value as EmptyResumesUserState;
}

/// @nodoc

class _$EmptyResumesUserState implements EmptyResumesUserState {
  const _$EmptyResumesUserState();

  @override
  String toString() {
    return 'ResumesUserState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyResumesUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Resume> resumes, int id, String status,
            List<LocalResumeData> localResumesName)
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
    TResult Function(List<Resume> resumes, int id, String status,
            List<LocalResumeData> localResumesName)?
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
    required TResult Function(EmptyResumesUserState value) empty,
    required TResult Function(LoadingResumesUserState value) loading,
    required TResult Function(LoadedResumesUserState value) loaded,
    required TResult Function(ErrorResumesUserState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyResumesUserState value)? empty,
    TResult Function(LoadingResumesUserState value)? loading,
    TResult Function(LoadedResumesUserState value)? loaded,
    TResult Function(ErrorResumesUserState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyResumesUserState implements ResumesUserState {
  const factory EmptyResumesUserState() = _$EmptyResumesUserState;
}

/// @nodoc
abstract class $LoadingResumesUserStateCopyWith<$Res> {
  factory $LoadingResumesUserStateCopyWith(LoadingResumesUserState value,
          $Res Function(LoadingResumesUserState) then) =
      _$LoadingResumesUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingResumesUserStateCopyWithImpl<$Res>
    extends _$ResumesUserStateCopyWithImpl<$Res>
    implements $LoadingResumesUserStateCopyWith<$Res> {
  _$LoadingResumesUserStateCopyWithImpl(LoadingResumesUserState _value,
      $Res Function(LoadingResumesUserState) _then)
      : super(_value, (v) => _then(v as LoadingResumesUserState));

  @override
  LoadingResumesUserState get _value => super._value as LoadingResumesUserState;
}

/// @nodoc

class _$LoadingResumesUserState implements LoadingResumesUserState {
  const _$LoadingResumesUserState();

  @override
  String toString() {
    return 'ResumesUserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingResumesUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Resume> resumes, int id, String status,
            List<LocalResumeData> localResumesName)
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
    TResult Function(List<Resume> resumes, int id, String status,
            List<LocalResumeData> localResumesName)?
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
    required TResult Function(EmptyResumesUserState value) empty,
    required TResult Function(LoadingResumesUserState value) loading,
    required TResult Function(LoadedResumesUserState value) loaded,
    required TResult Function(ErrorResumesUserState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyResumesUserState value)? empty,
    TResult Function(LoadingResumesUserState value)? loading,
    TResult Function(LoadedResumesUserState value)? loaded,
    TResult Function(ErrorResumesUserState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingResumesUserState implements ResumesUserState {
  const factory LoadingResumesUserState() = _$LoadingResumesUserState;
}

/// @nodoc
abstract class $LoadedResumesUserStateCopyWith<$Res> {
  factory $LoadedResumesUserStateCopyWith(LoadedResumesUserState value,
          $Res Function(LoadedResumesUserState) then) =
      _$LoadedResumesUserStateCopyWithImpl<$Res>;
  $Res call(
      {List<Resume> resumes,
      int id,
      String status,
      List<LocalResumeData> localResumesName});
}

/// @nodoc
class _$LoadedResumesUserStateCopyWithImpl<$Res>
    extends _$ResumesUserStateCopyWithImpl<$Res>
    implements $LoadedResumesUserStateCopyWith<$Res> {
  _$LoadedResumesUserStateCopyWithImpl(LoadedResumesUserState _value,
      $Res Function(LoadedResumesUserState) _then)
      : super(_value, (v) => _then(v as LoadedResumesUserState));

  @override
  LoadedResumesUserState get _value => super._value as LoadedResumesUserState;

  @override
  $Res call({
    Object? resumes = freezed,
    Object? id = freezed,
    Object? status = freezed,
    Object? localResumesName = freezed,
  }) {
    return _then(LoadedResumesUserState(
      resumes: resumes == freezed
          ? _value.resumes
          : resumes // ignore: cast_nullable_to_non_nullable
              as List<Resume>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      localResumesName: localResumesName == freezed
          ? _value.localResumesName
          : localResumesName // ignore: cast_nullable_to_non_nullable
              as List<LocalResumeData>,
    ));
  }
}

/// @nodoc

class _$LoadedResumesUserState implements LoadedResumesUserState {
  const _$LoadedResumesUserState(
      {required this.resumes,
      required this.id,
      required this.status,
      required this.localResumesName});

  @override
  final List<Resume> resumes;
  @override
  final int id;
  @override
  final String status;
  @override
  final List<LocalResumeData> localResumesName;

  @override
  String toString() {
    return 'ResumesUserState.loaded(resumes: $resumes, id: $id, status: $status, localResumesName: $localResumesName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedResumesUserState &&
            (identical(other.resumes, resumes) ||
                const DeepCollectionEquality()
                    .equals(other.resumes, resumes)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.localResumesName, localResumesName) ||
                const DeepCollectionEquality()
                    .equals(other.localResumesName, localResumesName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(resumes) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(localResumesName);

  @JsonKey(ignore: true)
  @override
  $LoadedResumesUserStateCopyWith<LoadedResumesUserState> get copyWith =>
      _$LoadedResumesUserStateCopyWithImpl<LoadedResumesUserState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Resume> resumes, int id, String status,
            List<LocalResumeData> localResumesName)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(resumes, id, status, localResumesName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Resume> resumes, int id, String status,
            List<LocalResumeData> localResumesName)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(resumes, id, status, localResumesName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyResumesUserState value) empty,
    required TResult Function(LoadingResumesUserState value) loading,
    required TResult Function(LoadedResumesUserState value) loaded,
    required TResult Function(ErrorResumesUserState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyResumesUserState value)? empty,
    TResult Function(LoadingResumesUserState value)? loading,
    TResult Function(LoadedResumesUserState value)? loaded,
    TResult Function(ErrorResumesUserState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedResumesUserState implements ResumesUserState {
  const factory LoadedResumesUserState(
          {required List<Resume> resumes,
          required int id,
          required String status,
          required List<LocalResumeData> localResumesName}) =
      _$LoadedResumesUserState;

  List<Resume> get resumes => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<LocalResumeData> get localResumesName =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedResumesUserStateCopyWith<LoadedResumesUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorResumesUserStateCopyWith<$Res> {
  factory $ErrorResumesUserStateCopyWith(ErrorResumesUserState value,
          $Res Function(ErrorResumesUserState) then) =
      _$ErrorResumesUserStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorResumesUserStateCopyWithImpl<$Res>
    extends _$ResumesUserStateCopyWithImpl<$Res>
    implements $ErrorResumesUserStateCopyWith<$Res> {
  _$ErrorResumesUserStateCopyWithImpl(
      ErrorResumesUserState _value, $Res Function(ErrorResumesUserState) _then)
      : super(_value, (v) => _then(v as ErrorResumesUserState));

  @override
  ErrorResumesUserState get _value => super._value as ErrorResumesUserState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorResumesUserState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorResumesUserState implements ErrorResumesUserState {
  const _$ErrorResumesUserState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ResumesUserState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorResumesUserState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorResumesUserStateCopyWith<ErrorResumesUserState> get copyWith =>
      _$ErrorResumesUserStateCopyWithImpl<ErrorResumesUserState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Resume> resumes, int id, String status,
            List<LocalResumeData> localResumesName)
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
    TResult Function(List<Resume> resumes, int id, String status,
            List<LocalResumeData> localResumesName)?
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
    required TResult Function(EmptyResumesUserState value) empty,
    required TResult Function(LoadingResumesUserState value) loading,
    required TResult Function(LoadedResumesUserState value) loaded,
    required TResult Function(ErrorResumesUserState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyResumesUserState value)? empty,
    TResult Function(LoadingResumesUserState value)? loading,
    TResult Function(LoadedResumesUserState value)? loaded,
    TResult Function(ErrorResumesUserState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorResumesUserState implements ResumesUserState {
  const factory ErrorResumesUserState({required String message}) =
      _$ErrorResumesUserState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorResumesUserStateCopyWith<ErrorResumesUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
