// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_company_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileCompanyEventTearOff {
  const _$ProfileCompanyEventTearOff();

  _GetProfileCompanyEvent getProfileData() {
    return const _GetProfileCompanyEvent();
  }

  _UploadAvatarProfileCompanyEvent uploadAvatar({required String path}) {
    return _UploadAvatarProfileCompanyEvent(
      path: path,
    );
  }

  _AddContactProfileCompanyEvent addContact(
      {required String name, required String url}) {
    return _AddContactProfileCompanyEvent(
      name: name,
      url: url,
    );
  }

  _DeleteContactProfileCompanyEvent deleteContact({required int id}) {
    return _DeleteContactProfileCompanyEvent(
      id: id,
    );
  }
}

/// @nodoc
const $ProfileCompanyEvent = _$ProfileCompanyEventTearOff();

/// @nodoc
mixin _$ProfileCompanyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfileData,
    required TResult Function(String path) uploadAvatar,
    required TResult Function(String name, String url) addContact,
    required TResult Function(int id) deleteContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileData,
    TResult Function(String path)? uploadAvatar,
    TResult Function(String name, String url)? addContact,
    TResult Function(int id)? deleteContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileCompanyEvent value) getProfileData,
    required TResult Function(_UploadAvatarProfileCompanyEvent value)
        uploadAvatar,
    required TResult Function(_AddContactProfileCompanyEvent value) addContact,
    required TResult Function(_DeleteContactProfileCompanyEvent value)
        deleteContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileCompanyEvent value)? getProfileData,
    TResult Function(_UploadAvatarProfileCompanyEvent value)? uploadAvatar,
    TResult Function(_AddContactProfileCompanyEvent value)? addContact,
    TResult Function(_DeleteContactProfileCompanyEvent value)? deleteContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCompanyEventCopyWith<$Res> {
  factory $ProfileCompanyEventCopyWith(
          ProfileCompanyEvent value, $Res Function(ProfileCompanyEvent) then) =
      _$ProfileCompanyEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileCompanyEventCopyWithImpl<$Res>
    implements $ProfileCompanyEventCopyWith<$Res> {
  _$ProfileCompanyEventCopyWithImpl(this._value, this._then);

  final ProfileCompanyEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileCompanyEvent) _then;
}

/// @nodoc
abstract class _$GetProfileCompanyEventCopyWith<$Res> {
  factory _$GetProfileCompanyEventCopyWith(_GetProfileCompanyEvent value,
          $Res Function(_GetProfileCompanyEvent) then) =
      __$GetProfileCompanyEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetProfileCompanyEventCopyWithImpl<$Res>
    extends _$ProfileCompanyEventCopyWithImpl<$Res>
    implements _$GetProfileCompanyEventCopyWith<$Res> {
  __$GetProfileCompanyEventCopyWithImpl(_GetProfileCompanyEvent _value,
      $Res Function(_GetProfileCompanyEvent) _then)
      : super(_value, (v) => _then(v as _GetProfileCompanyEvent));

  @override
  _GetProfileCompanyEvent get _value => super._value as _GetProfileCompanyEvent;
}

/// @nodoc

class _$_GetProfileCompanyEvent implements _GetProfileCompanyEvent {
  const _$_GetProfileCompanyEvent();

  @override
  String toString() {
    return 'ProfileCompanyEvent.getProfileData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetProfileCompanyEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfileData,
    required TResult Function(String path) uploadAvatar,
    required TResult Function(String name, String url) addContact,
    required TResult Function(int id) deleteContact,
  }) {
    return getProfileData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileData,
    TResult Function(String path)? uploadAvatar,
    TResult Function(String name, String url)? addContact,
    TResult Function(int id)? deleteContact,
    required TResult orElse(),
  }) {
    if (getProfileData != null) {
      return getProfileData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileCompanyEvent value) getProfileData,
    required TResult Function(_UploadAvatarProfileCompanyEvent value)
        uploadAvatar,
    required TResult Function(_AddContactProfileCompanyEvent value) addContact,
    required TResult Function(_DeleteContactProfileCompanyEvent value)
        deleteContact,
  }) {
    return getProfileData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileCompanyEvent value)? getProfileData,
    TResult Function(_UploadAvatarProfileCompanyEvent value)? uploadAvatar,
    TResult Function(_AddContactProfileCompanyEvent value)? addContact,
    TResult Function(_DeleteContactProfileCompanyEvent value)? deleteContact,
    required TResult orElse(),
  }) {
    if (getProfileData != null) {
      return getProfileData(this);
    }
    return orElse();
  }
}

abstract class _GetProfileCompanyEvent implements ProfileCompanyEvent {
  const factory _GetProfileCompanyEvent() = _$_GetProfileCompanyEvent;
}

/// @nodoc
abstract class _$UploadAvatarProfileCompanyEventCopyWith<$Res> {
  factory _$UploadAvatarProfileCompanyEventCopyWith(
          _UploadAvatarProfileCompanyEvent value,
          $Res Function(_UploadAvatarProfileCompanyEvent) then) =
      __$UploadAvatarProfileCompanyEventCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class __$UploadAvatarProfileCompanyEventCopyWithImpl<$Res>
    extends _$ProfileCompanyEventCopyWithImpl<$Res>
    implements _$UploadAvatarProfileCompanyEventCopyWith<$Res> {
  __$UploadAvatarProfileCompanyEventCopyWithImpl(
      _UploadAvatarProfileCompanyEvent _value,
      $Res Function(_UploadAvatarProfileCompanyEvent) _then)
      : super(_value, (v) => _then(v as _UploadAvatarProfileCompanyEvent));

  @override
  _UploadAvatarProfileCompanyEvent get _value =>
      super._value as _UploadAvatarProfileCompanyEvent;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(_UploadAvatarProfileCompanyEvent(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UploadAvatarProfileCompanyEvent
    implements _UploadAvatarProfileCompanyEvent {
  const _$_UploadAvatarProfileCompanyEvent({required this.path});

  @override
  final String path;

  @override
  String toString() {
    return 'ProfileCompanyEvent.uploadAvatar(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadAvatarProfileCompanyEvent &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(path);

  @JsonKey(ignore: true)
  @override
  _$UploadAvatarProfileCompanyEventCopyWith<_UploadAvatarProfileCompanyEvent>
      get copyWith => __$UploadAvatarProfileCompanyEventCopyWithImpl<
          _UploadAvatarProfileCompanyEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfileData,
    required TResult Function(String path) uploadAvatar,
    required TResult Function(String name, String url) addContact,
    required TResult Function(int id) deleteContact,
  }) {
    return uploadAvatar(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileData,
    TResult Function(String path)? uploadAvatar,
    TResult Function(String name, String url)? addContact,
    TResult Function(int id)? deleteContact,
    required TResult orElse(),
  }) {
    if (uploadAvatar != null) {
      return uploadAvatar(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileCompanyEvent value) getProfileData,
    required TResult Function(_UploadAvatarProfileCompanyEvent value)
        uploadAvatar,
    required TResult Function(_AddContactProfileCompanyEvent value) addContact,
    required TResult Function(_DeleteContactProfileCompanyEvent value)
        deleteContact,
  }) {
    return uploadAvatar(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileCompanyEvent value)? getProfileData,
    TResult Function(_UploadAvatarProfileCompanyEvent value)? uploadAvatar,
    TResult Function(_AddContactProfileCompanyEvent value)? addContact,
    TResult Function(_DeleteContactProfileCompanyEvent value)? deleteContact,
    required TResult orElse(),
  }) {
    if (uploadAvatar != null) {
      return uploadAvatar(this);
    }
    return orElse();
  }
}

abstract class _UploadAvatarProfileCompanyEvent implements ProfileCompanyEvent {
  const factory _UploadAvatarProfileCompanyEvent({required String path}) =
      _$_UploadAvatarProfileCompanyEvent;

  String get path => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UploadAvatarProfileCompanyEventCopyWith<_UploadAvatarProfileCompanyEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddContactProfileCompanyEventCopyWith<$Res> {
  factory _$AddContactProfileCompanyEventCopyWith(
          _AddContactProfileCompanyEvent value,
          $Res Function(_AddContactProfileCompanyEvent) then) =
      __$AddContactProfileCompanyEventCopyWithImpl<$Res>;
  $Res call({String name, String url});
}

/// @nodoc
class __$AddContactProfileCompanyEventCopyWithImpl<$Res>
    extends _$ProfileCompanyEventCopyWithImpl<$Res>
    implements _$AddContactProfileCompanyEventCopyWith<$Res> {
  __$AddContactProfileCompanyEventCopyWithImpl(
      _AddContactProfileCompanyEvent _value,
      $Res Function(_AddContactProfileCompanyEvent) _then)
      : super(_value, (v) => _then(v as _AddContactProfileCompanyEvent));

  @override
  _AddContactProfileCompanyEvent get _value =>
      super._value as _AddContactProfileCompanyEvent;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_AddContactProfileCompanyEvent(
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

class _$_AddContactProfileCompanyEvent
    implements _AddContactProfileCompanyEvent {
  const _$_AddContactProfileCompanyEvent(
      {required this.name, required this.url});

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'ProfileCompanyEvent.addContact(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddContactProfileCompanyEvent &&
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
  _$AddContactProfileCompanyEventCopyWith<_AddContactProfileCompanyEvent>
      get copyWith => __$AddContactProfileCompanyEventCopyWithImpl<
          _AddContactProfileCompanyEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfileData,
    required TResult Function(String path) uploadAvatar,
    required TResult Function(String name, String url) addContact,
    required TResult Function(int id) deleteContact,
  }) {
    return addContact(name, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileData,
    TResult Function(String path)? uploadAvatar,
    TResult Function(String name, String url)? addContact,
    TResult Function(int id)? deleteContact,
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
    required TResult Function(_GetProfileCompanyEvent value) getProfileData,
    required TResult Function(_UploadAvatarProfileCompanyEvent value)
        uploadAvatar,
    required TResult Function(_AddContactProfileCompanyEvent value) addContact,
    required TResult Function(_DeleteContactProfileCompanyEvent value)
        deleteContact,
  }) {
    return addContact(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileCompanyEvent value)? getProfileData,
    TResult Function(_UploadAvatarProfileCompanyEvent value)? uploadAvatar,
    TResult Function(_AddContactProfileCompanyEvent value)? addContact,
    TResult Function(_DeleteContactProfileCompanyEvent value)? deleteContact,
    required TResult orElse(),
  }) {
    if (addContact != null) {
      return addContact(this);
    }
    return orElse();
  }
}

abstract class _AddContactProfileCompanyEvent implements ProfileCompanyEvent {
  const factory _AddContactProfileCompanyEvent(
      {required String name,
      required String url}) = _$_AddContactProfileCompanyEvent;

  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddContactProfileCompanyEventCopyWith<_AddContactProfileCompanyEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteContactProfileCompanyEventCopyWith<$Res> {
  factory _$DeleteContactProfileCompanyEventCopyWith(
          _DeleteContactProfileCompanyEvent value,
          $Res Function(_DeleteContactProfileCompanyEvent) then) =
      __$DeleteContactProfileCompanyEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$DeleteContactProfileCompanyEventCopyWithImpl<$Res>
    extends _$ProfileCompanyEventCopyWithImpl<$Res>
    implements _$DeleteContactProfileCompanyEventCopyWith<$Res> {
  __$DeleteContactProfileCompanyEventCopyWithImpl(
      _DeleteContactProfileCompanyEvent _value,
      $Res Function(_DeleteContactProfileCompanyEvent) _then)
      : super(_value, (v) => _then(v as _DeleteContactProfileCompanyEvent));

  @override
  _DeleteContactProfileCompanyEvent get _value =>
      super._value as _DeleteContactProfileCompanyEvent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_DeleteContactProfileCompanyEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteContactProfileCompanyEvent
    implements _DeleteContactProfileCompanyEvent {
  const _$_DeleteContactProfileCompanyEvent({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ProfileCompanyEvent.deleteContact(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteContactProfileCompanyEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$DeleteContactProfileCompanyEventCopyWith<_DeleteContactProfileCompanyEvent>
      get copyWith => __$DeleteContactProfileCompanyEventCopyWithImpl<
          _DeleteContactProfileCompanyEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfileData,
    required TResult Function(String path) uploadAvatar,
    required TResult Function(String name, String url) addContact,
    required TResult Function(int id) deleteContact,
  }) {
    return deleteContact(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileData,
    TResult Function(String path)? uploadAvatar,
    TResult Function(String name, String url)? addContact,
    TResult Function(int id)? deleteContact,
    required TResult orElse(),
  }) {
    if (deleteContact != null) {
      return deleteContact(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileCompanyEvent value) getProfileData,
    required TResult Function(_UploadAvatarProfileCompanyEvent value)
        uploadAvatar,
    required TResult Function(_AddContactProfileCompanyEvent value) addContact,
    required TResult Function(_DeleteContactProfileCompanyEvent value)
        deleteContact,
  }) {
    return deleteContact(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileCompanyEvent value)? getProfileData,
    TResult Function(_UploadAvatarProfileCompanyEvent value)? uploadAvatar,
    TResult Function(_AddContactProfileCompanyEvent value)? addContact,
    TResult Function(_DeleteContactProfileCompanyEvent value)? deleteContact,
    required TResult orElse(),
  }) {
    if (deleteContact != null) {
      return deleteContact(this);
    }
    return orElse();
  }
}

abstract class _DeleteContactProfileCompanyEvent
    implements ProfileCompanyEvent {
  const factory _DeleteContactProfileCompanyEvent({required int id}) =
      _$_DeleteContactProfileCompanyEvent;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteContactProfileCompanyEventCopyWith<_DeleteContactProfileCompanyEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProfileCompanyStateTearOff {
  const _$ProfileCompanyStateTearOff();

  EmptyProfileCompanyState empty() {
    return const EmptyProfileCompanyState();
  }

  LoadingProfileCompanyState loading() {
    return const LoadingProfileCompanyState();
  }

  LoadedProfileCompanyState loaded(
      {required TypeProfileCompany profile, required String status}) {
    return LoadedProfileCompanyState(
      profile: profile,
      status: status,
    );
  }

  ErrorProfileCompanyState error({required String message}) {
    return ErrorProfileCompanyState(
      message: message,
    );
  }
}

/// @nodoc
const $ProfileCompanyState = _$ProfileCompanyStateTearOff();

/// @nodoc
mixin _$ProfileCompanyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(TypeProfileCompany profile, String status) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(TypeProfileCompany profile, String status)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyProfileCompanyState value) empty,
    required TResult Function(LoadingProfileCompanyState value) loading,
    required TResult Function(LoadedProfileCompanyState value) loaded,
    required TResult Function(ErrorProfileCompanyState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyProfileCompanyState value)? empty,
    TResult Function(LoadingProfileCompanyState value)? loading,
    TResult Function(LoadedProfileCompanyState value)? loaded,
    TResult Function(ErrorProfileCompanyState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCompanyStateCopyWith<$Res> {
  factory $ProfileCompanyStateCopyWith(
          ProfileCompanyState value, $Res Function(ProfileCompanyState) then) =
      _$ProfileCompanyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileCompanyStateCopyWithImpl<$Res>
    implements $ProfileCompanyStateCopyWith<$Res> {
  _$ProfileCompanyStateCopyWithImpl(this._value, this._then);

  final ProfileCompanyState _value;
  // ignore: unused_field
  final $Res Function(ProfileCompanyState) _then;
}

/// @nodoc
abstract class $EmptyProfileCompanyStateCopyWith<$Res> {
  factory $EmptyProfileCompanyStateCopyWith(EmptyProfileCompanyState value,
          $Res Function(EmptyProfileCompanyState) then) =
      _$EmptyProfileCompanyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyProfileCompanyStateCopyWithImpl<$Res>
    extends _$ProfileCompanyStateCopyWithImpl<$Res>
    implements $EmptyProfileCompanyStateCopyWith<$Res> {
  _$EmptyProfileCompanyStateCopyWithImpl(EmptyProfileCompanyState _value,
      $Res Function(EmptyProfileCompanyState) _then)
      : super(_value, (v) => _then(v as EmptyProfileCompanyState));

  @override
  EmptyProfileCompanyState get _value =>
      super._value as EmptyProfileCompanyState;
}

/// @nodoc

class _$EmptyProfileCompanyState implements EmptyProfileCompanyState {
  const _$EmptyProfileCompanyState();

  @override
  String toString() {
    return 'ProfileCompanyState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyProfileCompanyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(TypeProfileCompany profile, String status) loaded,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(TypeProfileCompany profile, String status)? loaded,
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
    required TResult Function(EmptyProfileCompanyState value) empty,
    required TResult Function(LoadingProfileCompanyState value) loading,
    required TResult Function(LoadedProfileCompanyState value) loaded,
    required TResult Function(ErrorProfileCompanyState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyProfileCompanyState value)? empty,
    TResult Function(LoadingProfileCompanyState value)? loading,
    TResult Function(LoadedProfileCompanyState value)? loaded,
    TResult Function(ErrorProfileCompanyState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyProfileCompanyState implements ProfileCompanyState {
  const factory EmptyProfileCompanyState() = _$EmptyProfileCompanyState;
}

/// @nodoc
abstract class $LoadingProfileCompanyStateCopyWith<$Res> {
  factory $LoadingProfileCompanyStateCopyWith(LoadingProfileCompanyState value,
          $Res Function(LoadingProfileCompanyState) then) =
      _$LoadingProfileCompanyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingProfileCompanyStateCopyWithImpl<$Res>
    extends _$ProfileCompanyStateCopyWithImpl<$Res>
    implements $LoadingProfileCompanyStateCopyWith<$Res> {
  _$LoadingProfileCompanyStateCopyWithImpl(LoadingProfileCompanyState _value,
      $Res Function(LoadingProfileCompanyState) _then)
      : super(_value, (v) => _then(v as LoadingProfileCompanyState));

  @override
  LoadingProfileCompanyState get _value =>
      super._value as LoadingProfileCompanyState;
}

/// @nodoc

class _$LoadingProfileCompanyState implements LoadingProfileCompanyState {
  const _$LoadingProfileCompanyState();

  @override
  String toString() {
    return 'ProfileCompanyState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingProfileCompanyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(TypeProfileCompany profile, String status) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(TypeProfileCompany profile, String status)? loaded,
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
    required TResult Function(EmptyProfileCompanyState value) empty,
    required TResult Function(LoadingProfileCompanyState value) loading,
    required TResult Function(LoadedProfileCompanyState value) loaded,
    required TResult Function(ErrorProfileCompanyState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyProfileCompanyState value)? empty,
    TResult Function(LoadingProfileCompanyState value)? loading,
    TResult Function(LoadedProfileCompanyState value)? loaded,
    TResult Function(ErrorProfileCompanyState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingProfileCompanyState implements ProfileCompanyState {
  const factory LoadingProfileCompanyState() = _$LoadingProfileCompanyState;
}

/// @nodoc
abstract class $LoadedProfileCompanyStateCopyWith<$Res> {
  factory $LoadedProfileCompanyStateCopyWith(LoadedProfileCompanyState value,
          $Res Function(LoadedProfileCompanyState) then) =
      _$LoadedProfileCompanyStateCopyWithImpl<$Res>;
  $Res call({TypeProfileCompany profile, String status});
}

/// @nodoc
class _$LoadedProfileCompanyStateCopyWithImpl<$Res>
    extends _$ProfileCompanyStateCopyWithImpl<$Res>
    implements $LoadedProfileCompanyStateCopyWith<$Res> {
  _$LoadedProfileCompanyStateCopyWithImpl(LoadedProfileCompanyState _value,
      $Res Function(LoadedProfileCompanyState) _then)
      : super(_value, (v) => _then(v as LoadedProfileCompanyState));

  @override
  LoadedProfileCompanyState get _value =>
      super._value as LoadedProfileCompanyState;

  @override
  $Res call({
    Object? profile = freezed,
    Object? status = freezed,
  }) {
    return _then(LoadedProfileCompanyState(
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as TypeProfileCompany,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedProfileCompanyState implements LoadedProfileCompanyState {
  const _$LoadedProfileCompanyState(
      {required this.profile, required this.status});

  @override
  final TypeProfileCompany profile;
  @override
  final String status;

  @override
  String toString() {
    return 'ProfileCompanyState.loaded(profile: $profile, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedProfileCompanyState &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $LoadedProfileCompanyStateCopyWith<LoadedProfileCompanyState> get copyWith =>
      _$LoadedProfileCompanyStateCopyWithImpl<LoadedProfileCompanyState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(TypeProfileCompany profile, String status) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(profile, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(TypeProfileCompany profile, String status)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(profile, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyProfileCompanyState value) empty,
    required TResult Function(LoadingProfileCompanyState value) loading,
    required TResult Function(LoadedProfileCompanyState value) loaded,
    required TResult Function(ErrorProfileCompanyState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyProfileCompanyState value)? empty,
    TResult Function(LoadingProfileCompanyState value)? loading,
    TResult Function(LoadedProfileCompanyState value)? loaded,
    TResult Function(ErrorProfileCompanyState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedProfileCompanyState implements ProfileCompanyState {
  const factory LoadedProfileCompanyState(
      {required TypeProfileCompany profile,
      required String status}) = _$LoadedProfileCompanyState;

  TypeProfileCompany get profile => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedProfileCompanyStateCopyWith<LoadedProfileCompanyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorProfileCompanyStateCopyWith<$Res> {
  factory $ErrorProfileCompanyStateCopyWith(ErrorProfileCompanyState value,
          $Res Function(ErrorProfileCompanyState) then) =
      _$ErrorProfileCompanyStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorProfileCompanyStateCopyWithImpl<$Res>
    extends _$ProfileCompanyStateCopyWithImpl<$Res>
    implements $ErrorProfileCompanyStateCopyWith<$Res> {
  _$ErrorProfileCompanyStateCopyWithImpl(ErrorProfileCompanyState _value,
      $Res Function(ErrorProfileCompanyState) _then)
      : super(_value, (v) => _then(v as ErrorProfileCompanyState));

  @override
  ErrorProfileCompanyState get _value =>
      super._value as ErrorProfileCompanyState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorProfileCompanyState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorProfileCompanyState implements ErrorProfileCompanyState {
  const _$ErrorProfileCompanyState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ProfileCompanyState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorProfileCompanyState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorProfileCompanyStateCopyWith<ErrorProfileCompanyState> get copyWith =>
      _$ErrorProfileCompanyStateCopyWithImpl<ErrorProfileCompanyState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(TypeProfileCompany profile, String status) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(TypeProfileCompany profile, String status)? loaded,
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
    required TResult Function(EmptyProfileCompanyState value) empty,
    required TResult Function(LoadingProfileCompanyState value) loading,
    required TResult Function(LoadedProfileCompanyState value) loaded,
    required TResult Function(ErrorProfileCompanyState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyProfileCompanyState value)? empty,
    TResult Function(LoadingProfileCompanyState value)? loading,
    TResult Function(LoadedProfileCompanyState value)? loaded,
    TResult Function(ErrorProfileCompanyState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorProfileCompanyState implements ProfileCompanyState {
  const factory ErrorProfileCompanyState({required String message}) =
      _$ErrorProfileCompanyState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorProfileCompanyStateCopyWith<ErrorProfileCompanyState> get copyWith =>
      throw _privateConstructorUsedError;
}
