// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'vacancies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VacanciesEventTearOff {
  const _$VacanciesEventTearOff();

  _InitialVacanciesEvent initial() {
    return const _InitialVacanciesEvent();
  }

  _SelectedViewVacanciesEvent selectedView({required bool isExtension}) {
    return _SelectedViewVacanciesEvent(
      isExtension: isExtension,
    );
  }

  _SearchVacanciesEvent searchVacancies({required String search}) {
    return _SearchVacanciesEvent(
      search: search,
    );
  }

  _ToggleVacanciesEvent toggleVacancies({required int id}) {
    return _ToggleVacanciesEvent(
      id: id,
    );
  }
}

/// @nodoc
const $VacanciesEvent = _$VacanciesEventTearOff();

/// @nodoc
mixin _$VacanciesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isExtension) selectedView,
    required TResult Function(String search) searchVacancies,
    required TResult Function(int id) toggleVacancies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isExtension)? selectedView,
    TResult Function(String search)? searchVacancies,
    TResult Function(int id)? toggleVacancies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialVacanciesEvent value) initial,
    required TResult Function(_SelectedViewVacanciesEvent value) selectedView,
    required TResult Function(_SearchVacanciesEvent value) searchVacancies,
    required TResult Function(_ToggleVacanciesEvent value) toggleVacancies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVacanciesEvent value)? initial,
    TResult Function(_SelectedViewVacanciesEvent value)? selectedView,
    TResult Function(_SearchVacanciesEvent value)? searchVacancies,
    TResult Function(_ToggleVacanciesEvent value)? toggleVacancies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VacanciesEventCopyWith<$Res> {
  factory $VacanciesEventCopyWith(
          VacanciesEvent value, $Res Function(VacanciesEvent) then) =
      _$VacanciesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VacanciesEventCopyWithImpl<$Res>
    implements $VacanciesEventCopyWith<$Res> {
  _$VacanciesEventCopyWithImpl(this._value, this._then);

  final VacanciesEvent _value;
  // ignore: unused_field
  final $Res Function(VacanciesEvent) _then;
}

/// @nodoc
abstract class _$InitialVacanciesEventCopyWith<$Res> {
  factory _$InitialVacanciesEventCopyWith(_InitialVacanciesEvent value,
          $Res Function(_InitialVacanciesEvent) then) =
      __$InitialVacanciesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialVacanciesEventCopyWithImpl<$Res>
    extends _$VacanciesEventCopyWithImpl<$Res>
    implements _$InitialVacanciesEventCopyWith<$Res> {
  __$InitialVacanciesEventCopyWithImpl(_InitialVacanciesEvent _value,
      $Res Function(_InitialVacanciesEvent) _then)
      : super(_value, (v) => _then(v as _InitialVacanciesEvent));

  @override
  _InitialVacanciesEvent get _value => super._value as _InitialVacanciesEvent;
}

/// @nodoc

class _$_InitialVacanciesEvent implements _InitialVacanciesEvent {
  const _$_InitialVacanciesEvent();

  @override
  String toString() {
    return 'VacanciesEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialVacanciesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isExtension) selectedView,
    required TResult Function(String search) searchVacancies,
    required TResult Function(int id) toggleVacancies,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isExtension)? selectedView,
    TResult Function(String search)? searchVacancies,
    TResult Function(int id)? toggleVacancies,
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
    required TResult Function(_InitialVacanciesEvent value) initial,
    required TResult Function(_SelectedViewVacanciesEvent value) selectedView,
    required TResult Function(_SearchVacanciesEvent value) searchVacancies,
    required TResult Function(_ToggleVacanciesEvent value) toggleVacancies,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVacanciesEvent value)? initial,
    TResult Function(_SelectedViewVacanciesEvent value)? selectedView,
    TResult Function(_SearchVacanciesEvent value)? searchVacancies,
    TResult Function(_ToggleVacanciesEvent value)? toggleVacancies,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialVacanciesEvent implements VacanciesEvent {
  const factory _InitialVacanciesEvent() = _$_InitialVacanciesEvent;
}

/// @nodoc
abstract class _$SelectedViewVacanciesEventCopyWith<$Res> {
  factory _$SelectedViewVacanciesEventCopyWith(
          _SelectedViewVacanciesEvent value,
          $Res Function(_SelectedViewVacanciesEvent) then) =
      __$SelectedViewVacanciesEventCopyWithImpl<$Res>;
  $Res call({bool isExtension});
}

/// @nodoc
class __$SelectedViewVacanciesEventCopyWithImpl<$Res>
    extends _$VacanciesEventCopyWithImpl<$Res>
    implements _$SelectedViewVacanciesEventCopyWith<$Res> {
  __$SelectedViewVacanciesEventCopyWithImpl(_SelectedViewVacanciesEvent _value,
      $Res Function(_SelectedViewVacanciesEvent) _then)
      : super(_value, (v) => _then(v as _SelectedViewVacanciesEvent));

  @override
  _SelectedViewVacanciesEvent get _value =>
      super._value as _SelectedViewVacanciesEvent;

  @override
  $Res call({
    Object? isExtension = freezed,
  }) {
    return _then(_SelectedViewVacanciesEvent(
      isExtension: isExtension == freezed
          ? _value.isExtension
          : isExtension // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SelectedViewVacanciesEvent implements _SelectedViewVacanciesEvent {
  const _$_SelectedViewVacanciesEvent({required this.isExtension});

  @override
  final bool isExtension;

  @override
  String toString() {
    return 'VacanciesEvent.selectedView(isExtension: $isExtension)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedViewVacanciesEvent &&
            (identical(other.isExtension, isExtension) ||
                const DeepCollectionEquality()
                    .equals(other.isExtension, isExtension)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isExtension);

  @JsonKey(ignore: true)
  @override
  _$SelectedViewVacanciesEventCopyWith<_SelectedViewVacanciesEvent>
      get copyWith => __$SelectedViewVacanciesEventCopyWithImpl<
          _SelectedViewVacanciesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isExtension) selectedView,
    required TResult Function(String search) searchVacancies,
    required TResult Function(int id) toggleVacancies,
  }) {
    return selectedView(isExtension);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isExtension)? selectedView,
    TResult Function(String search)? searchVacancies,
    TResult Function(int id)? toggleVacancies,
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
    required TResult Function(_InitialVacanciesEvent value) initial,
    required TResult Function(_SelectedViewVacanciesEvent value) selectedView,
    required TResult Function(_SearchVacanciesEvent value) searchVacancies,
    required TResult Function(_ToggleVacanciesEvent value) toggleVacancies,
  }) {
    return selectedView(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVacanciesEvent value)? initial,
    TResult Function(_SelectedViewVacanciesEvent value)? selectedView,
    TResult Function(_SearchVacanciesEvent value)? searchVacancies,
    TResult Function(_ToggleVacanciesEvent value)? toggleVacancies,
    required TResult orElse(),
  }) {
    if (selectedView != null) {
      return selectedView(this);
    }
    return orElse();
  }
}

abstract class _SelectedViewVacanciesEvent implements VacanciesEvent {
  const factory _SelectedViewVacanciesEvent({required bool isExtension}) =
      _$_SelectedViewVacanciesEvent;

  bool get isExtension => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectedViewVacanciesEventCopyWith<_SelectedViewVacanciesEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchVacanciesEventCopyWith<$Res> {
  factory _$SearchVacanciesEventCopyWith(_SearchVacanciesEvent value,
          $Res Function(_SearchVacanciesEvent) then) =
      __$SearchVacanciesEventCopyWithImpl<$Res>;
  $Res call({String search});
}

/// @nodoc
class __$SearchVacanciesEventCopyWithImpl<$Res>
    extends _$VacanciesEventCopyWithImpl<$Res>
    implements _$SearchVacanciesEventCopyWith<$Res> {
  __$SearchVacanciesEventCopyWithImpl(
      _SearchVacanciesEvent _value, $Res Function(_SearchVacanciesEvent) _then)
      : super(_value, (v) => _then(v as _SearchVacanciesEvent));

  @override
  _SearchVacanciesEvent get _value => super._value as _SearchVacanciesEvent;

  @override
  $Res call({
    Object? search = freezed,
  }) {
    return _then(_SearchVacanciesEvent(
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchVacanciesEvent implements _SearchVacanciesEvent {
  const _$_SearchVacanciesEvent({required this.search});

  @override
  final String search;

  @override
  String toString() {
    return 'VacanciesEvent.searchVacancies(search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchVacanciesEvent &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(search);

  @JsonKey(ignore: true)
  @override
  _$SearchVacanciesEventCopyWith<_SearchVacanciesEvent> get copyWith =>
      __$SearchVacanciesEventCopyWithImpl<_SearchVacanciesEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isExtension) selectedView,
    required TResult Function(String search) searchVacancies,
    required TResult Function(int id) toggleVacancies,
  }) {
    return searchVacancies(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isExtension)? selectedView,
    TResult Function(String search)? searchVacancies,
    TResult Function(int id)? toggleVacancies,
    required TResult orElse(),
  }) {
    if (searchVacancies != null) {
      return searchVacancies(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialVacanciesEvent value) initial,
    required TResult Function(_SelectedViewVacanciesEvent value) selectedView,
    required TResult Function(_SearchVacanciesEvent value) searchVacancies,
    required TResult Function(_ToggleVacanciesEvent value) toggleVacancies,
  }) {
    return searchVacancies(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVacanciesEvent value)? initial,
    TResult Function(_SelectedViewVacanciesEvent value)? selectedView,
    TResult Function(_SearchVacanciesEvent value)? searchVacancies,
    TResult Function(_ToggleVacanciesEvent value)? toggleVacancies,
    required TResult orElse(),
  }) {
    if (searchVacancies != null) {
      return searchVacancies(this);
    }
    return orElse();
  }
}

abstract class _SearchVacanciesEvent implements VacanciesEvent {
  const factory _SearchVacanciesEvent({required String search}) =
      _$_SearchVacanciesEvent;

  String get search => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchVacanciesEventCopyWith<_SearchVacanciesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ToggleVacanciesEventCopyWith<$Res> {
  factory _$ToggleVacanciesEventCopyWith(_ToggleVacanciesEvent value,
          $Res Function(_ToggleVacanciesEvent) then) =
      __$ToggleVacanciesEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$ToggleVacanciesEventCopyWithImpl<$Res>
    extends _$VacanciesEventCopyWithImpl<$Res>
    implements _$ToggleVacanciesEventCopyWith<$Res> {
  __$ToggleVacanciesEventCopyWithImpl(
      _ToggleVacanciesEvent _value, $Res Function(_ToggleVacanciesEvent) _then)
      : super(_value, (v) => _then(v as _ToggleVacanciesEvent));

  @override
  _ToggleVacanciesEvent get _value => super._value as _ToggleVacanciesEvent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_ToggleVacanciesEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ToggleVacanciesEvent implements _ToggleVacanciesEvent {
  const _$_ToggleVacanciesEvent({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'VacanciesEvent.toggleVacancies(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToggleVacanciesEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ToggleVacanciesEventCopyWith<_ToggleVacanciesEvent> get copyWith =>
      __$ToggleVacanciesEventCopyWithImpl<_ToggleVacanciesEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isExtension) selectedView,
    required TResult Function(String search) searchVacancies,
    required TResult Function(int id) toggleVacancies,
  }) {
    return toggleVacancies(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isExtension)? selectedView,
    TResult Function(String search)? searchVacancies,
    TResult Function(int id)? toggleVacancies,
    required TResult orElse(),
  }) {
    if (toggleVacancies != null) {
      return toggleVacancies(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialVacanciesEvent value) initial,
    required TResult Function(_SelectedViewVacanciesEvent value) selectedView,
    required TResult Function(_SearchVacanciesEvent value) searchVacancies,
    required TResult Function(_ToggleVacanciesEvent value) toggleVacancies,
  }) {
    return toggleVacancies(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVacanciesEvent value)? initial,
    TResult Function(_SelectedViewVacanciesEvent value)? selectedView,
    TResult Function(_SearchVacanciesEvent value)? searchVacancies,
    TResult Function(_ToggleVacanciesEvent value)? toggleVacancies,
    required TResult orElse(),
  }) {
    if (toggleVacancies != null) {
      return toggleVacancies(this);
    }
    return orElse();
  }
}

abstract class _ToggleVacanciesEvent implements VacanciesEvent {
  const factory _ToggleVacanciesEvent({required int id}) =
      _$_ToggleVacanciesEvent;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ToggleVacanciesEventCopyWith<_ToggleVacanciesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VacanciesStateTearOff {
  const _$VacanciesStateTearOff();

  InitialVacanciesState initial() {
    return const InitialVacanciesState();
  }

  LoadedVacanciesState loadedState(
      {required bool isExtension, required List<FavoriteVacancy> vacancies}) {
    return LoadedVacanciesState(
      isExtension: isExtension,
      vacancies: vacancies,
    );
  }
}

/// @nodoc
const $VacanciesState = _$VacanciesStateTearOff();

/// @nodoc
mixin _$VacanciesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isExtension, List<FavoriteVacancy> vacancies)
        loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isExtension, List<FavoriteVacancy> vacancies)?
        loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialVacanciesState value) initial,
    required TResult Function(LoadedVacanciesState value) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialVacanciesState value)? initial,
    TResult Function(LoadedVacanciesState value)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VacanciesStateCopyWith<$Res> {
  factory $VacanciesStateCopyWith(
          VacanciesState value, $Res Function(VacanciesState) then) =
      _$VacanciesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VacanciesStateCopyWithImpl<$Res>
    implements $VacanciesStateCopyWith<$Res> {
  _$VacanciesStateCopyWithImpl(this._value, this._then);

  final VacanciesState _value;
  // ignore: unused_field
  final $Res Function(VacanciesState) _then;
}

/// @nodoc
abstract class $InitialVacanciesStateCopyWith<$Res> {
  factory $InitialVacanciesStateCopyWith(InitialVacanciesState value,
          $Res Function(InitialVacanciesState) then) =
      _$InitialVacanciesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialVacanciesStateCopyWithImpl<$Res>
    extends _$VacanciesStateCopyWithImpl<$Res>
    implements $InitialVacanciesStateCopyWith<$Res> {
  _$InitialVacanciesStateCopyWithImpl(
      InitialVacanciesState _value, $Res Function(InitialVacanciesState) _then)
      : super(_value, (v) => _then(v as InitialVacanciesState));

  @override
  InitialVacanciesState get _value => super._value as InitialVacanciesState;
}

/// @nodoc

class _$InitialVacanciesState implements InitialVacanciesState {
  const _$InitialVacanciesState();

  @override
  String toString() {
    return 'VacanciesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialVacanciesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isExtension, List<FavoriteVacancy> vacancies)
        loadedState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isExtension, List<FavoriteVacancy> vacancies)?
        loadedState,
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
    required TResult Function(InitialVacanciesState value) initial,
    required TResult Function(LoadedVacanciesState value) loadedState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialVacanciesState value)? initial,
    TResult Function(LoadedVacanciesState value)? loadedState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialVacanciesState implements VacanciesState {
  const factory InitialVacanciesState() = _$InitialVacanciesState;
}

/// @nodoc
abstract class $LoadedVacanciesStateCopyWith<$Res> {
  factory $LoadedVacanciesStateCopyWith(LoadedVacanciesState value,
          $Res Function(LoadedVacanciesState) then) =
      _$LoadedVacanciesStateCopyWithImpl<$Res>;
  $Res call({bool isExtension, List<FavoriteVacancy> vacancies});
}

/// @nodoc
class _$LoadedVacanciesStateCopyWithImpl<$Res>
    extends _$VacanciesStateCopyWithImpl<$Res>
    implements $LoadedVacanciesStateCopyWith<$Res> {
  _$LoadedVacanciesStateCopyWithImpl(
      LoadedVacanciesState _value, $Res Function(LoadedVacanciesState) _then)
      : super(_value, (v) => _then(v as LoadedVacanciesState));

  @override
  LoadedVacanciesState get _value => super._value as LoadedVacanciesState;

  @override
  $Res call({
    Object? isExtension = freezed,
    Object? vacancies = freezed,
  }) {
    return _then(LoadedVacanciesState(
      isExtension: isExtension == freezed
          ? _value.isExtension
          : isExtension // ignore: cast_nullable_to_non_nullable
              as bool,
      vacancies: vacancies == freezed
          ? _value.vacancies
          : vacancies // ignore: cast_nullable_to_non_nullable
              as List<FavoriteVacancy>,
    ));
  }
}

/// @nodoc

class _$LoadedVacanciesState implements LoadedVacanciesState {
  const _$LoadedVacanciesState(
      {required this.isExtension, required this.vacancies});

  @override
  final bool isExtension;
  @override
  final List<FavoriteVacancy> vacancies;

  @override
  String toString() {
    return 'VacanciesState.loadedState(isExtension: $isExtension, vacancies: $vacancies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedVacanciesState &&
            (identical(other.isExtension, isExtension) ||
                const DeepCollectionEquality()
                    .equals(other.isExtension, isExtension)) &&
            (identical(other.vacancies, vacancies) ||
                const DeepCollectionEquality()
                    .equals(other.vacancies, vacancies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isExtension) ^
      const DeepCollectionEquality().hash(vacancies);

  @JsonKey(ignore: true)
  @override
  $LoadedVacanciesStateCopyWith<LoadedVacanciesState> get copyWith =>
      _$LoadedVacanciesStateCopyWithImpl<LoadedVacanciesState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isExtension, List<FavoriteVacancy> vacancies)
        loadedState,
  }) {
    return loadedState(isExtension, vacancies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isExtension, List<FavoriteVacancy> vacancies)?
        loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(isExtension, vacancies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialVacanciesState value) initial,
    required TResult Function(LoadedVacanciesState value) loadedState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialVacanciesState value)? initial,
    TResult Function(LoadedVacanciesState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class LoadedVacanciesState implements VacanciesState {
  const factory LoadedVacanciesState(
      {required bool isExtension,
      required List<FavoriteVacancy> vacancies}) = _$LoadedVacanciesState;

  bool get isExtension => throw _privateConstructorUsedError;
  List<FavoriteVacancy> get vacancies => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedVacanciesStateCopyWith<LoadedVacanciesState> get copyWith =>
      throw _privateConstructorUsedError;
}
