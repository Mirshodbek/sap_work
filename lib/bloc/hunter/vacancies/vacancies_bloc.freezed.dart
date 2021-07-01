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

  _RefreshVacanciesEvent refresh() {
    return const _RefreshVacanciesEvent();
  }

  _SearchVacanciesEvent search({required String search}) {
    return _SearchVacanciesEvent(
      search: search,
    );
  }

  _SelectedViewVacanciesEvent selectedView({required bool isExtension}) {
    return _SelectedViewVacanciesEvent(
      isExtension: isExtension,
    );
  }

  _ToggleVacanciesEvent toggle({required int id}) {
    return _ToggleVacanciesEvent(
      id: id,
    );
  }

  _OnTapVacanciesEvent onTap({required int id}) {
    return _OnTapVacanciesEvent(
      id: id,
    );
  }

  _SendFeedbackVacanciesEvent sendFeedback({required int id}) {
    return _SendFeedbackVacanciesEvent(
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
    required TResult Function() refresh,
    required TResult Function(String search) search,
    required TResult Function(bool isExtension) selectedView,
    required TResult Function(int id) toggle,
    required TResult Function(int id) onTap,
    required TResult Function(int id) sendFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(String search)? search,
    TResult Function(bool isExtension)? selectedView,
    TResult Function(int id)? toggle,
    TResult Function(int id)? onTap,
    TResult Function(int id)? sendFeedback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialVacanciesEvent value) initial,
    required TResult Function(_RefreshVacanciesEvent value) refresh,
    required TResult Function(_SearchVacanciesEvent value) search,
    required TResult Function(_SelectedViewVacanciesEvent value) selectedView,
    required TResult Function(_ToggleVacanciesEvent value) toggle,
    required TResult Function(_OnTapVacanciesEvent value) onTap,
    required TResult Function(_SendFeedbackVacanciesEvent value) sendFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVacanciesEvent value)? initial,
    TResult Function(_RefreshVacanciesEvent value)? refresh,
    TResult Function(_SearchVacanciesEvent value)? search,
    TResult Function(_SelectedViewVacanciesEvent value)? selectedView,
    TResult Function(_ToggleVacanciesEvent value)? toggle,
    TResult Function(_OnTapVacanciesEvent value)? onTap,
    TResult Function(_SendFeedbackVacanciesEvent value)? sendFeedback,
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
    required TResult Function() refresh,
    required TResult Function(String search) search,
    required TResult Function(bool isExtension) selectedView,
    required TResult Function(int id) toggle,
    required TResult Function(int id) onTap,
    required TResult Function(int id) sendFeedback,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(String search)? search,
    TResult Function(bool isExtension)? selectedView,
    TResult Function(int id)? toggle,
    TResult Function(int id)? onTap,
    TResult Function(int id)? sendFeedback,
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
    required TResult Function(_RefreshVacanciesEvent value) refresh,
    required TResult Function(_SearchVacanciesEvent value) search,
    required TResult Function(_SelectedViewVacanciesEvent value) selectedView,
    required TResult Function(_ToggleVacanciesEvent value) toggle,
    required TResult Function(_OnTapVacanciesEvent value) onTap,
    required TResult Function(_SendFeedbackVacanciesEvent value) sendFeedback,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVacanciesEvent value)? initial,
    TResult Function(_RefreshVacanciesEvent value)? refresh,
    TResult Function(_SearchVacanciesEvent value)? search,
    TResult Function(_SelectedViewVacanciesEvent value)? selectedView,
    TResult Function(_ToggleVacanciesEvent value)? toggle,
    TResult Function(_OnTapVacanciesEvent value)? onTap,
    TResult Function(_SendFeedbackVacanciesEvent value)? sendFeedback,
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
abstract class _$RefreshVacanciesEventCopyWith<$Res> {
  factory _$RefreshVacanciesEventCopyWith(_RefreshVacanciesEvent value,
          $Res Function(_RefreshVacanciesEvent) then) =
      __$RefreshVacanciesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshVacanciesEventCopyWithImpl<$Res>
    extends _$VacanciesEventCopyWithImpl<$Res>
    implements _$RefreshVacanciesEventCopyWith<$Res> {
  __$RefreshVacanciesEventCopyWithImpl(_RefreshVacanciesEvent _value,
      $Res Function(_RefreshVacanciesEvent) _then)
      : super(_value, (v) => _then(v as _RefreshVacanciesEvent));

  @override
  _RefreshVacanciesEvent get _value => super._value as _RefreshVacanciesEvent;
}

/// @nodoc

class _$_RefreshVacanciesEvent implements _RefreshVacanciesEvent {
  const _$_RefreshVacanciesEvent();

  @override
  String toString() {
    return 'VacanciesEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RefreshVacanciesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function(String search) search,
    required TResult Function(bool isExtension) selectedView,
    required TResult Function(int id) toggle,
    required TResult Function(int id) onTap,
    required TResult Function(int id) sendFeedback,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(String search)? search,
    TResult Function(bool isExtension)? selectedView,
    TResult Function(int id)? toggle,
    TResult Function(int id)? onTap,
    TResult Function(int id)? sendFeedback,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialVacanciesEvent value) initial,
    required TResult Function(_RefreshVacanciesEvent value) refresh,
    required TResult Function(_SearchVacanciesEvent value) search,
    required TResult Function(_SelectedViewVacanciesEvent value) selectedView,
    required TResult Function(_ToggleVacanciesEvent value) toggle,
    required TResult Function(_OnTapVacanciesEvent value) onTap,
    required TResult Function(_SendFeedbackVacanciesEvent value) sendFeedback,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVacanciesEvent value)? initial,
    TResult Function(_RefreshVacanciesEvent value)? refresh,
    TResult Function(_SearchVacanciesEvent value)? search,
    TResult Function(_SelectedViewVacanciesEvent value)? selectedView,
    TResult Function(_ToggleVacanciesEvent value)? toggle,
    TResult Function(_OnTapVacanciesEvent value)? onTap,
    TResult Function(_SendFeedbackVacanciesEvent value)? sendFeedback,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _RefreshVacanciesEvent implements VacanciesEvent {
  const factory _RefreshVacanciesEvent() = _$_RefreshVacanciesEvent;
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
    return 'VacanciesEvent.search(search: $search)';
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
    required TResult Function() refresh,
    required TResult Function(String search) search,
    required TResult Function(bool isExtension) selectedView,
    required TResult Function(int id) toggle,
    required TResult Function(int id) onTap,
    required TResult Function(int id) sendFeedback,
  }) {
    return search(this.search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(String search)? search,
    TResult Function(bool isExtension)? selectedView,
    TResult Function(int id)? toggle,
    TResult Function(int id)? onTap,
    TResult Function(int id)? sendFeedback,
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
    required TResult Function(_InitialVacanciesEvent value) initial,
    required TResult Function(_RefreshVacanciesEvent value) refresh,
    required TResult Function(_SearchVacanciesEvent value) search,
    required TResult Function(_SelectedViewVacanciesEvent value) selectedView,
    required TResult Function(_ToggleVacanciesEvent value) toggle,
    required TResult Function(_OnTapVacanciesEvent value) onTap,
    required TResult Function(_SendFeedbackVacanciesEvent value) sendFeedback,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVacanciesEvent value)? initial,
    TResult Function(_RefreshVacanciesEvent value)? refresh,
    TResult Function(_SearchVacanciesEvent value)? search,
    TResult Function(_SelectedViewVacanciesEvent value)? selectedView,
    TResult Function(_ToggleVacanciesEvent value)? toggle,
    TResult Function(_OnTapVacanciesEvent value)? onTap,
    TResult Function(_SendFeedbackVacanciesEvent value)? sendFeedback,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
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
    required TResult Function() refresh,
    required TResult Function(String search) search,
    required TResult Function(bool isExtension) selectedView,
    required TResult Function(int id) toggle,
    required TResult Function(int id) onTap,
    required TResult Function(int id) sendFeedback,
  }) {
    return selectedView(isExtension);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(String search)? search,
    TResult Function(bool isExtension)? selectedView,
    TResult Function(int id)? toggle,
    TResult Function(int id)? onTap,
    TResult Function(int id)? sendFeedback,
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
    required TResult Function(_RefreshVacanciesEvent value) refresh,
    required TResult Function(_SearchVacanciesEvent value) search,
    required TResult Function(_SelectedViewVacanciesEvent value) selectedView,
    required TResult Function(_ToggleVacanciesEvent value) toggle,
    required TResult Function(_OnTapVacanciesEvent value) onTap,
    required TResult Function(_SendFeedbackVacanciesEvent value) sendFeedback,
  }) {
    return selectedView(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVacanciesEvent value)? initial,
    TResult Function(_RefreshVacanciesEvent value)? refresh,
    TResult Function(_SearchVacanciesEvent value)? search,
    TResult Function(_SelectedViewVacanciesEvent value)? selectedView,
    TResult Function(_ToggleVacanciesEvent value)? toggle,
    TResult Function(_OnTapVacanciesEvent value)? onTap,
    TResult Function(_SendFeedbackVacanciesEvent value)? sendFeedback,
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
    return 'VacanciesEvent.toggle(id: $id)';
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
    required TResult Function() refresh,
    required TResult Function(String search) search,
    required TResult Function(bool isExtension) selectedView,
    required TResult Function(int id) toggle,
    required TResult Function(int id) onTap,
    required TResult Function(int id) sendFeedback,
  }) {
    return toggle(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(String search)? search,
    TResult Function(bool isExtension)? selectedView,
    TResult Function(int id)? toggle,
    TResult Function(int id)? onTap,
    TResult Function(int id)? sendFeedback,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialVacanciesEvent value) initial,
    required TResult Function(_RefreshVacanciesEvent value) refresh,
    required TResult Function(_SearchVacanciesEvent value) search,
    required TResult Function(_SelectedViewVacanciesEvent value) selectedView,
    required TResult Function(_ToggleVacanciesEvent value) toggle,
    required TResult Function(_OnTapVacanciesEvent value) onTap,
    required TResult Function(_SendFeedbackVacanciesEvent value) sendFeedback,
  }) {
    return toggle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVacanciesEvent value)? initial,
    TResult Function(_RefreshVacanciesEvent value)? refresh,
    TResult Function(_SearchVacanciesEvent value)? search,
    TResult Function(_SelectedViewVacanciesEvent value)? selectedView,
    TResult Function(_ToggleVacanciesEvent value)? toggle,
    TResult Function(_OnTapVacanciesEvent value)? onTap,
    TResult Function(_SendFeedbackVacanciesEvent value)? sendFeedback,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(this);
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
abstract class _$OnTapVacanciesEventCopyWith<$Res> {
  factory _$OnTapVacanciesEventCopyWith(_OnTapVacanciesEvent value,
          $Res Function(_OnTapVacanciesEvent) then) =
      __$OnTapVacanciesEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$OnTapVacanciesEventCopyWithImpl<$Res>
    extends _$VacanciesEventCopyWithImpl<$Res>
    implements _$OnTapVacanciesEventCopyWith<$Res> {
  __$OnTapVacanciesEventCopyWithImpl(
      _OnTapVacanciesEvent _value, $Res Function(_OnTapVacanciesEvent) _then)
      : super(_value, (v) => _then(v as _OnTapVacanciesEvent));

  @override
  _OnTapVacanciesEvent get _value => super._value as _OnTapVacanciesEvent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_OnTapVacanciesEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OnTapVacanciesEvent implements _OnTapVacanciesEvent {
  const _$_OnTapVacanciesEvent({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'VacanciesEvent.onTap(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnTapVacanciesEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$OnTapVacanciesEventCopyWith<_OnTapVacanciesEvent> get copyWith =>
      __$OnTapVacanciesEventCopyWithImpl<_OnTapVacanciesEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function(String search) search,
    required TResult Function(bool isExtension) selectedView,
    required TResult Function(int id) toggle,
    required TResult Function(int id) onTap,
    required TResult Function(int id) sendFeedback,
  }) {
    return onTap(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(String search)? search,
    TResult Function(bool isExtension)? selectedView,
    TResult Function(int id)? toggle,
    TResult Function(int id)? onTap,
    TResult Function(int id)? sendFeedback,
    required TResult orElse(),
  }) {
    if (onTap != null) {
      return onTap(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialVacanciesEvent value) initial,
    required TResult Function(_RefreshVacanciesEvent value) refresh,
    required TResult Function(_SearchVacanciesEvent value) search,
    required TResult Function(_SelectedViewVacanciesEvent value) selectedView,
    required TResult Function(_ToggleVacanciesEvent value) toggle,
    required TResult Function(_OnTapVacanciesEvent value) onTap,
    required TResult Function(_SendFeedbackVacanciesEvent value) sendFeedback,
  }) {
    return onTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVacanciesEvent value)? initial,
    TResult Function(_RefreshVacanciesEvent value)? refresh,
    TResult Function(_SearchVacanciesEvent value)? search,
    TResult Function(_SelectedViewVacanciesEvent value)? selectedView,
    TResult Function(_ToggleVacanciesEvent value)? toggle,
    TResult Function(_OnTapVacanciesEvent value)? onTap,
    TResult Function(_SendFeedbackVacanciesEvent value)? sendFeedback,
    required TResult orElse(),
  }) {
    if (onTap != null) {
      return onTap(this);
    }
    return orElse();
  }
}

abstract class _OnTapVacanciesEvent implements VacanciesEvent {
  const factory _OnTapVacanciesEvent({required int id}) =
      _$_OnTapVacanciesEvent;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnTapVacanciesEventCopyWith<_OnTapVacanciesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendFeedbackVacanciesEventCopyWith<$Res> {
  factory _$SendFeedbackVacanciesEventCopyWith(
          _SendFeedbackVacanciesEvent value,
          $Res Function(_SendFeedbackVacanciesEvent) then) =
      __$SendFeedbackVacanciesEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$SendFeedbackVacanciesEventCopyWithImpl<$Res>
    extends _$VacanciesEventCopyWithImpl<$Res>
    implements _$SendFeedbackVacanciesEventCopyWith<$Res> {
  __$SendFeedbackVacanciesEventCopyWithImpl(_SendFeedbackVacanciesEvent _value,
      $Res Function(_SendFeedbackVacanciesEvent) _then)
      : super(_value, (v) => _then(v as _SendFeedbackVacanciesEvent));

  @override
  _SendFeedbackVacanciesEvent get _value =>
      super._value as _SendFeedbackVacanciesEvent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_SendFeedbackVacanciesEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SendFeedbackVacanciesEvent implements _SendFeedbackVacanciesEvent {
  const _$_SendFeedbackVacanciesEvent({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'VacanciesEvent.sendFeedback(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendFeedbackVacanciesEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$SendFeedbackVacanciesEventCopyWith<_SendFeedbackVacanciesEvent>
      get copyWith => __$SendFeedbackVacanciesEventCopyWithImpl<
          _SendFeedbackVacanciesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function(String search) search,
    required TResult Function(bool isExtension) selectedView,
    required TResult Function(int id) toggle,
    required TResult Function(int id) onTap,
    required TResult Function(int id) sendFeedback,
  }) {
    return sendFeedback(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(String search)? search,
    TResult Function(bool isExtension)? selectedView,
    TResult Function(int id)? toggle,
    TResult Function(int id)? onTap,
    TResult Function(int id)? sendFeedback,
    required TResult orElse(),
  }) {
    if (sendFeedback != null) {
      return sendFeedback(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialVacanciesEvent value) initial,
    required TResult Function(_RefreshVacanciesEvent value) refresh,
    required TResult Function(_SearchVacanciesEvent value) search,
    required TResult Function(_SelectedViewVacanciesEvent value) selectedView,
    required TResult Function(_ToggleVacanciesEvent value) toggle,
    required TResult Function(_OnTapVacanciesEvent value) onTap,
    required TResult Function(_SendFeedbackVacanciesEvent value) sendFeedback,
  }) {
    return sendFeedback(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVacanciesEvent value)? initial,
    TResult Function(_RefreshVacanciesEvent value)? refresh,
    TResult Function(_SearchVacanciesEvent value)? search,
    TResult Function(_SelectedViewVacanciesEvent value)? selectedView,
    TResult Function(_ToggleVacanciesEvent value)? toggle,
    TResult Function(_OnTapVacanciesEvent value)? onTap,
    TResult Function(_SendFeedbackVacanciesEvent value)? sendFeedback,
    required TResult orElse(),
  }) {
    if (sendFeedback != null) {
      return sendFeedback(this);
    }
    return orElse();
  }
}

abstract class _SendFeedbackVacanciesEvent implements VacanciesEvent {
  const factory _SendFeedbackVacanciesEvent({required int id}) =
      _$_SendFeedbackVacanciesEvent;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SendFeedbackVacanciesEventCopyWith<_SendFeedbackVacanciesEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$VacanciesStateTearOff {
  const _$VacanciesStateTearOff();

  InitialVacanciesState initial() {
    return const InitialVacanciesState();
  }

  ScreensVacanciesState screens({int? id}) {
    return ScreensVacanciesState(
      id: id,
    );
  }

  SuccessFeedbackVacanciesState successFeedback() {
    return const SuccessFeedbackVacanciesState();
  }

  LoadedVacanciesState loadedState(
      {required bool isExtension,
      required List<FavoriteVacancy> vacancies,
      required List<FavoriteVacancy> favoriteVacancies,
      required Resume resume}) {
    return LoadedVacanciesState(
      isExtension: isExtension,
      vacancies: vacancies,
      favoriteVacancies: favoriteVacancies,
      resume: resume,
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
    required TResult Function(int? id) screens,
    required TResult Function() successFeedback,
    required TResult Function(bool isExtension, List<FavoriteVacancy> vacancies,
            List<FavoriteVacancy> favoriteVacancies, Resume resume)
        loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? id)? screens,
    TResult Function()? successFeedback,
    TResult Function(bool isExtension, List<FavoriteVacancy> vacancies,
            List<FavoriteVacancy> favoriteVacancies, Resume resume)?
        loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialVacanciesState value) initial,
    required TResult Function(ScreensVacanciesState value) screens,
    required TResult Function(SuccessFeedbackVacanciesState value)
        successFeedback,
    required TResult Function(LoadedVacanciesState value) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialVacanciesState value)? initial,
    TResult Function(ScreensVacanciesState value)? screens,
    TResult Function(SuccessFeedbackVacanciesState value)? successFeedback,
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
    required TResult Function(int? id) screens,
    required TResult Function() successFeedback,
    required TResult Function(bool isExtension, List<FavoriteVacancy> vacancies,
            List<FavoriteVacancy> favoriteVacancies, Resume resume)
        loadedState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? id)? screens,
    TResult Function()? successFeedback,
    TResult Function(bool isExtension, List<FavoriteVacancy> vacancies,
            List<FavoriteVacancy> favoriteVacancies, Resume resume)?
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
    required TResult Function(ScreensVacanciesState value) screens,
    required TResult Function(SuccessFeedbackVacanciesState value)
        successFeedback,
    required TResult Function(LoadedVacanciesState value) loadedState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialVacanciesState value)? initial,
    TResult Function(ScreensVacanciesState value)? screens,
    TResult Function(SuccessFeedbackVacanciesState value)? successFeedback,
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
abstract class $ScreensVacanciesStateCopyWith<$Res> {
  factory $ScreensVacanciesStateCopyWith(ScreensVacanciesState value,
          $Res Function(ScreensVacanciesState) then) =
      _$ScreensVacanciesStateCopyWithImpl<$Res>;
  $Res call({int? id});
}

/// @nodoc
class _$ScreensVacanciesStateCopyWithImpl<$Res>
    extends _$VacanciesStateCopyWithImpl<$Res>
    implements $ScreensVacanciesStateCopyWith<$Res> {
  _$ScreensVacanciesStateCopyWithImpl(
      ScreensVacanciesState _value, $Res Function(ScreensVacanciesState) _then)
      : super(_value, (v) => _then(v as ScreensVacanciesState));

  @override
  ScreensVacanciesState get _value => super._value as ScreensVacanciesState;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(ScreensVacanciesState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ScreensVacanciesState implements ScreensVacanciesState {
  const _$ScreensVacanciesState({this.id});

  @override
  final int? id;

  @override
  String toString() {
    return 'VacanciesState.screens(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScreensVacanciesState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $ScreensVacanciesStateCopyWith<ScreensVacanciesState> get copyWith =>
      _$ScreensVacanciesStateCopyWithImpl<ScreensVacanciesState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? id) screens,
    required TResult Function() successFeedback,
    required TResult Function(bool isExtension, List<FavoriteVacancy> vacancies,
            List<FavoriteVacancy> favoriteVacancies, Resume resume)
        loadedState,
  }) {
    return screens(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? id)? screens,
    TResult Function()? successFeedback,
    TResult Function(bool isExtension, List<FavoriteVacancy> vacancies,
            List<FavoriteVacancy> favoriteVacancies, Resume resume)?
        loadedState,
    required TResult orElse(),
  }) {
    if (screens != null) {
      return screens(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialVacanciesState value) initial,
    required TResult Function(ScreensVacanciesState value) screens,
    required TResult Function(SuccessFeedbackVacanciesState value)
        successFeedback,
    required TResult Function(LoadedVacanciesState value) loadedState,
  }) {
    return screens(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialVacanciesState value)? initial,
    TResult Function(ScreensVacanciesState value)? screens,
    TResult Function(SuccessFeedbackVacanciesState value)? successFeedback,
    TResult Function(LoadedVacanciesState value)? loadedState,
    required TResult orElse(),
  }) {
    if (screens != null) {
      return screens(this);
    }
    return orElse();
  }
}

abstract class ScreensVacanciesState implements VacanciesState {
  const factory ScreensVacanciesState({int? id}) = _$ScreensVacanciesState;

  int? get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScreensVacanciesStateCopyWith<ScreensVacanciesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessFeedbackVacanciesStateCopyWith<$Res> {
  factory $SuccessFeedbackVacanciesStateCopyWith(
          SuccessFeedbackVacanciesState value,
          $Res Function(SuccessFeedbackVacanciesState) then) =
      _$SuccessFeedbackVacanciesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessFeedbackVacanciesStateCopyWithImpl<$Res>
    extends _$VacanciesStateCopyWithImpl<$Res>
    implements $SuccessFeedbackVacanciesStateCopyWith<$Res> {
  _$SuccessFeedbackVacanciesStateCopyWithImpl(
      SuccessFeedbackVacanciesState _value,
      $Res Function(SuccessFeedbackVacanciesState) _then)
      : super(_value, (v) => _then(v as SuccessFeedbackVacanciesState));

  @override
  SuccessFeedbackVacanciesState get _value =>
      super._value as SuccessFeedbackVacanciesState;
}

/// @nodoc

class _$SuccessFeedbackVacanciesState implements SuccessFeedbackVacanciesState {
  const _$SuccessFeedbackVacanciesState();

  @override
  String toString() {
    return 'VacanciesState.successFeedback()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SuccessFeedbackVacanciesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? id) screens,
    required TResult Function() successFeedback,
    required TResult Function(bool isExtension, List<FavoriteVacancy> vacancies,
            List<FavoriteVacancy> favoriteVacancies, Resume resume)
        loadedState,
  }) {
    return successFeedback();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? id)? screens,
    TResult Function()? successFeedback,
    TResult Function(bool isExtension, List<FavoriteVacancy> vacancies,
            List<FavoriteVacancy> favoriteVacancies, Resume resume)?
        loadedState,
    required TResult orElse(),
  }) {
    if (successFeedback != null) {
      return successFeedback();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialVacanciesState value) initial,
    required TResult Function(ScreensVacanciesState value) screens,
    required TResult Function(SuccessFeedbackVacanciesState value)
        successFeedback,
    required TResult Function(LoadedVacanciesState value) loadedState,
  }) {
    return successFeedback(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialVacanciesState value)? initial,
    TResult Function(ScreensVacanciesState value)? screens,
    TResult Function(SuccessFeedbackVacanciesState value)? successFeedback,
    TResult Function(LoadedVacanciesState value)? loadedState,
    required TResult orElse(),
  }) {
    if (successFeedback != null) {
      return successFeedback(this);
    }
    return orElse();
  }
}

abstract class SuccessFeedbackVacanciesState implements VacanciesState {
  const factory SuccessFeedbackVacanciesState() =
      _$SuccessFeedbackVacanciesState;
}

/// @nodoc
abstract class $LoadedVacanciesStateCopyWith<$Res> {
  factory $LoadedVacanciesStateCopyWith(LoadedVacanciesState value,
          $Res Function(LoadedVacanciesState) then) =
      _$LoadedVacanciesStateCopyWithImpl<$Res>;
  $Res call(
      {bool isExtension,
      List<FavoriteVacancy> vacancies,
      List<FavoriteVacancy> favoriteVacancies,
      Resume resume});
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
    Object? favoriteVacancies = freezed,
    Object? resume = freezed,
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
      favoriteVacancies: favoriteVacancies == freezed
          ? _value.favoriteVacancies
          : favoriteVacancies // ignore: cast_nullable_to_non_nullable
              as List<FavoriteVacancy>,
      resume: resume == freezed
          ? _value.resume
          : resume // ignore: cast_nullable_to_non_nullable
              as Resume,
    ));
  }
}

/// @nodoc

class _$LoadedVacanciesState implements LoadedVacanciesState {
  const _$LoadedVacanciesState(
      {required this.isExtension,
      required this.vacancies,
      required this.favoriteVacancies,
      required this.resume});

  @override
  final bool isExtension;
  @override
  final List<FavoriteVacancy> vacancies;
  @override
  final List<FavoriteVacancy> favoriteVacancies;
  @override
  final Resume resume;

  @override
  String toString() {
    return 'VacanciesState.loadedState(isExtension: $isExtension, vacancies: $vacancies, favoriteVacancies: $favoriteVacancies, resume: $resume)';
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
                    .equals(other.vacancies, vacancies)) &&
            (identical(other.favoriteVacancies, favoriteVacancies) ||
                const DeepCollectionEquality()
                    .equals(other.favoriteVacancies, favoriteVacancies)) &&
            (identical(other.resume, resume) ||
                const DeepCollectionEquality().equals(other.resume, resume)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isExtension) ^
      const DeepCollectionEquality().hash(vacancies) ^
      const DeepCollectionEquality().hash(favoriteVacancies) ^
      const DeepCollectionEquality().hash(resume);

  @JsonKey(ignore: true)
  @override
  $LoadedVacanciesStateCopyWith<LoadedVacanciesState> get copyWith =>
      _$LoadedVacanciesStateCopyWithImpl<LoadedVacanciesState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? id) screens,
    required TResult Function() successFeedback,
    required TResult Function(bool isExtension, List<FavoriteVacancy> vacancies,
            List<FavoriteVacancy> favoriteVacancies, Resume resume)
        loadedState,
  }) {
    return loadedState(isExtension, vacancies, favoriteVacancies, resume);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? id)? screens,
    TResult Function()? successFeedback,
    TResult Function(bool isExtension, List<FavoriteVacancy> vacancies,
            List<FavoriteVacancy> favoriteVacancies, Resume resume)?
        loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(isExtension, vacancies, favoriteVacancies, resume);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialVacanciesState value) initial,
    required TResult Function(ScreensVacanciesState value) screens,
    required TResult Function(SuccessFeedbackVacanciesState value)
        successFeedback,
    required TResult Function(LoadedVacanciesState value) loadedState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialVacanciesState value)? initial,
    TResult Function(ScreensVacanciesState value)? screens,
    TResult Function(SuccessFeedbackVacanciesState value)? successFeedback,
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
      required List<FavoriteVacancy> vacancies,
      required List<FavoriteVacancy> favoriteVacancies,
      required Resume resume}) = _$LoadedVacanciesState;

  bool get isExtension => throw _privateConstructorUsedError;
  List<FavoriteVacancy> get vacancies => throw _privateConstructorUsedError;
  List<FavoriteVacancy> get favoriteVacancies =>
      throw _privateConstructorUsedError;
  Resume get resume => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedVacanciesStateCopyWith<LoadedVacanciesState> get copyWith =>
      throw _privateConstructorUsedError;
}
