// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'core_profile_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoreProfileUserEventTearOff {
  const _$CoreProfileUserEventTearOff();

  _GetDataCoreProfileUserEvent getData() {
    return const _GetDataCoreProfileUserEvent();
  }

  _OnSelectCoreProfileUserEvent onSelect(
      {required String title, required int id}) {
    return _OnSelectCoreProfileUserEvent(
      title: title,
      id: id,
    );
  }

  _AddContactCoreProfileUserEvent addContact(
      {required String name, required String url}) {
    return _AddContactCoreProfileUserEvent(
      name: name,
      url: url,
    );
  }

  _DeleteLocalResumeCoreProfileUserEvent deleteLocalResume({required int id}) {
    return _DeleteLocalResumeCoreProfileUserEvent(
      id: id,
    );
  }
}

/// @nodoc
const $CoreProfileUserEvent = _$CoreProfileUserEventTearOff();

/// @nodoc
mixin _$CoreProfileUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(String title, int id) onSelect,
    required TResult Function(String name, String url) addContact,
    required TResult Function(int id) deleteLocalResume,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(String title, int id)? onSelect,
    TResult Function(String name, String url)? addContact,
    TResult Function(int id)? deleteLocalResume,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDataCoreProfileUserEvent value) getData,
    required TResult Function(_OnSelectCoreProfileUserEvent value) onSelect,
    required TResult Function(_AddContactCoreProfileUserEvent value) addContact,
    required TResult Function(_DeleteLocalResumeCoreProfileUserEvent value)
        deleteLocalResume,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDataCoreProfileUserEvent value)? getData,
    TResult Function(_OnSelectCoreProfileUserEvent value)? onSelect,
    TResult Function(_AddContactCoreProfileUserEvent value)? addContact,
    TResult Function(_DeleteLocalResumeCoreProfileUserEvent value)?
        deleteLocalResume,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreProfileUserEventCopyWith<$Res> {
  factory $CoreProfileUserEventCopyWith(CoreProfileUserEvent value,
          $Res Function(CoreProfileUserEvent) then) =
      _$CoreProfileUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoreProfileUserEventCopyWithImpl<$Res>
    implements $CoreProfileUserEventCopyWith<$Res> {
  _$CoreProfileUserEventCopyWithImpl(this._value, this._then);

  final CoreProfileUserEvent _value;
  // ignore: unused_field
  final $Res Function(CoreProfileUserEvent) _then;
}

/// @nodoc
abstract class _$GetDataCoreProfileUserEventCopyWith<$Res> {
  factory _$GetDataCoreProfileUserEventCopyWith(
          _GetDataCoreProfileUserEvent value,
          $Res Function(_GetDataCoreProfileUserEvent) then) =
      __$GetDataCoreProfileUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetDataCoreProfileUserEventCopyWithImpl<$Res>
    extends _$CoreProfileUserEventCopyWithImpl<$Res>
    implements _$GetDataCoreProfileUserEventCopyWith<$Res> {
  __$GetDataCoreProfileUserEventCopyWithImpl(
      _GetDataCoreProfileUserEvent _value,
      $Res Function(_GetDataCoreProfileUserEvent) _then)
      : super(_value, (v) => _then(v as _GetDataCoreProfileUserEvent));

  @override
  _GetDataCoreProfileUserEvent get _value =>
      super._value as _GetDataCoreProfileUserEvent;
}

/// @nodoc

class _$_GetDataCoreProfileUserEvent implements _GetDataCoreProfileUserEvent {
  const _$_GetDataCoreProfileUserEvent();

  @override
  String toString() {
    return 'CoreProfileUserEvent.getData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetDataCoreProfileUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(String title, int id) onSelect,
    required TResult Function(String name, String url) addContact,
    required TResult Function(int id) deleteLocalResume,
  }) {
    return getData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(String title, int id)? onSelect,
    TResult Function(String name, String url)? addContact,
    TResult Function(int id)? deleteLocalResume,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDataCoreProfileUserEvent value) getData,
    required TResult Function(_OnSelectCoreProfileUserEvent value) onSelect,
    required TResult Function(_AddContactCoreProfileUserEvent value) addContact,
    required TResult Function(_DeleteLocalResumeCoreProfileUserEvent value)
        deleteLocalResume,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDataCoreProfileUserEvent value)? getData,
    TResult Function(_OnSelectCoreProfileUserEvent value)? onSelect,
    TResult Function(_AddContactCoreProfileUserEvent value)? addContact,
    TResult Function(_DeleteLocalResumeCoreProfileUserEvent value)?
        deleteLocalResume,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _GetDataCoreProfileUserEvent implements CoreProfileUserEvent {
  const factory _GetDataCoreProfileUserEvent() = _$_GetDataCoreProfileUserEvent;
}

/// @nodoc
abstract class _$OnSelectCoreProfileUserEventCopyWith<$Res> {
  factory _$OnSelectCoreProfileUserEventCopyWith(
          _OnSelectCoreProfileUserEvent value,
          $Res Function(_OnSelectCoreProfileUserEvent) then) =
      __$OnSelectCoreProfileUserEventCopyWithImpl<$Res>;
  $Res call({String title, int id});
}

/// @nodoc
class __$OnSelectCoreProfileUserEventCopyWithImpl<$Res>
    extends _$CoreProfileUserEventCopyWithImpl<$Res>
    implements _$OnSelectCoreProfileUserEventCopyWith<$Res> {
  __$OnSelectCoreProfileUserEventCopyWithImpl(
      _OnSelectCoreProfileUserEvent _value,
      $Res Function(_OnSelectCoreProfileUserEvent) _then)
      : super(_value, (v) => _then(v as _OnSelectCoreProfileUserEvent));

  @override
  _OnSelectCoreProfileUserEvent get _value =>
      super._value as _OnSelectCoreProfileUserEvent;

  @override
  $Res call({
    Object? title = freezed,
    Object? id = freezed,
  }) {
    return _then(_OnSelectCoreProfileUserEvent(
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

class _$_OnSelectCoreProfileUserEvent implements _OnSelectCoreProfileUserEvent {
  const _$_OnSelectCoreProfileUserEvent(
      {required this.title, required this.id});

  @override
  final String title;
  @override
  final int id;

  @override
  String toString() {
    return 'CoreProfileUserEvent.onSelect(title: $title, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnSelectCoreProfileUserEvent &&
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
  _$OnSelectCoreProfileUserEventCopyWith<_OnSelectCoreProfileUserEvent>
      get copyWith => __$OnSelectCoreProfileUserEventCopyWithImpl<
          _OnSelectCoreProfileUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(String title, int id) onSelect,
    required TResult Function(String name, String url) addContact,
    required TResult Function(int id) deleteLocalResume,
  }) {
    return onSelect(title, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(String title, int id)? onSelect,
    TResult Function(String name, String url)? addContact,
    TResult Function(int id)? deleteLocalResume,
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
    required TResult Function(_GetDataCoreProfileUserEvent value) getData,
    required TResult Function(_OnSelectCoreProfileUserEvent value) onSelect,
    required TResult Function(_AddContactCoreProfileUserEvent value) addContact,
    required TResult Function(_DeleteLocalResumeCoreProfileUserEvent value)
        deleteLocalResume,
  }) {
    return onSelect(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDataCoreProfileUserEvent value)? getData,
    TResult Function(_OnSelectCoreProfileUserEvent value)? onSelect,
    TResult Function(_AddContactCoreProfileUserEvent value)? addContact,
    TResult Function(_DeleteLocalResumeCoreProfileUserEvent value)?
        deleteLocalResume,
    required TResult orElse(),
  }) {
    if (onSelect != null) {
      return onSelect(this);
    }
    return orElse();
  }
}

abstract class _OnSelectCoreProfileUserEvent implements CoreProfileUserEvent {
  const factory _OnSelectCoreProfileUserEvent(
      {required String title,
      required int id}) = _$_OnSelectCoreProfileUserEvent;

  String get title => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnSelectCoreProfileUserEventCopyWith<_OnSelectCoreProfileUserEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddContactCoreProfileUserEventCopyWith<$Res> {
  factory _$AddContactCoreProfileUserEventCopyWith(
          _AddContactCoreProfileUserEvent value,
          $Res Function(_AddContactCoreProfileUserEvent) then) =
      __$AddContactCoreProfileUserEventCopyWithImpl<$Res>;
  $Res call({String name, String url});
}

/// @nodoc
class __$AddContactCoreProfileUserEventCopyWithImpl<$Res>
    extends _$CoreProfileUserEventCopyWithImpl<$Res>
    implements _$AddContactCoreProfileUserEventCopyWith<$Res> {
  __$AddContactCoreProfileUserEventCopyWithImpl(
      _AddContactCoreProfileUserEvent _value,
      $Res Function(_AddContactCoreProfileUserEvent) _then)
      : super(_value, (v) => _then(v as _AddContactCoreProfileUserEvent));

  @override
  _AddContactCoreProfileUserEvent get _value =>
      super._value as _AddContactCoreProfileUserEvent;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_AddContactCoreProfileUserEvent(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddContactCoreProfileUserEvent
    implements _AddContactCoreProfileUserEvent {
  const _$_AddContactCoreProfileUserEvent(
      {required this.name, required this.url});

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'CoreProfileUserEvent.addContact(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddContactCoreProfileUserEvent &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$AddContactCoreProfileUserEventCopyWith<_AddContactCoreProfileUserEvent>
      get copyWith => __$AddContactCoreProfileUserEventCopyWithImpl<
          _AddContactCoreProfileUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(String title, int id) onSelect,
    required TResult Function(String name, String url) addContact,
    required TResult Function(int id) deleteLocalResume,
  }) {
    return addContact(name, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(String title, int id)? onSelect,
    TResult Function(String name, String url)? addContact,
    TResult Function(int id)? deleteLocalResume,
    required TResult orElse(),
  }) {
    if (addContact != null) {
      return addContact(name, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDataCoreProfileUserEvent value) getData,
    required TResult Function(_OnSelectCoreProfileUserEvent value) onSelect,
    required TResult Function(_AddContactCoreProfileUserEvent value) addContact,
    required TResult Function(_DeleteLocalResumeCoreProfileUserEvent value)
        deleteLocalResume,
  }) {
    return addContact(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDataCoreProfileUserEvent value)? getData,
    TResult Function(_OnSelectCoreProfileUserEvent value)? onSelect,
    TResult Function(_AddContactCoreProfileUserEvent value)? addContact,
    TResult Function(_DeleteLocalResumeCoreProfileUserEvent value)?
        deleteLocalResume,
    required TResult orElse(),
  }) {
    if (addContact != null) {
      return addContact(this);
    }
    return orElse();
  }
}

abstract class _AddContactCoreProfileUserEvent implements CoreProfileUserEvent {
  const factory _AddContactCoreProfileUserEvent(
      {required String name,
      required String url}) = _$_AddContactCoreProfileUserEvent;

  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddContactCoreProfileUserEventCopyWith<_AddContactCoreProfileUserEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteLocalResumeCoreProfileUserEventCopyWith<$Res> {
  factory _$DeleteLocalResumeCoreProfileUserEventCopyWith(
          _DeleteLocalResumeCoreProfileUserEvent value,
          $Res Function(_DeleteLocalResumeCoreProfileUserEvent) then) =
      __$DeleteLocalResumeCoreProfileUserEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$DeleteLocalResumeCoreProfileUserEventCopyWithImpl<$Res>
    extends _$CoreProfileUserEventCopyWithImpl<$Res>
    implements _$DeleteLocalResumeCoreProfileUserEventCopyWith<$Res> {
  __$DeleteLocalResumeCoreProfileUserEventCopyWithImpl(
      _DeleteLocalResumeCoreProfileUserEvent _value,
      $Res Function(_DeleteLocalResumeCoreProfileUserEvent) _then)
      : super(
            _value, (v) => _then(v as _DeleteLocalResumeCoreProfileUserEvent));

  @override
  _DeleteLocalResumeCoreProfileUserEvent get _value =>
      super._value as _DeleteLocalResumeCoreProfileUserEvent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_DeleteLocalResumeCoreProfileUserEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteLocalResumeCoreProfileUserEvent
    implements _DeleteLocalResumeCoreProfileUserEvent {
  const _$_DeleteLocalResumeCoreProfileUserEvent({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CoreProfileUserEvent.deleteLocalResume(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteLocalResumeCoreProfileUserEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$DeleteLocalResumeCoreProfileUserEventCopyWith<
          _DeleteLocalResumeCoreProfileUserEvent>
      get copyWith => __$DeleteLocalResumeCoreProfileUserEventCopyWithImpl<
          _DeleteLocalResumeCoreProfileUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(String title, int id) onSelect,
    required TResult Function(String name, String url) addContact,
    required TResult Function(int id) deleteLocalResume,
  }) {
    return deleteLocalResume(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(String title, int id)? onSelect,
    TResult Function(String name, String url)? addContact,
    TResult Function(int id)? deleteLocalResume,
    required TResult orElse(),
  }) {
    if (deleteLocalResume != null) {
      return deleteLocalResume(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDataCoreProfileUserEvent value) getData,
    required TResult Function(_OnSelectCoreProfileUserEvent value) onSelect,
    required TResult Function(_AddContactCoreProfileUserEvent value) addContact,
    required TResult Function(_DeleteLocalResumeCoreProfileUserEvent value)
        deleteLocalResume,
  }) {
    return deleteLocalResume(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDataCoreProfileUserEvent value)? getData,
    TResult Function(_OnSelectCoreProfileUserEvent value)? onSelect,
    TResult Function(_AddContactCoreProfileUserEvent value)? addContact,
    TResult Function(_DeleteLocalResumeCoreProfileUserEvent value)?
        deleteLocalResume,
    required TResult orElse(),
  }) {
    if (deleteLocalResume != null) {
      return deleteLocalResume(this);
    }
    return orElse();
  }
}

abstract class _DeleteLocalResumeCoreProfileUserEvent
    implements CoreProfileUserEvent {
  const factory _DeleteLocalResumeCoreProfileUserEvent({required int id}) =
      _$_DeleteLocalResumeCoreProfileUserEvent;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteLocalResumeCoreProfileUserEventCopyWith<
          _DeleteLocalResumeCoreProfileUserEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CoreProfileUserStateTearOff {
  const _$CoreProfileUserStateTearOff();

  EmptyCoreProfileUserState empty() {
    return const EmptyCoreProfileUserState();
  }

  LoadingCoreProfileUserState loading() {
    return const LoadingCoreProfileUserState();
  }

  AttributesCoreProfileUserState attributes(
      {required List<ContactUser> contacts,
      required LocalResumeData resume,
      required int vacancyId,
      required List<Category> categories,
      required FormzStatus status}) {
    return AttributesCoreProfileUserState(
      contacts: contacts,
      resume: resume,
      vacancyId: vacancyId,
      categories: categories,
      status: status,
    );
  }

  ErrorCoreProfileUserState error({required String message}) {
    return ErrorCoreProfileUserState(
      message: message,
    );
  }
}

/// @nodoc
const $CoreProfileUserState = _$CoreProfileUserStateTearOff();

/// @nodoc
mixin _$CoreProfileUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<ContactUser> contacts,
            LocalResumeData resume,
            int vacancyId,
            List<Category> categories,
            FormzStatus status)
        attributes,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<ContactUser> contacts, LocalResumeData resume,
            int vacancyId, List<Category> categories, FormzStatus status)?
        attributes,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyCoreProfileUserState value) empty,
    required TResult Function(LoadingCoreProfileUserState value) loading,
    required TResult Function(AttributesCoreProfileUserState value) attributes,
    required TResult Function(ErrorCoreProfileUserState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoreProfileUserState value)? empty,
    TResult Function(LoadingCoreProfileUserState value)? loading,
    TResult Function(AttributesCoreProfileUserState value)? attributes,
    TResult Function(ErrorCoreProfileUserState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreProfileUserStateCopyWith<$Res> {
  factory $CoreProfileUserStateCopyWith(CoreProfileUserState value,
          $Res Function(CoreProfileUserState) then) =
      _$CoreProfileUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoreProfileUserStateCopyWithImpl<$Res>
    implements $CoreProfileUserStateCopyWith<$Res> {
  _$CoreProfileUserStateCopyWithImpl(this._value, this._then);

  final CoreProfileUserState _value;
  // ignore: unused_field
  final $Res Function(CoreProfileUserState) _then;
}

/// @nodoc
abstract class $EmptyCoreProfileUserStateCopyWith<$Res> {
  factory $EmptyCoreProfileUserStateCopyWith(EmptyCoreProfileUserState value,
          $Res Function(EmptyCoreProfileUserState) then) =
      _$EmptyCoreProfileUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyCoreProfileUserStateCopyWithImpl<$Res>
    extends _$CoreProfileUserStateCopyWithImpl<$Res>
    implements $EmptyCoreProfileUserStateCopyWith<$Res> {
  _$EmptyCoreProfileUserStateCopyWithImpl(EmptyCoreProfileUserState _value,
      $Res Function(EmptyCoreProfileUserState) _then)
      : super(_value, (v) => _then(v as EmptyCoreProfileUserState));

  @override
  EmptyCoreProfileUserState get _value =>
      super._value as EmptyCoreProfileUserState;
}

/// @nodoc

class _$EmptyCoreProfileUserState implements EmptyCoreProfileUserState {
  const _$EmptyCoreProfileUserState();

  @override
  String toString() {
    return 'CoreProfileUserState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyCoreProfileUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<ContactUser> contacts,
            LocalResumeData resume,
            int vacancyId,
            List<Category> categories,
            FormzStatus status)
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
    TResult Function(List<ContactUser> contacts, LocalResumeData resume,
            int vacancyId, List<Category> categories, FormzStatus status)?
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
    required TResult Function(EmptyCoreProfileUserState value) empty,
    required TResult Function(LoadingCoreProfileUserState value) loading,
    required TResult Function(AttributesCoreProfileUserState value) attributes,
    required TResult Function(ErrorCoreProfileUserState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoreProfileUserState value)? empty,
    TResult Function(LoadingCoreProfileUserState value)? loading,
    TResult Function(AttributesCoreProfileUserState value)? attributes,
    TResult Function(ErrorCoreProfileUserState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyCoreProfileUserState implements CoreProfileUserState {
  const factory EmptyCoreProfileUserState() = _$EmptyCoreProfileUserState;
}

/// @nodoc
abstract class $LoadingCoreProfileUserStateCopyWith<$Res> {
  factory $LoadingCoreProfileUserStateCopyWith(
          LoadingCoreProfileUserState value,
          $Res Function(LoadingCoreProfileUserState) then) =
      _$LoadingCoreProfileUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCoreProfileUserStateCopyWithImpl<$Res>
    extends _$CoreProfileUserStateCopyWithImpl<$Res>
    implements $LoadingCoreProfileUserStateCopyWith<$Res> {
  _$LoadingCoreProfileUserStateCopyWithImpl(LoadingCoreProfileUserState _value,
      $Res Function(LoadingCoreProfileUserState) _then)
      : super(_value, (v) => _then(v as LoadingCoreProfileUserState));

  @override
  LoadingCoreProfileUserState get _value =>
      super._value as LoadingCoreProfileUserState;
}

/// @nodoc

class _$LoadingCoreProfileUserState implements LoadingCoreProfileUserState {
  const _$LoadingCoreProfileUserState();

  @override
  String toString() {
    return 'CoreProfileUserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingCoreProfileUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<ContactUser> contacts,
            LocalResumeData resume,
            int vacancyId,
            List<Category> categories,
            FormzStatus status)
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
    TResult Function(List<ContactUser> contacts, LocalResumeData resume,
            int vacancyId, List<Category> categories, FormzStatus status)?
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
    required TResult Function(EmptyCoreProfileUserState value) empty,
    required TResult Function(LoadingCoreProfileUserState value) loading,
    required TResult Function(AttributesCoreProfileUserState value) attributes,
    required TResult Function(ErrorCoreProfileUserState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoreProfileUserState value)? empty,
    TResult Function(LoadingCoreProfileUserState value)? loading,
    TResult Function(AttributesCoreProfileUserState value)? attributes,
    TResult Function(ErrorCoreProfileUserState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingCoreProfileUserState implements CoreProfileUserState {
  const factory LoadingCoreProfileUserState() = _$LoadingCoreProfileUserState;
}

/// @nodoc
abstract class $AttributesCoreProfileUserStateCopyWith<$Res> {
  factory $AttributesCoreProfileUserStateCopyWith(
          AttributesCoreProfileUserState value,
          $Res Function(AttributesCoreProfileUserState) then) =
      _$AttributesCoreProfileUserStateCopyWithImpl<$Res>;
  $Res call(
      {List<ContactUser> contacts,
      LocalResumeData resume,
      int vacancyId,
      List<Category> categories,
      FormzStatus status});
}

/// @nodoc
class _$AttributesCoreProfileUserStateCopyWithImpl<$Res>
    extends _$CoreProfileUserStateCopyWithImpl<$Res>
    implements $AttributesCoreProfileUserStateCopyWith<$Res> {
  _$AttributesCoreProfileUserStateCopyWithImpl(
      AttributesCoreProfileUserState _value,
      $Res Function(AttributesCoreProfileUserState) _then)
      : super(_value, (v) => _then(v as AttributesCoreProfileUserState));

  @override
  AttributesCoreProfileUserState get _value =>
      super._value as AttributesCoreProfileUserState;

  @override
  $Res call({
    Object? contacts = freezed,
    Object? resume = freezed,
    Object? vacancyId = freezed,
    Object? categories = freezed,
    Object? status = freezed,
  }) {
    return _then(AttributesCoreProfileUserState(
      contacts: contacts == freezed
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<ContactUser>,
      resume: resume == freezed
          ? _value.resume
          : resume // ignore: cast_nullable_to_non_nullable
              as LocalResumeData,
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

class _$AttributesCoreProfileUserState
    implements AttributesCoreProfileUserState {
  const _$AttributesCoreProfileUserState(
      {required this.contacts,
      required this.resume,
      required this.vacancyId,
      required this.categories,
      required this.status});

  @override
  final List<ContactUser> contacts;
  @override
  final LocalResumeData resume;
  @override
  final int vacancyId;
  @override
  final List<Category> categories;
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'CoreProfileUserState.attributes(contacts: $contacts, resume: $resume, vacancyId: $vacancyId, categories: $categories, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AttributesCoreProfileUserState &&
            (identical(other.contacts, contacts) ||
                const DeepCollectionEquality()
                    .equals(other.contacts, contacts)) &&
            (identical(other.resume, resume) ||
                const DeepCollectionEquality().equals(other.resume, resume)) &&
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
      const DeepCollectionEquality().hash(contacts) ^
      const DeepCollectionEquality().hash(resume) ^
      const DeepCollectionEquality().hash(vacancyId) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $AttributesCoreProfileUserStateCopyWith<AttributesCoreProfileUserState>
      get copyWith => _$AttributesCoreProfileUserStateCopyWithImpl<
          AttributesCoreProfileUserState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<ContactUser> contacts,
            LocalResumeData resume,
            int vacancyId,
            List<Category> categories,
            FormzStatus status)
        attributes,
    required TResult Function(String message) error,
  }) {
    return attributes(contacts, resume, vacancyId, categories, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<ContactUser> contacts, LocalResumeData resume,
            int vacancyId, List<Category> categories, FormzStatus status)?
        attributes,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (attributes != null) {
      return attributes(contacts, resume, vacancyId, categories, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyCoreProfileUserState value) empty,
    required TResult Function(LoadingCoreProfileUserState value) loading,
    required TResult Function(AttributesCoreProfileUserState value) attributes,
    required TResult Function(ErrorCoreProfileUserState value) error,
  }) {
    return attributes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoreProfileUserState value)? empty,
    TResult Function(LoadingCoreProfileUserState value)? loading,
    TResult Function(AttributesCoreProfileUserState value)? attributes,
    TResult Function(ErrorCoreProfileUserState value)? error,
    required TResult orElse(),
  }) {
    if (attributes != null) {
      return attributes(this);
    }
    return orElse();
  }
}

abstract class AttributesCoreProfileUserState implements CoreProfileUserState {
  const factory AttributesCoreProfileUserState(
      {required List<ContactUser> contacts,
      required LocalResumeData resume,
      required int vacancyId,
      required List<Category> categories,
      required FormzStatus status}) = _$AttributesCoreProfileUserState;

  List<ContactUser> get contacts => throw _privateConstructorUsedError;
  LocalResumeData get resume => throw _privateConstructorUsedError;
  int get vacancyId => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributesCoreProfileUserStateCopyWith<AttributesCoreProfileUserState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCoreProfileUserStateCopyWith<$Res> {
  factory $ErrorCoreProfileUserStateCopyWith(ErrorCoreProfileUserState value,
          $Res Function(ErrorCoreProfileUserState) then) =
      _$ErrorCoreProfileUserStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorCoreProfileUserStateCopyWithImpl<$Res>
    extends _$CoreProfileUserStateCopyWithImpl<$Res>
    implements $ErrorCoreProfileUserStateCopyWith<$Res> {
  _$ErrorCoreProfileUserStateCopyWithImpl(ErrorCoreProfileUserState _value,
      $Res Function(ErrorCoreProfileUserState) _then)
      : super(_value, (v) => _then(v as ErrorCoreProfileUserState));

  @override
  ErrorCoreProfileUserState get _value =>
      super._value as ErrorCoreProfileUserState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorCoreProfileUserState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorCoreProfileUserState implements ErrorCoreProfileUserState {
  const _$ErrorCoreProfileUserState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CoreProfileUserState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorCoreProfileUserState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorCoreProfileUserStateCopyWith<ErrorCoreProfileUserState> get copyWith =>
      _$ErrorCoreProfileUserStateCopyWithImpl<ErrorCoreProfileUserState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<ContactUser> contacts,
            LocalResumeData resume,
            int vacancyId,
            List<Category> categories,
            FormzStatus status)
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
    TResult Function(List<ContactUser> contacts, LocalResumeData resume,
            int vacancyId, List<Category> categories, FormzStatus status)?
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
    required TResult Function(EmptyCoreProfileUserState value) empty,
    required TResult Function(LoadingCoreProfileUserState value) loading,
    required TResult Function(AttributesCoreProfileUserState value) attributes,
    required TResult Function(ErrorCoreProfileUserState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoreProfileUserState value)? empty,
    TResult Function(LoadingCoreProfileUserState value)? loading,
    TResult Function(AttributesCoreProfileUserState value)? attributes,
    TResult Function(ErrorCoreProfileUserState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorCoreProfileUserState implements CoreProfileUserState {
  const factory ErrorCoreProfileUserState({required String message}) =
      _$ErrorCoreProfileUserState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCoreProfileUserStateCopyWith<ErrorCoreProfileUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
