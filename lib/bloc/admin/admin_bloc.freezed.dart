// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'admin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdminEventTearOff {
  const _$AdminEventTearOff();

  _GetDataAdminEvent getData() {
    return const _GetDataAdminEvent();
  }

  _AddCategoryAdminEvent addCategory(
      {required bool click, required String name}) {
    return _AddCategoryAdminEvent(
      click: click,
      name: name,
    );
  }

  _AddSphereAdminEvent addSphere({required bool click, required String name}) {
    return _AddSphereAdminEvent(
      click: click,
      name: name,
    );
  }

  _DeleteAdminEvent delete({required bool category, required String name}) {
    return _DeleteAdminEvent(
      category: category,
      name: name,
    );
  }

  _SetPriceAdminEvent setPrice({required String price}) {
    return _SetPriceAdminEvent(
      price: price,
    );
  }
}

/// @nodoc
const $AdminEvent = _$AdminEventTearOff();

/// @nodoc
mixin _$AdminEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(bool click, String name) addCategory,
    required TResult Function(bool click, String name) addSphere,
    required TResult Function(bool category, String name) delete,
    required TResult Function(String price) setPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(bool click, String name)? addCategory,
    TResult Function(bool click, String name)? addSphere,
    TResult Function(bool category, String name)? delete,
    TResult Function(String price)? setPrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDataAdminEvent value) getData,
    required TResult Function(_AddCategoryAdminEvent value) addCategory,
    required TResult Function(_AddSphereAdminEvent value) addSphere,
    required TResult Function(_DeleteAdminEvent value) delete,
    required TResult Function(_SetPriceAdminEvent value) setPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDataAdminEvent value)? getData,
    TResult Function(_AddCategoryAdminEvent value)? addCategory,
    TResult Function(_AddSphereAdminEvent value)? addSphere,
    TResult Function(_DeleteAdminEvent value)? delete,
    TResult Function(_SetPriceAdminEvent value)? setPrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminEventCopyWith<$Res> {
  factory $AdminEventCopyWith(
          AdminEvent value, $Res Function(AdminEvent) then) =
      _$AdminEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdminEventCopyWithImpl<$Res> implements $AdminEventCopyWith<$Res> {
  _$AdminEventCopyWithImpl(this._value, this._then);

  final AdminEvent _value;
  // ignore: unused_field
  final $Res Function(AdminEvent) _then;
}

/// @nodoc
abstract class _$GetDataAdminEventCopyWith<$Res> {
  factory _$GetDataAdminEventCopyWith(
          _GetDataAdminEvent value, $Res Function(_GetDataAdminEvent) then) =
      __$GetDataAdminEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetDataAdminEventCopyWithImpl<$Res>
    extends _$AdminEventCopyWithImpl<$Res>
    implements _$GetDataAdminEventCopyWith<$Res> {
  __$GetDataAdminEventCopyWithImpl(
      _GetDataAdminEvent _value, $Res Function(_GetDataAdminEvent) _then)
      : super(_value, (v) => _then(v as _GetDataAdminEvent));

  @override
  _GetDataAdminEvent get _value => super._value as _GetDataAdminEvent;
}

/// @nodoc

class _$_GetDataAdminEvent implements _GetDataAdminEvent {
  const _$_GetDataAdminEvent();

  @override
  String toString() {
    return 'AdminEvent.getData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetDataAdminEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(bool click, String name) addCategory,
    required TResult Function(bool click, String name) addSphere,
    required TResult Function(bool category, String name) delete,
    required TResult Function(String price) setPrice,
  }) {
    return getData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(bool click, String name)? addCategory,
    TResult Function(bool click, String name)? addSphere,
    TResult Function(bool category, String name)? delete,
    TResult Function(String price)? setPrice,
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
    required TResult Function(_GetDataAdminEvent value) getData,
    required TResult Function(_AddCategoryAdminEvent value) addCategory,
    required TResult Function(_AddSphereAdminEvent value) addSphere,
    required TResult Function(_DeleteAdminEvent value) delete,
    required TResult Function(_SetPriceAdminEvent value) setPrice,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDataAdminEvent value)? getData,
    TResult Function(_AddCategoryAdminEvent value)? addCategory,
    TResult Function(_AddSphereAdminEvent value)? addSphere,
    TResult Function(_DeleteAdminEvent value)? delete,
    TResult Function(_SetPriceAdminEvent value)? setPrice,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _GetDataAdminEvent implements AdminEvent {
  const factory _GetDataAdminEvent() = _$_GetDataAdminEvent;
}

/// @nodoc
abstract class _$AddCategoryAdminEventCopyWith<$Res> {
  factory _$AddCategoryAdminEventCopyWith(_AddCategoryAdminEvent value,
          $Res Function(_AddCategoryAdminEvent) then) =
      __$AddCategoryAdminEventCopyWithImpl<$Res>;
  $Res call({bool click, String name});
}

/// @nodoc
class __$AddCategoryAdminEventCopyWithImpl<$Res>
    extends _$AdminEventCopyWithImpl<$Res>
    implements _$AddCategoryAdminEventCopyWith<$Res> {
  __$AddCategoryAdminEventCopyWithImpl(_AddCategoryAdminEvent _value,
      $Res Function(_AddCategoryAdminEvent) _then)
      : super(_value, (v) => _then(v as _AddCategoryAdminEvent));

  @override
  _AddCategoryAdminEvent get _value => super._value as _AddCategoryAdminEvent;

  @override
  $Res call({
    Object? click = freezed,
    Object? name = freezed,
  }) {
    return _then(_AddCategoryAdminEvent(
      click: click == freezed
          ? _value.click
          : click // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddCategoryAdminEvent implements _AddCategoryAdminEvent {
  const _$_AddCategoryAdminEvent({required this.click, required this.name});

  @override
  final bool click;
  @override
  final String name;

  @override
  String toString() {
    return 'AdminEvent.addCategory(click: $click, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddCategoryAdminEvent &&
            (identical(other.click, click) ||
                const DeepCollectionEquality().equals(other.click, click)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(click) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$AddCategoryAdminEventCopyWith<_AddCategoryAdminEvent> get copyWith =>
      __$AddCategoryAdminEventCopyWithImpl<_AddCategoryAdminEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(bool click, String name) addCategory,
    required TResult Function(bool click, String name) addSphere,
    required TResult Function(bool category, String name) delete,
    required TResult Function(String price) setPrice,
  }) {
    return addCategory(click, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(bool click, String name)? addCategory,
    TResult Function(bool click, String name)? addSphere,
    TResult Function(bool category, String name)? delete,
    TResult Function(String price)? setPrice,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(click, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDataAdminEvent value) getData,
    required TResult Function(_AddCategoryAdminEvent value) addCategory,
    required TResult Function(_AddSphereAdminEvent value) addSphere,
    required TResult Function(_DeleteAdminEvent value) delete,
    required TResult Function(_SetPriceAdminEvent value) setPrice,
  }) {
    return addCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDataAdminEvent value)? getData,
    TResult Function(_AddCategoryAdminEvent value)? addCategory,
    TResult Function(_AddSphereAdminEvent value)? addSphere,
    TResult Function(_DeleteAdminEvent value)? delete,
    TResult Function(_SetPriceAdminEvent value)? setPrice,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(this);
    }
    return orElse();
  }
}

abstract class _AddCategoryAdminEvent implements AdminEvent {
  const factory _AddCategoryAdminEvent(
      {required bool click, required String name}) = _$_AddCategoryAdminEvent;

  bool get click => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddCategoryAdminEventCopyWith<_AddCategoryAdminEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddSphereAdminEventCopyWith<$Res> {
  factory _$AddSphereAdminEventCopyWith(_AddSphereAdminEvent value,
          $Res Function(_AddSphereAdminEvent) then) =
      __$AddSphereAdminEventCopyWithImpl<$Res>;
  $Res call({bool click, String name});
}

/// @nodoc
class __$AddSphereAdminEventCopyWithImpl<$Res>
    extends _$AdminEventCopyWithImpl<$Res>
    implements _$AddSphereAdminEventCopyWith<$Res> {
  __$AddSphereAdminEventCopyWithImpl(
      _AddSphereAdminEvent _value, $Res Function(_AddSphereAdminEvent) _then)
      : super(_value, (v) => _then(v as _AddSphereAdminEvent));

  @override
  _AddSphereAdminEvent get _value => super._value as _AddSphereAdminEvent;

  @override
  $Res call({
    Object? click = freezed,
    Object? name = freezed,
  }) {
    return _then(_AddSphereAdminEvent(
      click: click == freezed
          ? _value.click
          : click // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddSphereAdminEvent implements _AddSphereAdminEvent {
  const _$_AddSphereAdminEvent({required this.click, required this.name});

  @override
  final bool click;
  @override
  final String name;

  @override
  String toString() {
    return 'AdminEvent.addSphere(click: $click, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddSphereAdminEvent &&
            (identical(other.click, click) ||
                const DeepCollectionEquality().equals(other.click, click)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(click) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$AddSphereAdminEventCopyWith<_AddSphereAdminEvent> get copyWith =>
      __$AddSphereAdminEventCopyWithImpl<_AddSphereAdminEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(bool click, String name) addCategory,
    required TResult Function(bool click, String name) addSphere,
    required TResult Function(bool category, String name) delete,
    required TResult Function(String price) setPrice,
  }) {
    return addSphere(click, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(bool click, String name)? addCategory,
    TResult Function(bool click, String name)? addSphere,
    TResult Function(bool category, String name)? delete,
    TResult Function(String price)? setPrice,
    required TResult orElse(),
  }) {
    if (addSphere != null) {
      return addSphere(click, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDataAdminEvent value) getData,
    required TResult Function(_AddCategoryAdminEvent value) addCategory,
    required TResult Function(_AddSphereAdminEvent value) addSphere,
    required TResult Function(_DeleteAdminEvent value) delete,
    required TResult Function(_SetPriceAdminEvent value) setPrice,
  }) {
    return addSphere(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDataAdminEvent value)? getData,
    TResult Function(_AddCategoryAdminEvent value)? addCategory,
    TResult Function(_AddSphereAdminEvent value)? addSphere,
    TResult Function(_DeleteAdminEvent value)? delete,
    TResult Function(_SetPriceAdminEvent value)? setPrice,
    required TResult orElse(),
  }) {
    if (addSphere != null) {
      return addSphere(this);
    }
    return orElse();
  }
}

abstract class _AddSphereAdminEvent implements AdminEvent {
  const factory _AddSphereAdminEvent(
      {required bool click, required String name}) = _$_AddSphereAdminEvent;

  bool get click => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddSphereAdminEventCopyWith<_AddSphereAdminEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteAdminEventCopyWith<$Res> {
  factory _$DeleteAdminEventCopyWith(
          _DeleteAdminEvent value, $Res Function(_DeleteAdminEvent) then) =
      __$DeleteAdminEventCopyWithImpl<$Res>;
  $Res call({bool category, String name});
}

/// @nodoc
class __$DeleteAdminEventCopyWithImpl<$Res>
    extends _$AdminEventCopyWithImpl<$Res>
    implements _$DeleteAdminEventCopyWith<$Res> {
  __$DeleteAdminEventCopyWithImpl(
      _DeleteAdminEvent _value, $Res Function(_DeleteAdminEvent) _then)
      : super(_value, (v) => _then(v as _DeleteAdminEvent));

  @override
  _DeleteAdminEvent get _value => super._value as _DeleteAdminEvent;

  @override
  $Res call({
    Object? category = freezed,
    Object? name = freezed,
  }) {
    return _then(_DeleteAdminEvent(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteAdminEvent implements _DeleteAdminEvent {
  const _$_DeleteAdminEvent({required this.category, required this.name});

  @override
  final bool category;
  @override
  final String name;

  @override
  String toString() {
    return 'AdminEvent.delete(category: $category, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteAdminEvent &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$DeleteAdminEventCopyWith<_DeleteAdminEvent> get copyWith =>
      __$DeleteAdminEventCopyWithImpl<_DeleteAdminEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(bool click, String name) addCategory,
    required TResult Function(bool click, String name) addSphere,
    required TResult Function(bool category, String name) delete,
    required TResult Function(String price) setPrice,
  }) {
    return delete(category, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(bool click, String name)? addCategory,
    TResult Function(bool click, String name)? addSphere,
    TResult Function(bool category, String name)? delete,
    TResult Function(String price)? setPrice,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(category, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDataAdminEvent value) getData,
    required TResult Function(_AddCategoryAdminEvent value) addCategory,
    required TResult Function(_AddSphereAdminEvent value) addSphere,
    required TResult Function(_DeleteAdminEvent value) delete,
    required TResult Function(_SetPriceAdminEvent value) setPrice,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDataAdminEvent value)? getData,
    TResult Function(_AddCategoryAdminEvent value)? addCategory,
    TResult Function(_AddSphereAdminEvent value)? addSphere,
    TResult Function(_DeleteAdminEvent value)? delete,
    TResult Function(_SetPriceAdminEvent value)? setPrice,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _DeleteAdminEvent implements AdminEvent {
  const factory _DeleteAdminEvent(
      {required bool category, required String name}) = _$_DeleteAdminEvent;

  bool get category => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteAdminEventCopyWith<_DeleteAdminEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetPriceAdminEventCopyWith<$Res> {
  factory _$SetPriceAdminEventCopyWith(
          _SetPriceAdminEvent value, $Res Function(_SetPriceAdminEvent) then) =
      __$SetPriceAdminEventCopyWithImpl<$Res>;
  $Res call({String price});
}

/// @nodoc
class __$SetPriceAdminEventCopyWithImpl<$Res>
    extends _$AdminEventCopyWithImpl<$Res>
    implements _$SetPriceAdminEventCopyWith<$Res> {
  __$SetPriceAdminEventCopyWithImpl(
      _SetPriceAdminEvent _value, $Res Function(_SetPriceAdminEvent) _then)
      : super(_value, (v) => _then(v as _SetPriceAdminEvent));

  @override
  _SetPriceAdminEvent get _value => super._value as _SetPriceAdminEvent;

  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(_SetPriceAdminEvent(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetPriceAdminEvent implements _SetPriceAdminEvent {
  const _$_SetPriceAdminEvent({required this.price});

  @override
  final String price;

  @override
  String toString() {
    return 'AdminEvent.setPrice(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetPriceAdminEvent &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$SetPriceAdminEventCopyWith<_SetPriceAdminEvent> get copyWith =>
      __$SetPriceAdminEventCopyWithImpl<_SetPriceAdminEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(bool click, String name) addCategory,
    required TResult Function(bool click, String name) addSphere,
    required TResult Function(bool category, String name) delete,
    required TResult Function(String price) setPrice,
  }) {
    return setPrice(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(bool click, String name)? addCategory,
    TResult Function(bool click, String name)? addSphere,
    TResult Function(bool category, String name)? delete,
    TResult Function(String price)? setPrice,
    required TResult orElse(),
  }) {
    if (setPrice != null) {
      return setPrice(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDataAdminEvent value) getData,
    required TResult Function(_AddCategoryAdminEvent value) addCategory,
    required TResult Function(_AddSphereAdminEvent value) addSphere,
    required TResult Function(_DeleteAdminEvent value) delete,
    required TResult Function(_SetPriceAdminEvent value) setPrice,
  }) {
    return setPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDataAdminEvent value)? getData,
    TResult Function(_AddCategoryAdminEvent value)? addCategory,
    TResult Function(_AddSphereAdminEvent value)? addSphere,
    TResult Function(_DeleteAdminEvent value)? delete,
    TResult Function(_SetPriceAdminEvent value)? setPrice,
    required TResult orElse(),
  }) {
    if (setPrice != null) {
      return setPrice(this);
    }
    return orElse();
  }
}

abstract class _SetPriceAdminEvent implements AdminEvent {
  const factory _SetPriceAdminEvent({required String price}) =
      _$_SetPriceAdminEvent;

  String get price => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetPriceAdminEventCopyWith<_SetPriceAdminEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AdminStateTearOff {
  const _$AdminStateTearOff();

  EmptyAdminState empty() {
    return const EmptyAdminState();
  }

  LoadingAdminState loading() {
    return const LoadingAdminState();
  }

  LoadedAdminState loaded(
      {required List<Feature> category,
      required bool clickCategory,
      required bool clickSphere,
      required List<Feature> sphere,
      required String price,
      required String status}) {
    return LoadedAdminState(
      category: category,
      clickCategory: clickCategory,
      clickSphere: clickSphere,
      sphere: sphere,
      price: price,
      status: status,
    );
  }

  ErrorAdminState error({required String message}) {
    return ErrorAdminState(
      message: message,
    );
  }
}

/// @nodoc
const $AdminState = _$AdminStateTearOff();

/// @nodoc
mixin _$AdminState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Feature> category, bool clickCategory,
            bool clickSphere, List<Feature> sphere, String price, String status)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            List<Feature> category,
            bool clickCategory,
            bool clickSphere,
            List<Feature> sphere,
            String price,
            String status)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyAdminState value) empty,
    required TResult Function(LoadingAdminState value) loading,
    required TResult Function(LoadedAdminState value) loaded,
    required TResult Function(ErrorAdminState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyAdminState value)? empty,
    TResult Function(LoadingAdminState value)? loading,
    TResult Function(LoadedAdminState value)? loaded,
    TResult Function(ErrorAdminState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminStateCopyWith<$Res> {
  factory $AdminStateCopyWith(
          AdminState value, $Res Function(AdminState) then) =
      _$AdminStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdminStateCopyWithImpl<$Res> implements $AdminStateCopyWith<$Res> {
  _$AdminStateCopyWithImpl(this._value, this._then);

  final AdminState _value;
  // ignore: unused_field
  final $Res Function(AdminState) _then;
}

/// @nodoc
abstract class $EmptyAdminStateCopyWith<$Res> {
  factory $EmptyAdminStateCopyWith(
          EmptyAdminState value, $Res Function(EmptyAdminState) then) =
      _$EmptyAdminStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyAdminStateCopyWithImpl<$Res> extends _$AdminStateCopyWithImpl<$Res>
    implements $EmptyAdminStateCopyWith<$Res> {
  _$EmptyAdminStateCopyWithImpl(
      EmptyAdminState _value, $Res Function(EmptyAdminState) _then)
      : super(_value, (v) => _then(v as EmptyAdminState));

  @override
  EmptyAdminState get _value => super._value as EmptyAdminState;
}

/// @nodoc

class _$EmptyAdminState implements EmptyAdminState {
  const _$EmptyAdminState();

  @override
  String toString() {
    return 'AdminState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyAdminState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Feature> category, bool clickCategory,
            bool clickSphere, List<Feature> sphere, String price, String status)
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
    TResult Function(
            List<Feature> category,
            bool clickCategory,
            bool clickSphere,
            List<Feature> sphere,
            String price,
            String status)?
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
    required TResult Function(EmptyAdminState value) empty,
    required TResult Function(LoadingAdminState value) loading,
    required TResult Function(LoadedAdminState value) loaded,
    required TResult Function(ErrorAdminState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyAdminState value)? empty,
    TResult Function(LoadingAdminState value)? loading,
    TResult Function(LoadedAdminState value)? loaded,
    TResult Function(ErrorAdminState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyAdminState implements AdminState {
  const factory EmptyAdminState() = _$EmptyAdminState;
}

/// @nodoc
abstract class $LoadingAdminStateCopyWith<$Res> {
  factory $LoadingAdminStateCopyWith(
          LoadingAdminState value, $Res Function(LoadingAdminState) then) =
      _$LoadingAdminStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingAdminStateCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res>
    implements $LoadingAdminStateCopyWith<$Res> {
  _$LoadingAdminStateCopyWithImpl(
      LoadingAdminState _value, $Res Function(LoadingAdminState) _then)
      : super(_value, (v) => _then(v as LoadingAdminState));

  @override
  LoadingAdminState get _value => super._value as LoadingAdminState;
}

/// @nodoc

class _$LoadingAdminState implements LoadingAdminState {
  const _$LoadingAdminState();

  @override
  String toString() {
    return 'AdminState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingAdminState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Feature> category, bool clickCategory,
            bool clickSphere, List<Feature> sphere, String price, String status)
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
    TResult Function(
            List<Feature> category,
            bool clickCategory,
            bool clickSphere,
            List<Feature> sphere,
            String price,
            String status)?
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
    required TResult Function(EmptyAdminState value) empty,
    required TResult Function(LoadingAdminState value) loading,
    required TResult Function(LoadedAdminState value) loaded,
    required TResult Function(ErrorAdminState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyAdminState value)? empty,
    TResult Function(LoadingAdminState value)? loading,
    TResult Function(LoadedAdminState value)? loaded,
    TResult Function(ErrorAdminState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingAdminState implements AdminState {
  const factory LoadingAdminState() = _$LoadingAdminState;
}

/// @nodoc
abstract class $LoadedAdminStateCopyWith<$Res> {
  factory $LoadedAdminStateCopyWith(
          LoadedAdminState value, $Res Function(LoadedAdminState) then) =
      _$LoadedAdminStateCopyWithImpl<$Res>;
  $Res call(
      {List<Feature> category,
      bool clickCategory,
      bool clickSphere,
      List<Feature> sphere,
      String price,
      String status});
}

/// @nodoc
class _$LoadedAdminStateCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res>
    implements $LoadedAdminStateCopyWith<$Res> {
  _$LoadedAdminStateCopyWithImpl(
      LoadedAdminState _value, $Res Function(LoadedAdminState) _then)
      : super(_value, (v) => _then(v as LoadedAdminState));

  @override
  LoadedAdminState get _value => super._value as LoadedAdminState;

  @override
  $Res call({
    Object? category = freezed,
    Object? clickCategory = freezed,
    Object? clickSphere = freezed,
    Object? sphere = freezed,
    Object? price = freezed,
    Object? status = freezed,
  }) {
    return _then(LoadedAdminState(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<Feature>,
      clickCategory: clickCategory == freezed
          ? _value.clickCategory
          : clickCategory // ignore: cast_nullable_to_non_nullable
              as bool,
      clickSphere: clickSphere == freezed
          ? _value.clickSphere
          : clickSphere // ignore: cast_nullable_to_non_nullable
              as bool,
      sphere: sphere == freezed
          ? _value.sphere
          : sphere // ignore: cast_nullable_to_non_nullable
              as List<Feature>,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedAdminState implements LoadedAdminState {
  const _$LoadedAdminState(
      {required this.category,
      required this.clickCategory,
      required this.clickSphere,
      required this.sphere,
      required this.price,
      required this.status});

  @override
  final List<Feature> category;
  @override
  final bool clickCategory;
  @override
  final bool clickSphere;
  @override
  final List<Feature> sphere;
  @override
  final String price;
  @override
  final String status;

  @override
  String toString() {
    return 'AdminState.loaded(category: $category, clickCategory: $clickCategory, clickSphere: $clickSphere, sphere: $sphere, price: $price, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedAdminState &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.clickCategory, clickCategory) ||
                const DeepCollectionEquality()
                    .equals(other.clickCategory, clickCategory)) &&
            (identical(other.clickSphere, clickSphere) ||
                const DeepCollectionEquality()
                    .equals(other.clickSphere, clickSphere)) &&
            (identical(other.sphere, sphere) ||
                const DeepCollectionEquality().equals(other.sphere, sphere)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(clickCategory) ^
      const DeepCollectionEquality().hash(clickSphere) ^
      const DeepCollectionEquality().hash(sphere) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $LoadedAdminStateCopyWith<LoadedAdminState> get copyWith =>
      _$LoadedAdminStateCopyWithImpl<LoadedAdminState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Feature> category, bool clickCategory,
            bool clickSphere, List<Feature> sphere, String price, String status)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(category, clickCategory, clickSphere, sphere, price, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            List<Feature> category,
            bool clickCategory,
            bool clickSphere,
            List<Feature> sphere,
            String price,
            String status)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          category, clickCategory, clickSphere, sphere, price, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyAdminState value) empty,
    required TResult Function(LoadingAdminState value) loading,
    required TResult Function(LoadedAdminState value) loaded,
    required TResult Function(ErrorAdminState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyAdminState value)? empty,
    TResult Function(LoadingAdminState value)? loading,
    TResult Function(LoadedAdminState value)? loaded,
    TResult Function(ErrorAdminState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedAdminState implements AdminState {
  const factory LoadedAdminState(
      {required List<Feature> category,
      required bool clickCategory,
      required bool clickSphere,
      required List<Feature> sphere,
      required String price,
      required String status}) = _$LoadedAdminState;

  List<Feature> get category => throw _privateConstructorUsedError;
  bool get clickCategory => throw _privateConstructorUsedError;
  bool get clickSphere => throw _privateConstructorUsedError;
  List<Feature> get sphere => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedAdminStateCopyWith<LoadedAdminState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorAdminStateCopyWith<$Res> {
  factory $ErrorAdminStateCopyWith(
          ErrorAdminState value, $Res Function(ErrorAdminState) then) =
      _$ErrorAdminStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorAdminStateCopyWithImpl<$Res> extends _$AdminStateCopyWithImpl<$Res>
    implements $ErrorAdminStateCopyWith<$Res> {
  _$ErrorAdminStateCopyWithImpl(
      ErrorAdminState _value, $Res Function(ErrorAdminState) _then)
      : super(_value, (v) => _then(v as ErrorAdminState));

  @override
  ErrorAdminState get _value => super._value as ErrorAdminState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorAdminState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorAdminState implements ErrorAdminState {
  const _$ErrorAdminState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AdminState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorAdminState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorAdminStateCopyWith<ErrorAdminState> get copyWith =>
      _$ErrorAdminStateCopyWithImpl<ErrorAdminState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Feature> category, bool clickCategory,
            bool clickSphere, List<Feature> sphere, String price, String status)
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
    TResult Function(
            List<Feature> category,
            bool clickCategory,
            bool clickSphere,
            List<Feature> sphere,
            String price,
            String status)?
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
    required TResult Function(EmptyAdminState value) empty,
    required TResult Function(LoadingAdminState value) loading,
    required TResult Function(LoadedAdminState value) loaded,
    required TResult Function(ErrorAdminState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyAdminState value)? empty,
    TResult Function(LoadingAdminState value)? loading,
    TResult Function(LoadedAdminState value)? loaded,
    TResult Function(ErrorAdminState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorAdminState implements AdminState {
  const factory ErrorAdminState({required String message}) = _$ErrorAdminState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorAdminStateCopyWith<ErrorAdminState> get copyWith =>
      throw _privateConstructorUsedError;
}
