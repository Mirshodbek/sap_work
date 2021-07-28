// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'vacancies_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VacanciesUserEventTearOff {
  const _$VacanciesUserEventTearOff();

  _GetVacanciesUserEvent getVacancies() {
    return const _GetVacanciesUserEvent();
  }

  _GetVacanciesPaginationUserEvent getVacanciesPagination({required int page}) {
    return _GetVacanciesPaginationUserEvent(
      page: page,
    );
  }

  _SelectedViewVacanciesUserEvent selectedView({required bool isExtension}) {
    return _SelectedViewVacanciesUserEvent(
      isExtension: isExtension,
    );
  }

  _PostOrDeleteFavoritesVacanciesUserEvent postOrDeleteFavorites(
      {required int id, required bool type}) {
    return _PostOrDeleteFavoritesVacanciesUserEvent(
      id: id,
      type: type,
    );
  }

  _SearchVacanciesUserEvent search({required String body}) {
    return _SearchVacanciesUserEvent(
      body: body,
    );
  }

  _FilterVacanciesUserEvent filter(
      {required int category,
      String? city,
      String? stage,
      String? schedule,
      String? type,
      int? page,
      required bool paginate}) {
    return _FilterVacanciesUserEvent(
      category: category,
      city: city,
      stage: stage,
      schedule: schedule,
      type: type,
      page: page,
      paginate: paginate,
    );
  }
}

/// @nodoc
const $VacanciesUserEvent = _$VacanciesUserEventTearOff();

/// @nodoc
mixin _$VacanciesUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getVacancies,
    required TResult Function(int page) getVacanciesPagination,
    required TResult Function(bool isExtension) selectedView,
    required TResult Function(int id, bool type) postOrDeleteFavorites,
    required TResult Function(String body) search,
    required TResult Function(int category, String? city, String? stage,
            String? schedule, String? type, int? page, bool paginate)
        filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVacancies,
    TResult Function(int page)? getVacanciesPagination,
    TResult Function(bool isExtension)? selectedView,
    TResult Function(int id, bool type)? postOrDeleteFavorites,
    TResult Function(String body)? search,
    TResult Function(int category, String? city, String? stage,
            String? schedule, String? type, int? page, bool paginate)?
        filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVacanciesUserEvent value) getVacancies,
    required TResult Function(_GetVacanciesPaginationUserEvent value)
        getVacanciesPagination,
    required TResult Function(_SelectedViewVacanciesUserEvent value)
        selectedView,
    required TResult Function(_PostOrDeleteFavoritesVacanciesUserEvent value)
        postOrDeleteFavorites,
    required TResult Function(_SearchVacanciesUserEvent value) search,
    required TResult Function(_FilterVacanciesUserEvent value) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVacanciesUserEvent value)? getVacancies,
    TResult Function(_GetVacanciesPaginationUserEvent value)?
        getVacanciesPagination,
    TResult Function(_SelectedViewVacanciesUserEvent value)? selectedView,
    TResult Function(_PostOrDeleteFavoritesVacanciesUserEvent value)?
        postOrDeleteFavorites,
    TResult Function(_SearchVacanciesUserEvent value)? search,
    TResult Function(_FilterVacanciesUserEvent value)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VacanciesUserEventCopyWith<$Res> {
  factory $VacanciesUserEventCopyWith(
          VacanciesUserEvent value, $Res Function(VacanciesUserEvent) then) =
      _$VacanciesUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VacanciesUserEventCopyWithImpl<$Res>
    implements $VacanciesUserEventCopyWith<$Res> {
  _$VacanciesUserEventCopyWithImpl(this._value, this._then);

  final VacanciesUserEvent _value;
  // ignore: unused_field
  final $Res Function(VacanciesUserEvent) _then;
}

/// @nodoc
abstract class _$GetVacanciesUserEventCopyWith<$Res> {
  factory _$GetVacanciesUserEventCopyWith(_GetVacanciesUserEvent value,
          $Res Function(_GetVacanciesUserEvent) then) =
      __$GetVacanciesUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetVacanciesUserEventCopyWithImpl<$Res>
    extends _$VacanciesUserEventCopyWithImpl<$Res>
    implements _$GetVacanciesUserEventCopyWith<$Res> {
  __$GetVacanciesUserEventCopyWithImpl(_GetVacanciesUserEvent _value,
      $Res Function(_GetVacanciesUserEvent) _then)
      : super(_value, (v) => _then(v as _GetVacanciesUserEvent));

  @override
  _GetVacanciesUserEvent get _value => super._value as _GetVacanciesUserEvent;
}

/// @nodoc

class _$_GetVacanciesUserEvent implements _GetVacanciesUserEvent {
  const _$_GetVacanciesUserEvent();

  @override
  String toString() {
    return 'VacanciesUserEvent.getVacancies()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetVacanciesUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getVacancies,
    required TResult Function(int page) getVacanciesPagination,
    required TResult Function(bool isExtension) selectedView,
    required TResult Function(int id, bool type) postOrDeleteFavorites,
    required TResult Function(String body) search,
    required TResult Function(int category, String? city, String? stage,
            String? schedule, String? type, int? page, bool paginate)
        filter,
  }) {
    return getVacancies();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVacancies,
    TResult Function(int page)? getVacanciesPagination,
    TResult Function(bool isExtension)? selectedView,
    TResult Function(int id, bool type)? postOrDeleteFavorites,
    TResult Function(String body)? search,
    TResult Function(int category, String? city, String? stage,
            String? schedule, String? type, int? page, bool paginate)?
        filter,
    required TResult orElse(),
  }) {
    if (getVacancies != null) {
      return getVacancies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVacanciesUserEvent value) getVacancies,
    required TResult Function(_GetVacanciesPaginationUserEvent value)
        getVacanciesPagination,
    required TResult Function(_SelectedViewVacanciesUserEvent value)
        selectedView,
    required TResult Function(_PostOrDeleteFavoritesVacanciesUserEvent value)
        postOrDeleteFavorites,
    required TResult Function(_SearchVacanciesUserEvent value) search,
    required TResult Function(_FilterVacanciesUserEvent value) filter,
  }) {
    return getVacancies(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVacanciesUserEvent value)? getVacancies,
    TResult Function(_GetVacanciesPaginationUserEvent value)?
        getVacanciesPagination,
    TResult Function(_SelectedViewVacanciesUserEvent value)? selectedView,
    TResult Function(_PostOrDeleteFavoritesVacanciesUserEvent value)?
        postOrDeleteFavorites,
    TResult Function(_SearchVacanciesUserEvent value)? search,
    TResult Function(_FilterVacanciesUserEvent value)? filter,
    required TResult orElse(),
  }) {
    if (getVacancies != null) {
      return getVacancies(this);
    }
    return orElse();
  }
}

abstract class _GetVacanciesUserEvent implements VacanciesUserEvent {
  const factory _GetVacanciesUserEvent() = _$_GetVacanciesUserEvent;
}

/// @nodoc
abstract class _$GetVacanciesPaginationUserEventCopyWith<$Res> {
  factory _$GetVacanciesPaginationUserEventCopyWith(
          _GetVacanciesPaginationUserEvent value,
          $Res Function(_GetVacanciesPaginationUserEvent) then) =
      __$GetVacanciesPaginationUserEventCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class __$GetVacanciesPaginationUserEventCopyWithImpl<$Res>
    extends _$VacanciesUserEventCopyWithImpl<$Res>
    implements _$GetVacanciesPaginationUserEventCopyWith<$Res> {
  __$GetVacanciesPaginationUserEventCopyWithImpl(
      _GetVacanciesPaginationUserEvent _value,
      $Res Function(_GetVacanciesPaginationUserEvent) _then)
      : super(_value, (v) => _then(v as _GetVacanciesPaginationUserEvent));

  @override
  _GetVacanciesPaginationUserEvent get _value =>
      super._value as _GetVacanciesPaginationUserEvent;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_GetVacanciesPaginationUserEvent(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetVacanciesPaginationUserEvent
    implements _GetVacanciesPaginationUserEvent {
  const _$_GetVacanciesPaginationUserEvent({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'VacanciesUserEvent.getVacanciesPagination(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetVacanciesPaginationUserEvent &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  _$GetVacanciesPaginationUserEventCopyWith<_GetVacanciesPaginationUserEvent>
      get copyWith => __$GetVacanciesPaginationUserEventCopyWithImpl<
          _GetVacanciesPaginationUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getVacancies,
    required TResult Function(int page) getVacanciesPagination,
    required TResult Function(bool isExtension) selectedView,
    required TResult Function(int id, bool type) postOrDeleteFavorites,
    required TResult Function(String body) search,
    required TResult Function(int category, String? city, String? stage,
            String? schedule, String? type, int? page, bool paginate)
        filter,
  }) {
    return getVacanciesPagination(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVacancies,
    TResult Function(int page)? getVacanciesPagination,
    TResult Function(bool isExtension)? selectedView,
    TResult Function(int id, bool type)? postOrDeleteFavorites,
    TResult Function(String body)? search,
    TResult Function(int category, String? city, String? stage,
            String? schedule, String? type, int? page, bool paginate)?
        filter,
    required TResult orElse(),
  }) {
    if (getVacanciesPagination != null) {
      return getVacanciesPagination(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVacanciesUserEvent value) getVacancies,
    required TResult Function(_GetVacanciesPaginationUserEvent value)
        getVacanciesPagination,
    required TResult Function(_SelectedViewVacanciesUserEvent value)
        selectedView,
    required TResult Function(_PostOrDeleteFavoritesVacanciesUserEvent value)
        postOrDeleteFavorites,
    required TResult Function(_SearchVacanciesUserEvent value) search,
    required TResult Function(_FilterVacanciesUserEvent value) filter,
  }) {
    return getVacanciesPagination(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVacanciesUserEvent value)? getVacancies,
    TResult Function(_GetVacanciesPaginationUserEvent value)?
        getVacanciesPagination,
    TResult Function(_SelectedViewVacanciesUserEvent value)? selectedView,
    TResult Function(_PostOrDeleteFavoritesVacanciesUserEvent value)?
        postOrDeleteFavorites,
    TResult Function(_SearchVacanciesUserEvent value)? search,
    TResult Function(_FilterVacanciesUserEvent value)? filter,
    required TResult orElse(),
  }) {
    if (getVacanciesPagination != null) {
      return getVacanciesPagination(this);
    }
    return orElse();
  }
}

abstract class _GetVacanciesPaginationUserEvent implements VacanciesUserEvent {
  const factory _GetVacanciesPaginationUserEvent({required int page}) =
      _$_GetVacanciesPaginationUserEvent;

  int get page => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetVacanciesPaginationUserEventCopyWith<_GetVacanciesPaginationUserEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SelectedViewVacanciesUserEventCopyWith<$Res> {
  factory _$SelectedViewVacanciesUserEventCopyWith(
          _SelectedViewVacanciesUserEvent value,
          $Res Function(_SelectedViewVacanciesUserEvent) then) =
      __$SelectedViewVacanciesUserEventCopyWithImpl<$Res>;
  $Res call({bool isExtension});
}

/// @nodoc
class __$SelectedViewVacanciesUserEventCopyWithImpl<$Res>
    extends _$VacanciesUserEventCopyWithImpl<$Res>
    implements _$SelectedViewVacanciesUserEventCopyWith<$Res> {
  __$SelectedViewVacanciesUserEventCopyWithImpl(
      _SelectedViewVacanciesUserEvent _value,
      $Res Function(_SelectedViewVacanciesUserEvent) _then)
      : super(_value, (v) => _then(v as _SelectedViewVacanciesUserEvent));

  @override
  _SelectedViewVacanciesUserEvent get _value =>
      super._value as _SelectedViewVacanciesUserEvent;

  @override
  $Res call({
    Object? isExtension = freezed,
  }) {
    return _then(_SelectedViewVacanciesUserEvent(
      isExtension: isExtension == freezed
          ? _value.isExtension
          : isExtension // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SelectedViewVacanciesUserEvent
    implements _SelectedViewVacanciesUserEvent {
  const _$_SelectedViewVacanciesUserEvent({required this.isExtension});

  @override
  final bool isExtension;

  @override
  String toString() {
    return 'VacanciesUserEvent.selectedView(isExtension: $isExtension)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedViewVacanciesUserEvent &&
            (identical(other.isExtension, isExtension) ||
                const DeepCollectionEquality()
                    .equals(other.isExtension, isExtension)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isExtension);

  @JsonKey(ignore: true)
  @override
  _$SelectedViewVacanciesUserEventCopyWith<_SelectedViewVacanciesUserEvent>
      get copyWith => __$SelectedViewVacanciesUserEventCopyWithImpl<
          _SelectedViewVacanciesUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getVacancies,
    required TResult Function(int page) getVacanciesPagination,
    required TResult Function(bool isExtension) selectedView,
    required TResult Function(int id, bool type) postOrDeleteFavorites,
    required TResult Function(String body) search,
    required TResult Function(int category, String? city, String? stage,
            String? schedule, String? type, int? page, bool paginate)
        filter,
  }) {
    return selectedView(isExtension);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVacancies,
    TResult Function(int page)? getVacanciesPagination,
    TResult Function(bool isExtension)? selectedView,
    TResult Function(int id, bool type)? postOrDeleteFavorites,
    TResult Function(String body)? search,
    TResult Function(int category, String? city, String? stage,
            String? schedule, String? type, int? page, bool paginate)?
        filter,
    required TResult orElse(),
  }) {
    if (selectedView != null) {
      return selectedView(isExtension);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVacanciesUserEvent value) getVacancies,
    required TResult Function(_GetVacanciesPaginationUserEvent value)
        getVacanciesPagination,
    required TResult Function(_SelectedViewVacanciesUserEvent value)
        selectedView,
    required TResult Function(_PostOrDeleteFavoritesVacanciesUserEvent value)
        postOrDeleteFavorites,
    required TResult Function(_SearchVacanciesUserEvent value) search,
    required TResult Function(_FilterVacanciesUserEvent value) filter,
  }) {
    return selectedView(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVacanciesUserEvent value)? getVacancies,
    TResult Function(_GetVacanciesPaginationUserEvent value)?
        getVacanciesPagination,
    TResult Function(_SelectedViewVacanciesUserEvent value)? selectedView,
    TResult Function(_PostOrDeleteFavoritesVacanciesUserEvent value)?
        postOrDeleteFavorites,
    TResult Function(_SearchVacanciesUserEvent value)? search,
    TResult Function(_FilterVacanciesUserEvent value)? filter,
    required TResult orElse(),
  }) {
    if (selectedView != null) {
      return selectedView(this);
    }
    return orElse();
  }
}

abstract class _SelectedViewVacanciesUserEvent implements VacanciesUserEvent {
  const factory _SelectedViewVacanciesUserEvent({required bool isExtension}) =
      _$_SelectedViewVacanciesUserEvent;

  bool get isExtension => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectedViewVacanciesUserEventCopyWith<_SelectedViewVacanciesUserEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PostOrDeleteFavoritesVacanciesUserEventCopyWith<$Res> {
  factory _$PostOrDeleteFavoritesVacanciesUserEventCopyWith(
          _PostOrDeleteFavoritesVacanciesUserEvent value,
          $Res Function(_PostOrDeleteFavoritesVacanciesUserEvent) then) =
      __$PostOrDeleteFavoritesVacanciesUserEventCopyWithImpl<$Res>;
  $Res call({int id, bool type});
}

/// @nodoc
class __$PostOrDeleteFavoritesVacanciesUserEventCopyWithImpl<$Res>
    extends _$VacanciesUserEventCopyWithImpl<$Res>
    implements _$PostOrDeleteFavoritesVacanciesUserEventCopyWith<$Res> {
  __$PostOrDeleteFavoritesVacanciesUserEventCopyWithImpl(
      _PostOrDeleteFavoritesVacanciesUserEvent _value,
      $Res Function(_PostOrDeleteFavoritesVacanciesUserEvent) _then)
      : super(_value,
            (v) => _then(v as _PostOrDeleteFavoritesVacanciesUserEvent));

  @override
  _PostOrDeleteFavoritesVacanciesUserEvent get _value =>
      super._value as _PostOrDeleteFavoritesVacanciesUserEvent;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_PostOrDeleteFavoritesVacanciesUserEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PostOrDeleteFavoritesVacanciesUserEvent
    implements _PostOrDeleteFavoritesVacanciesUserEvent {
  const _$_PostOrDeleteFavoritesVacanciesUserEvent(
      {required this.id, required this.type});

  @override
  final int id;
  @override
  final bool type;

  @override
  String toString() {
    return 'VacanciesUserEvent.postOrDeleteFavorites(id: $id, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostOrDeleteFavoritesVacanciesUserEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$PostOrDeleteFavoritesVacanciesUserEventCopyWith<
          _PostOrDeleteFavoritesVacanciesUserEvent>
      get copyWith => __$PostOrDeleteFavoritesVacanciesUserEventCopyWithImpl<
          _PostOrDeleteFavoritesVacanciesUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getVacancies,
    required TResult Function(int page) getVacanciesPagination,
    required TResult Function(bool isExtension) selectedView,
    required TResult Function(int id, bool type) postOrDeleteFavorites,
    required TResult Function(String body) search,
    required TResult Function(int category, String? city, String? stage,
            String? schedule, String? type, int? page, bool paginate)
        filter,
  }) {
    return postOrDeleteFavorites(id, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVacancies,
    TResult Function(int page)? getVacanciesPagination,
    TResult Function(bool isExtension)? selectedView,
    TResult Function(int id, bool type)? postOrDeleteFavorites,
    TResult Function(String body)? search,
    TResult Function(int category, String? city, String? stage,
            String? schedule, String? type, int? page, bool paginate)?
        filter,
    required TResult orElse(),
  }) {
    if (postOrDeleteFavorites != null) {
      return postOrDeleteFavorites(id, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVacanciesUserEvent value) getVacancies,
    required TResult Function(_GetVacanciesPaginationUserEvent value)
        getVacanciesPagination,
    required TResult Function(_SelectedViewVacanciesUserEvent value)
        selectedView,
    required TResult Function(_PostOrDeleteFavoritesVacanciesUserEvent value)
        postOrDeleteFavorites,
    required TResult Function(_SearchVacanciesUserEvent value) search,
    required TResult Function(_FilterVacanciesUserEvent value) filter,
  }) {
    return postOrDeleteFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVacanciesUserEvent value)? getVacancies,
    TResult Function(_GetVacanciesPaginationUserEvent value)?
        getVacanciesPagination,
    TResult Function(_SelectedViewVacanciesUserEvent value)? selectedView,
    TResult Function(_PostOrDeleteFavoritesVacanciesUserEvent value)?
        postOrDeleteFavorites,
    TResult Function(_SearchVacanciesUserEvent value)? search,
    TResult Function(_FilterVacanciesUserEvent value)? filter,
    required TResult orElse(),
  }) {
    if (postOrDeleteFavorites != null) {
      return postOrDeleteFavorites(this);
    }
    return orElse();
  }
}

abstract class _PostOrDeleteFavoritesVacanciesUserEvent
    implements VacanciesUserEvent {
  const factory _PostOrDeleteFavoritesVacanciesUserEvent(
      {required int id,
      required bool type}) = _$_PostOrDeleteFavoritesVacanciesUserEvent;

  int get id => throw _privateConstructorUsedError;
  bool get type => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PostOrDeleteFavoritesVacanciesUserEventCopyWith<
          _PostOrDeleteFavoritesVacanciesUserEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchVacanciesUserEventCopyWith<$Res> {
  factory _$SearchVacanciesUserEventCopyWith(_SearchVacanciesUserEvent value,
          $Res Function(_SearchVacanciesUserEvent) then) =
      __$SearchVacanciesUserEventCopyWithImpl<$Res>;
  $Res call({String body});
}

/// @nodoc
class __$SearchVacanciesUserEventCopyWithImpl<$Res>
    extends _$VacanciesUserEventCopyWithImpl<$Res>
    implements _$SearchVacanciesUserEventCopyWith<$Res> {
  __$SearchVacanciesUserEventCopyWithImpl(_SearchVacanciesUserEvent _value,
      $Res Function(_SearchVacanciesUserEvent) _then)
      : super(_value, (v) => _then(v as _SearchVacanciesUserEvent));

  @override
  _SearchVacanciesUserEvent get _value =>
      super._value as _SearchVacanciesUserEvent;

  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(_SearchVacanciesUserEvent(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchVacanciesUserEvent implements _SearchVacanciesUserEvent {
  const _$_SearchVacanciesUserEvent({required this.body});

  @override
  final String body;

  @override
  String toString() {
    return 'VacanciesUserEvent.search(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchVacanciesUserEvent &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  _$SearchVacanciesUserEventCopyWith<_SearchVacanciesUserEvent> get copyWith =>
      __$SearchVacanciesUserEventCopyWithImpl<_SearchVacanciesUserEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getVacancies,
    required TResult Function(int page) getVacanciesPagination,
    required TResult Function(bool isExtension) selectedView,
    required TResult Function(int id, bool type) postOrDeleteFavorites,
    required TResult Function(String body) search,
    required TResult Function(int category, String? city, String? stage,
            String? schedule, String? type, int? page, bool paginate)
        filter,
  }) {
    return search(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVacancies,
    TResult Function(int page)? getVacanciesPagination,
    TResult Function(bool isExtension)? selectedView,
    TResult Function(int id, bool type)? postOrDeleteFavorites,
    TResult Function(String body)? search,
    TResult Function(int category, String? city, String? stage,
            String? schedule, String? type, int? page, bool paginate)?
        filter,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVacanciesUserEvent value) getVacancies,
    required TResult Function(_GetVacanciesPaginationUserEvent value)
        getVacanciesPagination,
    required TResult Function(_SelectedViewVacanciesUserEvent value)
        selectedView,
    required TResult Function(_PostOrDeleteFavoritesVacanciesUserEvent value)
        postOrDeleteFavorites,
    required TResult Function(_SearchVacanciesUserEvent value) search,
    required TResult Function(_FilterVacanciesUserEvent value) filter,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVacanciesUserEvent value)? getVacancies,
    TResult Function(_GetVacanciesPaginationUserEvent value)?
        getVacanciesPagination,
    TResult Function(_SelectedViewVacanciesUserEvent value)? selectedView,
    TResult Function(_PostOrDeleteFavoritesVacanciesUserEvent value)?
        postOrDeleteFavorites,
    TResult Function(_SearchVacanciesUserEvent value)? search,
    TResult Function(_FilterVacanciesUserEvent value)? filter,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _SearchVacanciesUserEvent implements VacanciesUserEvent {
  const factory _SearchVacanciesUserEvent({required String body}) =
      _$_SearchVacanciesUserEvent;

  String get body => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchVacanciesUserEventCopyWith<_SearchVacanciesUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FilterVacanciesUserEventCopyWith<$Res> {
  factory _$FilterVacanciesUserEventCopyWith(_FilterVacanciesUserEvent value,
          $Res Function(_FilterVacanciesUserEvent) then) =
      __$FilterVacanciesUserEventCopyWithImpl<$Res>;
  $Res call(
      {int category,
      String? city,
      String? stage,
      String? schedule,
      String? type,
      int? page,
      bool paginate});
}

/// @nodoc
class __$FilterVacanciesUserEventCopyWithImpl<$Res>
    extends _$VacanciesUserEventCopyWithImpl<$Res>
    implements _$FilterVacanciesUserEventCopyWith<$Res> {
  __$FilterVacanciesUserEventCopyWithImpl(_FilterVacanciesUserEvent _value,
      $Res Function(_FilterVacanciesUserEvent) _then)
      : super(_value, (v) => _then(v as _FilterVacanciesUserEvent));

  @override
  _FilterVacanciesUserEvent get _value =>
      super._value as _FilterVacanciesUserEvent;

  @override
  $Res call({
    Object? category = freezed,
    Object? city = freezed,
    Object? stage = freezed,
    Object? schedule = freezed,
    Object? type = freezed,
    Object? page = freezed,
    Object? paginate = freezed,
  }) {
    return _then(_FilterVacanciesUserEvent(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      stage: stage == freezed
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String?,
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      paginate: paginate == freezed
          ? _value.paginate
          : paginate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FilterVacanciesUserEvent implements _FilterVacanciesUserEvent {
  const _$_FilterVacanciesUserEvent(
      {required this.category,
      this.city,
      this.stage,
      this.schedule,
      this.type,
      this.page,
      required this.paginate});

  @override
  final int category;
  @override
  final String? city;
  @override
  final String? stage;
  @override
  final String? schedule;
  @override
  final String? type;
  @override
  final int? page;
  @override
  final bool paginate;

  @override
  String toString() {
    return 'VacanciesUserEvent.filter(category: $category, city: $city, stage: $stage, schedule: $schedule, type: $type, page: $page, paginate: $paginate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilterVacanciesUserEvent &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.stage, stage) ||
                const DeepCollectionEquality().equals(other.stage, stage)) &&
            (identical(other.schedule, schedule) ||
                const DeepCollectionEquality()
                    .equals(other.schedule, schedule)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.paginate, paginate) ||
                const DeepCollectionEquality()
                    .equals(other.paginate, paginate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(stage) ^
      const DeepCollectionEquality().hash(schedule) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(paginate);

  @JsonKey(ignore: true)
  @override
  _$FilterVacanciesUserEventCopyWith<_FilterVacanciesUserEvent> get copyWith =>
      __$FilterVacanciesUserEventCopyWithImpl<_FilterVacanciesUserEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getVacancies,
    required TResult Function(int page) getVacanciesPagination,
    required TResult Function(bool isExtension) selectedView,
    required TResult Function(int id, bool type) postOrDeleteFavorites,
    required TResult Function(String body) search,
    required TResult Function(int category, String? city, String? stage,
            String? schedule, String? type, int? page, bool paginate)
        filter,
  }) {
    return filter(category, city, stage, schedule, type, page, paginate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVacancies,
    TResult Function(int page)? getVacanciesPagination,
    TResult Function(bool isExtension)? selectedView,
    TResult Function(int id, bool type)? postOrDeleteFavorites,
    TResult Function(String body)? search,
    TResult Function(int category, String? city, String? stage,
            String? schedule, String? type, int? page, bool paginate)?
        filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(category, city, stage, schedule, type, page, paginate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVacanciesUserEvent value) getVacancies,
    required TResult Function(_GetVacanciesPaginationUserEvent value)
        getVacanciesPagination,
    required TResult Function(_SelectedViewVacanciesUserEvent value)
        selectedView,
    required TResult Function(_PostOrDeleteFavoritesVacanciesUserEvent value)
        postOrDeleteFavorites,
    required TResult Function(_SearchVacanciesUserEvent value) search,
    required TResult Function(_FilterVacanciesUserEvent value) filter,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVacanciesUserEvent value)? getVacancies,
    TResult Function(_GetVacanciesPaginationUserEvent value)?
        getVacanciesPagination,
    TResult Function(_SelectedViewVacanciesUserEvent value)? selectedView,
    TResult Function(_PostOrDeleteFavoritesVacanciesUserEvent value)?
        postOrDeleteFavorites,
    TResult Function(_SearchVacanciesUserEvent value)? search,
    TResult Function(_FilterVacanciesUserEvent value)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class _FilterVacanciesUserEvent implements VacanciesUserEvent {
  const factory _FilterVacanciesUserEvent(
      {required int category,
      String? city,
      String? stage,
      String? schedule,
      String? type,
      int? page,
      required bool paginate}) = _$_FilterVacanciesUserEvent;

  int get category => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get stage => throw _privateConstructorUsedError;
  String? get schedule => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  bool get paginate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FilterVacanciesUserEventCopyWith<_FilterVacanciesUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VacanciesUserStateTearOff {
  const _$VacanciesUserStateTearOff();

  EmptyVacancyUserState empty() {
    return const EmptyVacancyUserState();
  }

  LoadingVacanciesUserState loading() {
    return const LoadingVacanciesUserState();
  }

  LoadedVacanciesUserState loaded(
      {required List<Vacancy> vacancies,
      required List<Vacancy> favorites,
      required bool isExtension,
      required PaginationVacancy pagination,
      required String status}) {
    return LoadedVacanciesUserState(
      vacancies: vacancies,
      favorites: favorites,
      isExtension: isExtension,
      pagination: pagination,
      status: status,
    );
  }

  ErrorVacanciesUserState error({required String message}) {
    return ErrorVacanciesUserState(
      message: message,
    );
  }
}

/// @nodoc
const $VacanciesUserState = _$VacanciesUserStateTearOff();

/// @nodoc
mixin _$VacanciesUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Vacancy> vacancies, List<Vacancy> favorites,
            bool isExtension, PaginationVacancy pagination, String status)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Vacancy> vacancies, List<Vacancy> favorites,
            bool isExtension, PaginationVacancy pagination, String status)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyVacancyUserState value) empty,
    required TResult Function(LoadingVacanciesUserState value) loading,
    required TResult Function(LoadedVacanciesUserState value) loaded,
    required TResult Function(ErrorVacanciesUserState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyVacancyUserState value)? empty,
    TResult Function(LoadingVacanciesUserState value)? loading,
    TResult Function(LoadedVacanciesUserState value)? loaded,
    TResult Function(ErrorVacanciesUserState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VacanciesUserStateCopyWith<$Res> {
  factory $VacanciesUserStateCopyWith(
          VacanciesUserState value, $Res Function(VacanciesUserState) then) =
      _$VacanciesUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VacanciesUserStateCopyWithImpl<$Res>
    implements $VacanciesUserStateCopyWith<$Res> {
  _$VacanciesUserStateCopyWithImpl(this._value, this._then);

  final VacanciesUserState _value;
  // ignore: unused_field
  final $Res Function(VacanciesUserState) _then;
}

/// @nodoc
abstract class $EmptyVacancyUserStateCopyWith<$Res> {
  factory $EmptyVacancyUserStateCopyWith(EmptyVacancyUserState value,
          $Res Function(EmptyVacancyUserState) then) =
      _$EmptyVacancyUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyVacancyUserStateCopyWithImpl<$Res>
    extends _$VacanciesUserStateCopyWithImpl<$Res>
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
    return 'VacanciesUserState.empty()';
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
    required TResult Function(List<Vacancy> vacancies, List<Vacancy> favorites,
            bool isExtension, PaginationVacancy pagination, String status)
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
    TResult Function(List<Vacancy> vacancies, List<Vacancy> favorites,
            bool isExtension, PaginationVacancy pagination, String status)?
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
    required TResult Function(EmptyVacancyUserState value) empty,
    required TResult Function(LoadingVacanciesUserState value) loading,
    required TResult Function(LoadedVacanciesUserState value) loaded,
    required TResult Function(ErrorVacanciesUserState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyVacancyUserState value)? empty,
    TResult Function(LoadingVacanciesUserState value)? loading,
    TResult Function(LoadedVacanciesUserState value)? loaded,
    TResult Function(ErrorVacanciesUserState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyVacancyUserState implements VacanciesUserState {
  const factory EmptyVacancyUserState() = _$EmptyVacancyUserState;
}

/// @nodoc
abstract class $LoadingVacanciesUserStateCopyWith<$Res> {
  factory $LoadingVacanciesUserStateCopyWith(LoadingVacanciesUserState value,
          $Res Function(LoadingVacanciesUserState) then) =
      _$LoadingVacanciesUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingVacanciesUserStateCopyWithImpl<$Res>
    extends _$VacanciesUserStateCopyWithImpl<$Res>
    implements $LoadingVacanciesUserStateCopyWith<$Res> {
  _$LoadingVacanciesUserStateCopyWithImpl(LoadingVacanciesUserState _value,
      $Res Function(LoadingVacanciesUserState) _then)
      : super(_value, (v) => _then(v as LoadingVacanciesUserState));

  @override
  LoadingVacanciesUserState get _value =>
      super._value as LoadingVacanciesUserState;
}

/// @nodoc

class _$LoadingVacanciesUserState implements LoadingVacanciesUserState {
  const _$LoadingVacanciesUserState();

  @override
  String toString() {
    return 'VacanciesUserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingVacanciesUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Vacancy> vacancies, List<Vacancy> favorites,
            bool isExtension, PaginationVacancy pagination, String status)
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
    TResult Function(List<Vacancy> vacancies, List<Vacancy> favorites,
            bool isExtension, PaginationVacancy pagination, String status)?
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
    required TResult Function(EmptyVacancyUserState value) empty,
    required TResult Function(LoadingVacanciesUserState value) loading,
    required TResult Function(LoadedVacanciesUserState value) loaded,
    required TResult Function(ErrorVacanciesUserState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyVacancyUserState value)? empty,
    TResult Function(LoadingVacanciesUserState value)? loading,
    TResult Function(LoadedVacanciesUserState value)? loaded,
    TResult Function(ErrorVacanciesUserState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingVacanciesUserState implements VacanciesUserState {
  const factory LoadingVacanciesUserState() = _$LoadingVacanciesUserState;
}

/// @nodoc
abstract class $LoadedVacanciesUserStateCopyWith<$Res> {
  factory $LoadedVacanciesUserStateCopyWith(LoadedVacanciesUserState value,
          $Res Function(LoadedVacanciesUserState) then) =
      _$LoadedVacanciesUserStateCopyWithImpl<$Res>;
  $Res call(
      {List<Vacancy> vacancies,
      List<Vacancy> favorites,
      bool isExtension,
      PaginationVacancy pagination,
      String status});
}

/// @nodoc
class _$LoadedVacanciesUserStateCopyWithImpl<$Res>
    extends _$VacanciesUserStateCopyWithImpl<$Res>
    implements $LoadedVacanciesUserStateCopyWith<$Res> {
  _$LoadedVacanciesUserStateCopyWithImpl(LoadedVacanciesUserState _value,
      $Res Function(LoadedVacanciesUserState) _then)
      : super(_value, (v) => _then(v as LoadedVacanciesUserState));

  @override
  LoadedVacanciesUserState get _value =>
      super._value as LoadedVacanciesUserState;

  @override
  $Res call({
    Object? vacancies = freezed,
    Object? favorites = freezed,
    Object? isExtension = freezed,
    Object? pagination = freezed,
    Object? status = freezed,
  }) {
    return _then(LoadedVacanciesUserState(
      vacancies: vacancies == freezed
          ? _value.vacancies
          : vacancies // ignore: cast_nullable_to_non_nullable
              as List<Vacancy>,
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Vacancy>,
      isExtension: isExtension == freezed
          ? _value.isExtension
          : isExtension // ignore: cast_nullable_to_non_nullable
              as bool,
      pagination: pagination == freezed
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationVacancy,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedVacanciesUserState implements LoadedVacanciesUserState {
  const _$LoadedVacanciesUserState(
      {required this.vacancies,
      required this.favorites,
      required this.isExtension,
      required this.pagination,
      required this.status});

  @override
  final List<Vacancy> vacancies;
  @override
  final List<Vacancy> favorites;
  @override
  final bool isExtension;
  @override
  final PaginationVacancy pagination;
  @override
  final String status;

  @override
  String toString() {
    return 'VacanciesUserState.loaded(vacancies: $vacancies, favorites: $favorites, isExtension: $isExtension, pagination: $pagination, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedVacanciesUserState &&
            (identical(other.vacancies, vacancies) ||
                const DeepCollectionEquality()
                    .equals(other.vacancies, vacancies)) &&
            (identical(other.favorites, favorites) ||
                const DeepCollectionEquality()
                    .equals(other.favorites, favorites)) &&
            (identical(other.isExtension, isExtension) ||
                const DeepCollectionEquality()
                    .equals(other.isExtension, isExtension)) &&
            (identical(other.pagination, pagination) ||
                const DeepCollectionEquality()
                    .equals(other.pagination, pagination)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(vacancies) ^
      const DeepCollectionEquality().hash(favorites) ^
      const DeepCollectionEquality().hash(isExtension) ^
      const DeepCollectionEquality().hash(pagination) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $LoadedVacanciesUserStateCopyWith<LoadedVacanciesUserState> get copyWith =>
      _$LoadedVacanciesUserStateCopyWithImpl<LoadedVacanciesUserState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Vacancy> vacancies, List<Vacancy> favorites,
            bool isExtension, PaginationVacancy pagination, String status)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(vacancies, favorites, isExtension, pagination, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Vacancy> vacancies, List<Vacancy> favorites,
            bool isExtension, PaginationVacancy pagination, String status)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(vacancies, favorites, isExtension, pagination, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyVacancyUserState value) empty,
    required TResult Function(LoadingVacanciesUserState value) loading,
    required TResult Function(LoadedVacanciesUserState value) loaded,
    required TResult Function(ErrorVacanciesUserState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyVacancyUserState value)? empty,
    TResult Function(LoadingVacanciesUserState value)? loading,
    TResult Function(LoadedVacanciesUserState value)? loaded,
    TResult Function(ErrorVacanciesUserState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedVacanciesUserState implements VacanciesUserState {
  const factory LoadedVacanciesUserState(
      {required List<Vacancy> vacancies,
      required List<Vacancy> favorites,
      required bool isExtension,
      required PaginationVacancy pagination,
      required String status}) = _$LoadedVacanciesUserState;

  List<Vacancy> get vacancies => throw _privateConstructorUsedError;
  List<Vacancy> get favorites => throw _privateConstructorUsedError;
  bool get isExtension => throw _privateConstructorUsedError;
  PaginationVacancy get pagination => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedVacanciesUserStateCopyWith<LoadedVacanciesUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorVacanciesUserStateCopyWith<$Res> {
  factory $ErrorVacanciesUserStateCopyWith(ErrorVacanciesUserState value,
          $Res Function(ErrorVacanciesUserState) then) =
      _$ErrorVacanciesUserStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorVacanciesUserStateCopyWithImpl<$Res>
    extends _$VacanciesUserStateCopyWithImpl<$Res>
    implements $ErrorVacanciesUserStateCopyWith<$Res> {
  _$ErrorVacanciesUserStateCopyWithImpl(ErrorVacanciesUserState _value,
      $Res Function(ErrorVacanciesUserState) _then)
      : super(_value, (v) => _then(v as ErrorVacanciesUserState));

  @override
  ErrorVacanciesUserState get _value => super._value as ErrorVacanciesUserState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorVacanciesUserState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorVacanciesUserState implements ErrorVacanciesUserState {
  const _$ErrorVacanciesUserState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'VacanciesUserState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorVacanciesUserState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorVacanciesUserStateCopyWith<ErrorVacanciesUserState> get copyWith =>
      _$ErrorVacanciesUserStateCopyWithImpl<ErrorVacanciesUserState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Vacancy> vacancies, List<Vacancy> favorites,
            bool isExtension, PaginationVacancy pagination, String status)
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
    TResult Function(List<Vacancy> vacancies, List<Vacancy> favorites,
            bool isExtension, PaginationVacancy pagination, String status)?
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
    required TResult Function(EmptyVacancyUserState value) empty,
    required TResult Function(LoadingVacanciesUserState value) loading,
    required TResult Function(LoadedVacanciesUserState value) loaded,
    required TResult Function(ErrorVacanciesUserState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyVacancyUserState value)? empty,
    TResult Function(LoadingVacanciesUserState value)? loading,
    TResult Function(LoadedVacanciesUserState value)? loaded,
    TResult Function(ErrorVacanciesUserState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorVacanciesUserState implements VacanciesUserState {
  const factory ErrorVacanciesUserState({required String message}) =
      _$ErrorVacanciesUserState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorVacanciesUserStateCopyWith<ErrorVacanciesUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
