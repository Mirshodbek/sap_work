// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilterEventTearOff {
  const _$FilterEventTearOff();

  _InitialFilterEvent initial() {
    return const _InitialFilterEvent();
  }

  _ToggleCheckboxFilterEvent toggleCheckbox({required String title}) {
    return _ToggleCheckboxFilterEvent(
      title: title,
    );
  }

  _OnTapFilterEvent onTap(
      {required String country, required String profession}) {
    return _OnTapFilterEvent(
      country: country,
      profession: profession,
    );
  }

  _OnTapTypeFilterEvent onTapType({required String? employmentType}) {
    return _OnTapTypeFilterEvent(
      employmentType: employmentType,
    );
  }

  _SearchFilterEvent search({required String search}) {
    return _SearchFilterEvent(
      search: search,
    );
  }
}

/// @nodoc
const $FilterEvent = _$FilterEventTearOff();

/// @nodoc
mixin _$FilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String title) toggleCheckbox,
    required TResult Function(String country, String profession) onTap,
    required TResult Function(String? employmentType) onTapType,
    required TResult Function(String search) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String title)? toggleCheckbox,
    TResult Function(String country, String profession)? onTap,
    TResult Function(String? employmentType)? onTapType,
    TResult Function(String search)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialFilterEvent value) initial,
    required TResult Function(_ToggleCheckboxFilterEvent value) toggleCheckbox,
    required TResult Function(_OnTapFilterEvent value) onTap,
    required TResult Function(_OnTapTypeFilterEvent value) onTapType,
    required TResult Function(_SearchFilterEvent value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialFilterEvent value)? initial,
    TResult Function(_ToggleCheckboxFilterEvent value)? toggleCheckbox,
    TResult Function(_OnTapFilterEvent value)? onTap,
    TResult Function(_OnTapTypeFilterEvent value)? onTapType,
    TResult Function(_SearchFilterEvent value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterEventCopyWith<$Res> {
  factory $FilterEventCopyWith(
          FilterEvent value, $Res Function(FilterEvent) then) =
      _$FilterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilterEventCopyWithImpl<$Res> implements $FilterEventCopyWith<$Res> {
  _$FilterEventCopyWithImpl(this._value, this._then);

  final FilterEvent _value;
  // ignore: unused_field
  final $Res Function(FilterEvent) _then;
}

/// @nodoc
abstract class _$InitialFilterEventCopyWith<$Res> {
  factory _$InitialFilterEventCopyWith(
          _InitialFilterEvent value, $Res Function(_InitialFilterEvent) then) =
      __$InitialFilterEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialFilterEventCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res>
    implements _$InitialFilterEventCopyWith<$Res> {
  __$InitialFilterEventCopyWithImpl(
      _InitialFilterEvent _value, $Res Function(_InitialFilterEvent) _then)
      : super(_value, (v) => _then(v as _InitialFilterEvent));

  @override
  _InitialFilterEvent get _value => super._value as _InitialFilterEvent;
}

/// @nodoc

class _$_InitialFilterEvent implements _InitialFilterEvent {
  const _$_InitialFilterEvent();

  @override
  String toString() {
    return 'FilterEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialFilterEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String title) toggleCheckbox,
    required TResult Function(String country, String profession) onTap,
    required TResult Function(String? employmentType) onTapType,
    required TResult Function(String search) search,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String title)? toggleCheckbox,
    TResult Function(String country, String profession)? onTap,
    TResult Function(String? employmentType)? onTapType,
    TResult Function(String search)? search,
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
    required TResult Function(_InitialFilterEvent value) initial,
    required TResult Function(_ToggleCheckboxFilterEvent value) toggleCheckbox,
    required TResult Function(_OnTapFilterEvent value) onTap,
    required TResult Function(_OnTapTypeFilterEvent value) onTapType,
    required TResult Function(_SearchFilterEvent value) search,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialFilterEvent value)? initial,
    TResult Function(_ToggleCheckboxFilterEvent value)? toggleCheckbox,
    TResult Function(_OnTapFilterEvent value)? onTap,
    TResult Function(_OnTapTypeFilterEvent value)? onTapType,
    TResult Function(_SearchFilterEvent value)? search,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialFilterEvent implements FilterEvent {
  const factory _InitialFilterEvent() = _$_InitialFilterEvent;
}

/// @nodoc
abstract class _$ToggleCheckboxFilterEventCopyWith<$Res> {
  factory _$ToggleCheckboxFilterEventCopyWith(_ToggleCheckboxFilterEvent value,
          $Res Function(_ToggleCheckboxFilterEvent) then) =
      __$ToggleCheckboxFilterEventCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$ToggleCheckboxFilterEventCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res>
    implements _$ToggleCheckboxFilterEventCopyWith<$Res> {
  __$ToggleCheckboxFilterEventCopyWithImpl(_ToggleCheckboxFilterEvent _value,
      $Res Function(_ToggleCheckboxFilterEvent) _then)
      : super(_value, (v) => _then(v as _ToggleCheckboxFilterEvent));

  @override
  _ToggleCheckboxFilterEvent get _value =>
      super._value as _ToggleCheckboxFilterEvent;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_ToggleCheckboxFilterEvent(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ToggleCheckboxFilterEvent implements _ToggleCheckboxFilterEvent {
  const _$_ToggleCheckboxFilterEvent({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'FilterEvent.toggleCheckbox(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToggleCheckboxFilterEvent &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$ToggleCheckboxFilterEventCopyWith<_ToggleCheckboxFilterEvent>
      get copyWith =>
          __$ToggleCheckboxFilterEventCopyWithImpl<_ToggleCheckboxFilterEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String title) toggleCheckbox,
    required TResult Function(String country, String profession) onTap,
    required TResult Function(String? employmentType) onTapType,
    required TResult Function(String search) search,
  }) {
    return toggleCheckbox(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String title)? toggleCheckbox,
    TResult Function(String country, String profession)? onTap,
    TResult Function(String? employmentType)? onTapType,
    TResult Function(String search)? search,
    required TResult orElse(),
  }) {
    if (toggleCheckbox != null) {
      return toggleCheckbox(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialFilterEvent value) initial,
    required TResult Function(_ToggleCheckboxFilterEvent value) toggleCheckbox,
    required TResult Function(_OnTapFilterEvent value) onTap,
    required TResult Function(_OnTapTypeFilterEvent value) onTapType,
    required TResult Function(_SearchFilterEvent value) search,
  }) {
    return toggleCheckbox(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialFilterEvent value)? initial,
    TResult Function(_ToggleCheckboxFilterEvent value)? toggleCheckbox,
    TResult Function(_OnTapFilterEvent value)? onTap,
    TResult Function(_OnTapTypeFilterEvent value)? onTapType,
    TResult Function(_SearchFilterEvent value)? search,
    required TResult orElse(),
  }) {
    if (toggleCheckbox != null) {
      return toggleCheckbox(this);
    }
    return orElse();
  }
}

abstract class _ToggleCheckboxFilterEvent implements FilterEvent {
  const factory _ToggleCheckboxFilterEvent({required String title}) =
      _$_ToggleCheckboxFilterEvent;

  String get title => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ToggleCheckboxFilterEventCopyWith<_ToggleCheckboxFilterEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnTapFilterEventCopyWith<$Res> {
  factory _$OnTapFilterEventCopyWith(
          _OnTapFilterEvent value, $Res Function(_OnTapFilterEvent) then) =
      __$OnTapFilterEventCopyWithImpl<$Res>;
  $Res call({String country, String profession});
}

/// @nodoc
class __$OnTapFilterEventCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res>
    implements _$OnTapFilterEventCopyWith<$Res> {
  __$OnTapFilterEventCopyWithImpl(
      _OnTapFilterEvent _value, $Res Function(_OnTapFilterEvent) _then)
      : super(_value, (v) => _then(v as _OnTapFilterEvent));

  @override
  _OnTapFilterEvent get _value => super._value as _OnTapFilterEvent;

  @override
  $Res call({
    Object? country = freezed,
    Object? profession = freezed,
  }) {
    return _then(_OnTapFilterEvent(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      profession: profession == freezed
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnTapFilterEvent implements _OnTapFilterEvent {
  const _$_OnTapFilterEvent({required this.country, required this.profession});

  @override
  final String country;
  @override
  final String profession;

  @override
  String toString() {
    return 'FilterEvent.onTap(country: $country, profession: $profession)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnTapFilterEvent &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.profession, profession) ||
                const DeepCollectionEquality()
                    .equals(other.profession, profession)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(profession);

  @JsonKey(ignore: true)
  @override
  _$OnTapFilterEventCopyWith<_OnTapFilterEvent> get copyWith =>
      __$OnTapFilterEventCopyWithImpl<_OnTapFilterEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String title) toggleCheckbox,
    required TResult Function(String country, String profession) onTap,
    required TResult Function(String? employmentType) onTapType,
    required TResult Function(String search) search,
  }) {
    return onTap(country, profession);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String title)? toggleCheckbox,
    TResult Function(String country, String profession)? onTap,
    TResult Function(String? employmentType)? onTapType,
    TResult Function(String search)? search,
    required TResult orElse(),
  }) {
    if (onTap != null) {
      return onTap(country, profession);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialFilterEvent value) initial,
    required TResult Function(_ToggleCheckboxFilterEvent value) toggleCheckbox,
    required TResult Function(_OnTapFilterEvent value) onTap,
    required TResult Function(_OnTapTypeFilterEvent value) onTapType,
    required TResult Function(_SearchFilterEvent value) search,
  }) {
    return onTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialFilterEvent value)? initial,
    TResult Function(_ToggleCheckboxFilterEvent value)? toggleCheckbox,
    TResult Function(_OnTapFilterEvent value)? onTap,
    TResult Function(_OnTapTypeFilterEvent value)? onTapType,
    TResult Function(_SearchFilterEvent value)? search,
    required TResult orElse(),
  }) {
    if (onTap != null) {
      return onTap(this);
    }
    return orElse();
  }
}

abstract class _OnTapFilterEvent implements FilterEvent {
  const factory _OnTapFilterEvent(
      {required String country,
      required String profession}) = _$_OnTapFilterEvent;

  String get country => throw _privateConstructorUsedError;
  String get profession => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnTapFilterEventCopyWith<_OnTapFilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnTapTypeFilterEventCopyWith<$Res> {
  factory _$OnTapTypeFilterEventCopyWith(_OnTapTypeFilterEvent value,
          $Res Function(_OnTapTypeFilterEvent) then) =
      __$OnTapTypeFilterEventCopyWithImpl<$Res>;
  $Res call({String? employmentType});
}

/// @nodoc
class __$OnTapTypeFilterEventCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res>
    implements _$OnTapTypeFilterEventCopyWith<$Res> {
  __$OnTapTypeFilterEventCopyWithImpl(
      _OnTapTypeFilterEvent _value, $Res Function(_OnTapTypeFilterEvent) _then)
      : super(_value, (v) => _then(v as _OnTapTypeFilterEvent));

  @override
  _OnTapTypeFilterEvent get _value => super._value as _OnTapTypeFilterEvent;

  @override
  $Res call({
    Object? employmentType = freezed,
  }) {
    return _then(_OnTapTypeFilterEvent(
      employmentType: employmentType == freezed
          ? _value.employmentType
          : employmentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_OnTapTypeFilterEvent implements _OnTapTypeFilterEvent {
  const _$_OnTapTypeFilterEvent({required this.employmentType});

  @override
  final String? employmentType;

  @override
  String toString() {
    return 'FilterEvent.onTapType(employmentType: $employmentType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnTapTypeFilterEvent &&
            (identical(other.employmentType, employmentType) ||
                const DeepCollectionEquality()
                    .equals(other.employmentType, employmentType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(employmentType);

  @JsonKey(ignore: true)
  @override
  _$OnTapTypeFilterEventCopyWith<_OnTapTypeFilterEvent> get copyWith =>
      __$OnTapTypeFilterEventCopyWithImpl<_OnTapTypeFilterEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String title) toggleCheckbox,
    required TResult Function(String country, String profession) onTap,
    required TResult Function(String? employmentType) onTapType,
    required TResult Function(String search) search,
  }) {
    return onTapType(employmentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String title)? toggleCheckbox,
    TResult Function(String country, String profession)? onTap,
    TResult Function(String? employmentType)? onTapType,
    TResult Function(String search)? search,
    required TResult orElse(),
  }) {
    if (onTapType != null) {
      return onTapType(employmentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialFilterEvent value) initial,
    required TResult Function(_ToggleCheckboxFilterEvent value) toggleCheckbox,
    required TResult Function(_OnTapFilterEvent value) onTap,
    required TResult Function(_OnTapTypeFilterEvent value) onTapType,
    required TResult Function(_SearchFilterEvent value) search,
  }) {
    return onTapType(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialFilterEvent value)? initial,
    TResult Function(_ToggleCheckboxFilterEvent value)? toggleCheckbox,
    TResult Function(_OnTapFilterEvent value)? onTap,
    TResult Function(_OnTapTypeFilterEvent value)? onTapType,
    TResult Function(_SearchFilterEvent value)? search,
    required TResult orElse(),
  }) {
    if (onTapType != null) {
      return onTapType(this);
    }
    return orElse();
  }
}

abstract class _OnTapTypeFilterEvent implements FilterEvent {
  const factory _OnTapTypeFilterEvent({required String? employmentType}) =
      _$_OnTapTypeFilterEvent;

  String? get employmentType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnTapTypeFilterEventCopyWith<_OnTapTypeFilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchFilterEventCopyWith<$Res> {
  factory _$SearchFilterEventCopyWith(
          _SearchFilterEvent value, $Res Function(_SearchFilterEvent) then) =
      __$SearchFilterEventCopyWithImpl<$Res>;
  $Res call({String search});
}

/// @nodoc
class __$SearchFilterEventCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res>
    implements _$SearchFilterEventCopyWith<$Res> {
  __$SearchFilterEventCopyWithImpl(
      _SearchFilterEvent _value, $Res Function(_SearchFilterEvent) _then)
      : super(_value, (v) => _then(v as _SearchFilterEvent));

  @override
  _SearchFilterEvent get _value => super._value as _SearchFilterEvent;

  @override
  $Res call({
    Object? search = freezed,
  }) {
    return _then(_SearchFilterEvent(
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchFilterEvent implements _SearchFilterEvent {
  const _$_SearchFilterEvent({required this.search});

  @override
  final String search;

  @override
  String toString() {
    return 'FilterEvent.search(search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchFilterEvent &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(search);

  @JsonKey(ignore: true)
  @override
  _$SearchFilterEventCopyWith<_SearchFilterEvent> get copyWith =>
      __$SearchFilterEventCopyWithImpl<_SearchFilterEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String title) toggleCheckbox,
    required TResult Function(String country, String profession) onTap,
    required TResult Function(String? employmentType) onTapType,
    required TResult Function(String search) search,
  }) {
    return search(this.search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String title)? toggleCheckbox,
    TResult Function(String country, String profession)? onTap,
    TResult Function(String? employmentType)? onTapType,
    TResult Function(String search)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this.search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialFilterEvent value) initial,
    required TResult Function(_ToggleCheckboxFilterEvent value) toggleCheckbox,
    required TResult Function(_OnTapFilterEvent value) onTap,
    required TResult Function(_OnTapTypeFilterEvent value) onTapType,
    required TResult Function(_SearchFilterEvent value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialFilterEvent value)? initial,
    TResult Function(_ToggleCheckboxFilterEvent value)? toggleCheckbox,
    TResult Function(_OnTapFilterEvent value)? onTap,
    TResult Function(_OnTapTypeFilterEvent value)? onTapType,
    TResult Function(_SearchFilterEvent value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _SearchFilterEvent implements FilterEvent {
  const factory _SearchFilterEvent({required String search}) =
      _$_SearchFilterEvent;

  String get search => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchFilterEventCopyWith<_SearchFilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FilterStateTearOff {
  const _$FilterStateTearOff();

  InitialFilterState initial() {
    return const InitialFilterState();
  }

  FilterScreenState filter(
      {required List<SkillState> checkBoxes,
      required List<String> countries,
      required List<String> professions,
      required String country,
      required String profession,
      required String? employmentType}) {
    return FilterScreenState(
      checkBoxes: checkBoxes,
      countries: countries,
      professions: professions,
      country: country,
      profession: profession,
      employmentType: employmentType,
    );
  }
}

/// @nodoc
const $FilterState = _$FilterStateTearOff();

/// @nodoc
mixin _$FilterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<SkillState> checkBoxes,
            List<String> countries,
            List<String> professions,
            String country,
            String profession,
            String? employmentType)
        filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<SkillState> checkBoxes,
            List<String> countries,
            List<String> professions,
            String country,
            String profession,
            String? employmentType)?
        filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialFilterState value) initial,
    required TResult Function(FilterScreenState value) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialFilterState value)? initial,
    TResult Function(FilterScreenState value)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res> implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  final FilterState _value;
  // ignore: unused_field
  final $Res Function(FilterState) _then;
}

/// @nodoc
abstract class $InitialFilterStateCopyWith<$Res> {
  factory $InitialFilterStateCopyWith(
          InitialFilterState value, $Res Function(InitialFilterState) then) =
      _$InitialFilterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialFilterStateCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res>
    implements $InitialFilterStateCopyWith<$Res> {
  _$InitialFilterStateCopyWithImpl(
      InitialFilterState _value, $Res Function(InitialFilterState) _then)
      : super(_value, (v) => _then(v as InitialFilterState));

  @override
  InitialFilterState get _value => super._value as InitialFilterState;
}

/// @nodoc

class _$InitialFilterState implements InitialFilterState {
  const _$InitialFilterState();

  @override
  String toString() {
    return 'FilterState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialFilterState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<SkillState> checkBoxes,
            List<String> countries,
            List<String> professions,
            String country,
            String profession,
            String? employmentType)
        filter,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<SkillState> checkBoxes,
            List<String> countries,
            List<String> professions,
            String country,
            String profession,
            String? employmentType)?
        filter,
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
    required TResult Function(InitialFilterState value) initial,
    required TResult Function(FilterScreenState value) filter,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialFilterState value)? initial,
    TResult Function(FilterScreenState value)? filter,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialFilterState implements FilterState {
  const factory InitialFilterState() = _$InitialFilterState;
}

/// @nodoc
abstract class $FilterScreenStateCopyWith<$Res> {
  factory $FilterScreenStateCopyWith(
          FilterScreenState value, $Res Function(FilterScreenState) then) =
      _$FilterScreenStateCopyWithImpl<$Res>;
  $Res call(
      {List<SkillState> checkBoxes,
      List<String> countries,
      List<String> professions,
      String country,
      String profession,
      String? employmentType});
}

/// @nodoc
class _$FilterScreenStateCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res>
    implements $FilterScreenStateCopyWith<$Res> {
  _$FilterScreenStateCopyWithImpl(
      FilterScreenState _value, $Res Function(FilterScreenState) _then)
      : super(_value, (v) => _then(v as FilterScreenState));

  @override
  FilterScreenState get _value => super._value as FilterScreenState;

  @override
  $Res call({
    Object? checkBoxes = freezed,
    Object? countries = freezed,
    Object? professions = freezed,
    Object? country = freezed,
    Object? profession = freezed,
    Object? employmentType = freezed,
  }) {
    return _then(FilterScreenState(
      checkBoxes: checkBoxes == freezed
          ? _value.checkBoxes
          : checkBoxes // ignore: cast_nullable_to_non_nullable
              as List<SkillState>,
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<String>,
      professions: professions == freezed
          ? _value.professions
          : professions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      profession: profession == freezed
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
      employmentType: employmentType == freezed
          ? _value.employmentType
          : employmentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FilterScreenState implements FilterScreenState {
  const _$FilterScreenState(
      {required this.checkBoxes,
      required this.countries,
      required this.professions,
      required this.country,
      required this.profession,
      required this.employmentType});

  @override
  final List<SkillState> checkBoxes;
  @override
  final List<String> countries;
  @override
  final List<String> professions;
  @override
  final String country;
  @override
  final String profession;
  @override
  final String? employmentType;

  @override
  String toString() {
    return 'FilterState.filter(checkBoxes: $checkBoxes, countries: $countries, professions: $professions, country: $country, profession: $profession, employmentType: $employmentType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FilterScreenState &&
            (identical(other.checkBoxes, checkBoxes) ||
                const DeepCollectionEquality()
                    .equals(other.checkBoxes, checkBoxes)) &&
            (identical(other.countries, countries) ||
                const DeepCollectionEquality()
                    .equals(other.countries, countries)) &&
            (identical(other.professions, professions) ||
                const DeepCollectionEquality()
                    .equals(other.professions, professions)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.profession, profession) ||
                const DeepCollectionEquality()
                    .equals(other.profession, profession)) &&
            (identical(other.employmentType, employmentType) ||
                const DeepCollectionEquality()
                    .equals(other.employmentType, employmentType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(checkBoxes) ^
      const DeepCollectionEquality().hash(countries) ^
      const DeepCollectionEquality().hash(professions) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(profession) ^
      const DeepCollectionEquality().hash(employmentType);

  @JsonKey(ignore: true)
  @override
  $FilterScreenStateCopyWith<FilterScreenState> get copyWith =>
      _$FilterScreenStateCopyWithImpl<FilterScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<SkillState> checkBoxes,
            List<String> countries,
            List<String> professions,
            String country,
            String profession,
            String? employmentType)
        filter,
  }) {
    return filter(checkBoxes, countries, professions, country, profession,
        employmentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<SkillState> checkBoxes,
            List<String> countries,
            List<String> professions,
            String country,
            String profession,
            String? employmentType)?
        filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(checkBoxes, countries, professions, country, profession,
          employmentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialFilterState value) initial,
    required TResult Function(FilterScreenState value) filter,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialFilterState value)? initial,
    TResult Function(FilterScreenState value)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class FilterScreenState implements FilterState {
  const factory FilterScreenState(
      {required List<SkillState> checkBoxes,
      required List<String> countries,
      required List<String> professions,
      required String country,
      required String profession,
      required String? employmentType}) = _$FilterScreenState;

  List<SkillState> get checkBoxes => throw _privateConstructorUsedError;
  List<String> get countries => throw _privateConstructorUsedError;
  List<String> get professions => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get profession => throw _privateConstructorUsedError;
  String? get employmentType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterScreenStateCopyWith<FilterScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
