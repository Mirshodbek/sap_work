// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  _InitialProfileEvent initial() {
    return const _InitialProfileEvent();
  }

  _RefreshProfileEvent refresh() {
    return const _RefreshProfileEvent();
  }

  _OnClickProfileEvent onClick({required int page, required bool isMoved}) {
    return _OnClickProfileEvent(
      page: page,
      isMoved: isMoved,
    );
  }

  _ToggleBlocksProfileEvent toggleBlocks(
      {required int id, required String title, required bool isSelectBlocks}) {
    return _ToggleBlocksProfileEvent(
      id: id,
      title: title,
      isSelectBlocks: isSelectBlocks,
    );
  }

  _ToggleResumeProfileEvent toggleResume(
      {required String title, required int id, required bool isPublished}) {
    return _ToggleResumeProfileEvent(
      title: title,
      id: id,
      isPublished: isPublished,
    );
  }

  _ResumeDataEvent resumeData(
      {required String firstField,
      required String secondField,
      required String thirdField,
      required String fourthField,
      required String title}) {
    return _ResumeDataEvent(
      firstField: firstField,
      secondField: secondField,
      thirdField: thirdField,
      fourthField: fourthField,
      title: title,
    );
  }

  _CreateResumeEvent createResume(
      {required String name,
      required List<Map<String, dynamic>> stages,
      required List<Map<String, dynamic>> grades,
      required String emails,
      required String phones}) {
    return _CreateResumeEvent(
      name: name,
      stages: stages,
      grades: grades,
      emails: emails,
      phones: phones,
    );
  }

  _ResumeButtonsProfileEvent resumeButtons({required int number}) {
    return _ResumeButtonsProfileEvent(
      number: number,
    );
  }

  _AddFileToResumeProfileEvent addFileToResume(
      {required String title, required String filename}) {
    return _AddFileToResumeProfileEvent(
      title: title,
      filename: filename,
    );
  }

  _AddResumeNameProfileEvent addResumeName(
      {required String name, required int id}) {
    return _AddResumeNameProfileEvent(
      name: name,
      id: id,
    );
  }

  _EditResumeNameProfileEvent editResumeName(
      {required String name, required bool isPublished, required int id}) {
    return _EditResumeNameProfileEvent(
      name: name,
      isPublished: isPublished,
      id: id,
    );
  }

  _DeActivatedResumeProfileEvent deActivatedResume({required int active}) {
    return _DeActivatedResumeProfileEvent(
      active: active,
    );
  }
}

/// @nodoc
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function(int page, bool isMoved) onClick,
    required TResult Function(int id, String title, bool isSelectBlocks)
        toggleBlocks,
    required TResult Function(String title, int id, bool isPublished)
        toggleResume,
    required TResult Function(String firstField, String secondField,
            String thirdField, String fourthField, String title)
        resumeData,
    required TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)
        createResume,
    required TResult Function(int number) resumeButtons,
    required TResult Function(String title, String filename) addFileToResume,
    required TResult Function(String name, int id) addResumeName,
    required TResult Function(String name, bool isPublished, int id)
        editResumeName,
    required TResult Function(int active) deActivatedResume,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(int page, bool isMoved)? onClick,
    TResult Function(int id, String title, bool isSelectBlocks)? toggleBlocks,
    TResult Function(String title, int id, bool isPublished)? toggleResume,
    TResult Function(String firstField, String secondField, String thirdField,
            String fourthField, String title)?
        resumeData,
    TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)?
        createResume,
    TResult Function(int number)? resumeButtons,
    TResult Function(String title, String filename)? addFileToResume,
    TResult Function(String name, int id)? addResumeName,
    TResult Function(String name, bool isPublished, int id)? editResumeName,
    TResult Function(int active)? deActivatedResume,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialProfileEvent value) initial,
    required TResult Function(_RefreshProfileEvent value) refresh,
    required TResult Function(_OnClickProfileEvent value) onClick,
    required TResult Function(_ToggleBlocksProfileEvent value) toggleBlocks,
    required TResult Function(_ToggleResumeProfileEvent value) toggleResume,
    required TResult Function(_ResumeDataEvent value) resumeData,
    required TResult Function(_CreateResumeEvent value) createResume,
    required TResult Function(_ResumeButtonsProfileEvent value) resumeButtons,
    required TResult Function(_AddFileToResumeProfileEvent value)
        addFileToResume,
    required TResult Function(_AddResumeNameProfileEvent value) addResumeName,
    required TResult Function(_EditResumeNameProfileEvent value) editResumeName,
    required TResult Function(_DeActivatedResumeProfileEvent value)
        deActivatedResume,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileEvent value)? initial,
    TResult Function(_RefreshProfileEvent value)? refresh,
    TResult Function(_OnClickProfileEvent value)? onClick,
    TResult Function(_ToggleBlocksProfileEvent value)? toggleBlocks,
    TResult Function(_ToggleResumeProfileEvent value)? toggleResume,
    TResult Function(_ResumeDataEvent value)? resumeData,
    TResult Function(_CreateResumeEvent value)? createResume,
    TResult Function(_ResumeButtonsProfileEvent value)? resumeButtons,
    TResult Function(_AddFileToResumeProfileEvent value)? addFileToResume,
    TResult Function(_AddResumeNameProfileEvent value)? addResumeName,
    TResult Function(_EditResumeNameProfileEvent value)? editResumeName,
    TResult Function(_DeActivatedResumeProfileEvent value)? deActivatedResume,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$InitialProfileEventCopyWith<$Res> {
  factory _$InitialProfileEventCopyWith(_InitialProfileEvent value,
          $Res Function(_InitialProfileEvent) then) =
      __$InitialProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialProfileEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$InitialProfileEventCopyWith<$Res> {
  __$InitialProfileEventCopyWithImpl(
      _InitialProfileEvent _value, $Res Function(_InitialProfileEvent) _then)
      : super(_value, (v) => _then(v as _InitialProfileEvent));

  @override
  _InitialProfileEvent get _value => super._value as _InitialProfileEvent;
}

/// @nodoc

class _$_InitialProfileEvent implements _InitialProfileEvent {
  const _$_InitialProfileEvent();

  @override
  String toString() {
    return 'ProfileEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialProfileEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function(int page, bool isMoved) onClick,
    required TResult Function(int id, String title, bool isSelectBlocks)
        toggleBlocks,
    required TResult Function(String title, int id, bool isPublished)
        toggleResume,
    required TResult Function(String firstField, String secondField,
            String thirdField, String fourthField, String title)
        resumeData,
    required TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)
        createResume,
    required TResult Function(int number) resumeButtons,
    required TResult Function(String title, String filename) addFileToResume,
    required TResult Function(String name, int id) addResumeName,
    required TResult Function(String name, bool isPublished, int id)
        editResumeName,
    required TResult Function(int active) deActivatedResume,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(int page, bool isMoved)? onClick,
    TResult Function(int id, String title, bool isSelectBlocks)? toggleBlocks,
    TResult Function(String title, int id, bool isPublished)? toggleResume,
    TResult Function(String firstField, String secondField, String thirdField,
            String fourthField, String title)?
        resumeData,
    TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)?
        createResume,
    TResult Function(int number)? resumeButtons,
    TResult Function(String title, String filename)? addFileToResume,
    TResult Function(String name, int id)? addResumeName,
    TResult Function(String name, bool isPublished, int id)? editResumeName,
    TResult Function(int active)? deActivatedResume,
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
    required TResult Function(_InitialProfileEvent value) initial,
    required TResult Function(_RefreshProfileEvent value) refresh,
    required TResult Function(_OnClickProfileEvent value) onClick,
    required TResult Function(_ToggleBlocksProfileEvent value) toggleBlocks,
    required TResult Function(_ToggleResumeProfileEvent value) toggleResume,
    required TResult Function(_ResumeDataEvent value) resumeData,
    required TResult Function(_CreateResumeEvent value) createResume,
    required TResult Function(_ResumeButtonsProfileEvent value) resumeButtons,
    required TResult Function(_AddFileToResumeProfileEvent value)
        addFileToResume,
    required TResult Function(_AddResumeNameProfileEvent value) addResumeName,
    required TResult Function(_EditResumeNameProfileEvent value) editResumeName,
    required TResult Function(_DeActivatedResumeProfileEvent value)
        deActivatedResume,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileEvent value)? initial,
    TResult Function(_RefreshProfileEvent value)? refresh,
    TResult Function(_OnClickProfileEvent value)? onClick,
    TResult Function(_ToggleBlocksProfileEvent value)? toggleBlocks,
    TResult Function(_ToggleResumeProfileEvent value)? toggleResume,
    TResult Function(_ResumeDataEvent value)? resumeData,
    TResult Function(_CreateResumeEvent value)? createResume,
    TResult Function(_ResumeButtonsProfileEvent value)? resumeButtons,
    TResult Function(_AddFileToResumeProfileEvent value)? addFileToResume,
    TResult Function(_AddResumeNameProfileEvent value)? addResumeName,
    TResult Function(_EditResumeNameProfileEvent value)? editResumeName,
    TResult Function(_DeActivatedResumeProfileEvent value)? deActivatedResume,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialProfileEvent implements ProfileEvent {
  const factory _InitialProfileEvent() = _$_InitialProfileEvent;
}

/// @nodoc
abstract class _$RefreshProfileEventCopyWith<$Res> {
  factory _$RefreshProfileEventCopyWith(_RefreshProfileEvent value,
          $Res Function(_RefreshProfileEvent) then) =
      __$RefreshProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshProfileEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$RefreshProfileEventCopyWith<$Res> {
  __$RefreshProfileEventCopyWithImpl(
      _RefreshProfileEvent _value, $Res Function(_RefreshProfileEvent) _then)
      : super(_value, (v) => _then(v as _RefreshProfileEvent));

  @override
  _RefreshProfileEvent get _value => super._value as _RefreshProfileEvent;
}

/// @nodoc

class _$_RefreshProfileEvent implements _RefreshProfileEvent {
  const _$_RefreshProfileEvent();

  @override
  String toString() {
    return 'ProfileEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RefreshProfileEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function(int page, bool isMoved) onClick,
    required TResult Function(int id, String title, bool isSelectBlocks)
        toggleBlocks,
    required TResult Function(String title, int id, bool isPublished)
        toggleResume,
    required TResult Function(String firstField, String secondField,
            String thirdField, String fourthField, String title)
        resumeData,
    required TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)
        createResume,
    required TResult Function(int number) resumeButtons,
    required TResult Function(String title, String filename) addFileToResume,
    required TResult Function(String name, int id) addResumeName,
    required TResult Function(String name, bool isPublished, int id)
        editResumeName,
    required TResult Function(int active) deActivatedResume,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(int page, bool isMoved)? onClick,
    TResult Function(int id, String title, bool isSelectBlocks)? toggleBlocks,
    TResult Function(String title, int id, bool isPublished)? toggleResume,
    TResult Function(String firstField, String secondField, String thirdField,
            String fourthField, String title)?
        resumeData,
    TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)?
        createResume,
    TResult Function(int number)? resumeButtons,
    TResult Function(String title, String filename)? addFileToResume,
    TResult Function(String name, int id)? addResumeName,
    TResult Function(String name, bool isPublished, int id)? editResumeName,
    TResult Function(int active)? deActivatedResume,
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
    required TResult Function(_InitialProfileEvent value) initial,
    required TResult Function(_RefreshProfileEvent value) refresh,
    required TResult Function(_OnClickProfileEvent value) onClick,
    required TResult Function(_ToggleBlocksProfileEvent value) toggleBlocks,
    required TResult Function(_ToggleResumeProfileEvent value) toggleResume,
    required TResult Function(_ResumeDataEvent value) resumeData,
    required TResult Function(_CreateResumeEvent value) createResume,
    required TResult Function(_ResumeButtonsProfileEvent value) resumeButtons,
    required TResult Function(_AddFileToResumeProfileEvent value)
        addFileToResume,
    required TResult Function(_AddResumeNameProfileEvent value) addResumeName,
    required TResult Function(_EditResumeNameProfileEvent value) editResumeName,
    required TResult Function(_DeActivatedResumeProfileEvent value)
        deActivatedResume,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileEvent value)? initial,
    TResult Function(_RefreshProfileEvent value)? refresh,
    TResult Function(_OnClickProfileEvent value)? onClick,
    TResult Function(_ToggleBlocksProfileEvent value)? toggleBlocks,
    TResult Function(_ToggleResumeProfileEvent value)? toggleResume,
    TResult Function(_ResumeDataEvent value)? resumeData,
    TResult Function(_CreateResumeEvent value)? createResume,
    TResult Function(_ResumeButtonsProfileEvent value)? resumeButtons,
    TResult Function(_AddFileToResumeProfileEvent value)? addFileToResume,
    TResult Function(_AddResumeNameProfileEvent value)? addResumeName,
    TResult Function(_EditResumeNameProfileEvent value)? editResumeName,
    TResult Function(_DeActivatedResumeProfileEvent value)? deActivatedResume,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _RefreshProfileEvent implements ProfileEvent {
  const factory _RefreshProfileEvent() = _$_RefreshProfileEvent;
}

/// @nodoc
abstract class _$OnClickProfileEventCopyWith<$Res> {
  factory _$OnClickProfileEventCopyWith(_OnClickProfileEvent value,
          $Res Function(_OnClickProfileEvent) then) =
      __$OnClickProfileEventCopyWithImpl<$Res>;
  $Res call({int page, bool isMoved});
}

/// @nodoc
class __$OnClickProfileEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$OnClickProfileEventCopyWith<$Res> {
  __$OnClickProfileEventCopyWithImpl(
      _OnClickProfileEvent _value, $Res Function(_OnClickProfileEvent) _then)
      : super(_value, (v) => _then(v as _OnClickProfileEvent));

  @override
  _OnClickProfileEvent get _value => super._value as _OnClickProfileEvent;

  @override
  $Res call({
    Object? page = freezed,
    Object? isMoved = freezed,
  }) {
    return _then(_OnClickProfileEvent(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isMoved: isMoved == freezed
          ? _value.isMoved
          : isMoved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_OnClickProfileEvent implements _OnClickProfileEvent {
  const _$_OnClickProfileEvent({required this.page, required this.isMoved});

  @override
  final int page;
  @override
  final bool isMoved;

  @override
  String toString() {
    return 'ProfileEvent.onClick(page: $page, isMoved: $isMoved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnClickProfileEvent &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.isMoved, isMoved) ||
                const DeepCollectionEquality().equals(other.isMoved, isMoved)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(isMoved);

  @JsonKey(ignore: true)
  @override
  _$OnClickProfileEventCopyWith<_OnClickProfileEvent> get copyWith =>
      __$OnClickProfileEventCopyWithImpl<_OnClickProfileEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function(int page, bool isMoved) onClick,
    required TResult Function(int id, String title, bool isSelectBlocks)
        toggleBlocks,
    required TResult Function(String title, int id, bool isPublished)
        toggleResume,
    required TResult Function(String firstField, String secondField,
            String thirdField, String fourthField, String title)
        resumeData,
    required TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)
        createResume,
    required TResult Function(int number) resumeButtons,
    required TResult Function(String title, String filename) addFileToResume,
    required TResult Function(String name, int id) addResumeName,
    required TResult Function(String name, bool isPublished, int id)
        editResumeName,
    required TResult Function(int active) deActivatedResume,
  }) {
    return onClick(page, isMoved);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(int page, bool isMoved)? onClick,
    TResult Function(int id, String title, bool isSelectBlocks)? toggleBlocks,
    TResult Function(String title, int id, bool isPublished)? toggleResume,
    TResult Function(String firstField, String secondField, String thirdField,
            String fourthField, String title)?
        resumeData,
    TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)?
        createResume,
    TResult Function(int number)? resumeButtons,
    TResult Function(String title, String filename)? addFileToResume,
    TResult Function(String name, int id)? addResumeName,
    TResult Function(String name, bool isPublished, int id)? editResumeName,
    TResult Function(int active)? deActivatedResume,
    required TResult orElse(),
  }) {
    if (onClick != null) {
      return onClick(page, isMoved);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialProfileEvent value) initial,
    required TResult Function(_RefreshProfileEvent value) refresh,
    required TResult Function(_OnClickProfileEvent value) onClick,
    required TResult Function(_ToggleBlocksProfileEvent value) toggleBlocks,
    required TResult Function(_ToggleResumeProfileEvent value) toggleResume,
    required TResult Function(_ResumeDataEvent value) resumeData,
    required TResult Function(_CreateResumeEvent value) createResume,
    required TResult Function(_ResumeButtonsProfileEvent value) resumeButtons,
    required TResult Function(_AddFileToResumeProfileEvent value)
        addFileToResume,
    required TResult Function(_AddResumeNameProfileEvent value) addResumeName,
    required TResult Function(_EditResumeNameProfileEvent value) editResumeName,
    required TResult Function(_DeActivatedResumeProfileEvent value)
        deActivatedResume,
  }) {
    return onClick(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileEvent value)? initial,
    TResult Function(_RefreshProfileEvent value)? refresh,
    TResult Function(_OnClickProfileEvent value)? onClick,
    TResult Function(_ToggleBlocksProfileEvent value)? toggleBlocks,
    TResult Function(_ToggleResumeProfileEvent value)? toggleResume,
    TResult Function(_ResumeDataEvent value)? resumeData,
    TResult Function(_CreateResumeEvent value)? createResume,
    TResult Function(_ResumeButtonsProfileEvent value)? resumeButtons,
    TResult Function(_AddFileToResumeProfileEvent value)? addFileToResume,
    TResult Function(_AddResumeNameProfileEvent value)? addResumeName,
    TResult Function(_EditResumeNameProfileEvent value)? editResumeName,
    TResult Function(_DeActivatedResumeProfileEvent value)? deActivatedResume,
    required TResult orElse(),
  }) {
    if (onClick != null) {
      return onClick(this);
    }
    return orElse();
  }
}

abstract class _OnClickProfileEvent implements ProfileEvent {
  const factory _OnClickProfileEvent(
      {required int page, required bool isMoved}) = _$_OnClickProfileEvent;

  int get page => throw _privateConstructorUsedError;
  bool get isMoved => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnClickProfileEventCopyWith<_OnClickProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ToggleBlocksProfileEventCopyWith<$Res> {
  factory _$ToggleBlocksProfileEventCopyWith(_ToggleBlocksProfileEvent value,
          $Res Function(_ToggleBlocksProfileEvent) then) =
      __$ToggleBlocksProfileEventCopyWithImpl<$Res>;
  $Res call({int id, String title, bool isSelectBlocks});
}

/// @nodoc
class __$ToggleBlocksProfileEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$ToggleBlocksProfileEventCopyWith<$Res> {
  __$ToggleBlocksProfileEventCopyWithImpl(_ToggleBlocksProfileEvent _value,
      $Res Function(_ToggleBlocksProfileEvent) _then)
      : super(_value, (v) => _then(v as _ToggleBlocksProfileEvent));

  @override
  _ToggleBlocksProfileEvent get _value =>
      super._value as _ToggleBlocksProfileEvent;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isSelectBlocks = freezed,
  }) {
    return _then(_ToggleBlocksProfileEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isSelectBlocks: isSelectBlocks == freezed
          ? _value.isSelectBlocks
          : isSelectBlocks // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ToggleBlocksProfileEvent implements _ToggleBlocksProfileEvent {
  const _$_ToggleBlocksProfileEvent(
      {required this.id, required this.title, required this.isSelectBlocks});

  @override
  final int id;
  @override
  final String title;
  @override
  final bool isSelectBlocks;

  @override
  String toString() {
    return 'ProfileEvent.toggleBlocks(id: $id, title: $title, isSelectBlocks: $isSelectBlocks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToggleBlocksProfileEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.isSelectBlocks, isSelectBlocks) ||
                const DeepCollectionEquality()
                    .equals(other.isSelectBlocks, isSelectBlocks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(isSelectBlocks);

  @JsonKey(ignore: true)
  @override
  _$ToggleBlocksProfileEventCopyWith<_ToggleBlocksProfileEvent> get copyWith =>
      __$ToggleBlocksProfileEventCopyWithImpl<_ToggleBlocksProfileEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function(int page, bool isMoved) onClick,
    required TResult Function(int id, String title, bool isSelectBlocks)
        toggleBlocks,
    required TResult Function(String title, int id, bool isPublished)
        toggleResume,
    required TResult Function(String firstField, String secondField,
            String thirdField, String fourthField, String title)
        resumeData,
    required TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)
        createResume,
    required TResult Function(int number) resumeButtons,
    required TResult Function(String title, String filename) addFileToResume,
    required TResult Function(String name, int id) addResumeName,
    required TResult Function(String name, bool isPublished, int id)
        editResumeName,
    required TResult Function(int active) deActivatedResume,
  }) {
    return toggleBlocks(id, title, isSelectBlocks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(int page, bool isMoved)? onClick,
    TResult Function(int id, String title, bool isSelectBlocks)? toggleBlocks,
    TResult Function(String title, int id, bool isPublished)? toggleResume,
    TResult Function(String firstField, String secondField, String thirdField,
            String fourthField, String title)?
        resumeData,
    TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)?
        createResume,
    TResult Function(int number)? resumeButtons,
    TResult Function(String title, String filename)? addFileToResume,
    TResult Function(String name, int id)? addResumeName,
    TResult Function(String name, bool isPublished, int id)? editResumeName,
    TResult Function(int active)? deActivatedResume,
    required TResult orElse(),
  }) {
    if (toggleBlocks != null) {
      return toggleBlocks(id, title, isSelectBlocks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialProfileEvent value) initial,
    required TResult Function(_RefreshProfileEvent value) refresh,
    required TResult Function(_OnClickProfileEvent value) onClick,
    required TResult Function(_ToggleBlocksProfileEvent value) toggleBlocks,
    required TResult Function(_ToggleResumeProfileEvent value) toggleResume,
    required TResult Function(_ResumeDataEvent value) resumeData,
    required TResult Function(_CreateResumeEvent value) createResume,
    required TResult Function(_ResumeButtonsProfileEvent value) resumeButtons,
    required TResult Function(_AddFileToResumeProfileEvent value)
        addFileToResume,
    required TResult Function(_AddResumeNameProfileEvent value) addResumeName,
    required TResult Function(_EditResumeNameProfileEvent value) editResumeName,
    required TResult Function(_DeActivatedResumeProfileEvent value)
        deActivatedResume,
  }) {
    return toggleBlocks(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileEvent value)? initial,
    TResult Function(_RefreshProfileEvent value)? refresh,
    TResult Function(_OnClickProfileEvent value)? onClick,
    TResult Function(_ToggleBlocksProfileEvent value)? toggleBlocks,
    TResult Function(_ToggleResumeProfileEvent value)? toggleResume,
    TResult Function(_ResumeDataEvent value)? resumeData,
    TResult Function(_CreateResumeEvent value)? createResume,
    TResult Function(_ResumeButtonsProfileEvent value)? resumeButtons,
    TResult Function(_AddFileToResumeProfileEvent value)? addFileToResume,
    TResult Function(_AddResumeNameProfileEvent value)? addResumeName,
    TResult Function(_EditResumeNameProfileEvent value)? editResumeName,
    TResult Function(_DeActivatedResumeProfileEvent value)? deActivatedResume,
    required TResult orElse(),
  }) {
    if (toggleBlocks != null) {
      return toggleBlocks(this);
    }
    return orElse();
  }
}

abstract class _ToggleBlocksProfileEvent implements ProfileEvent {
  const factory _ToggleBlocksProfileEvent(
      {required int id,
      required String title,
      required bool isSelectBlocks}) = _$_ToggleBlocksProfileEvent;

  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isSelectBlocks => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ToggleBlocksProfileEventCopyWith<_ToggleBlocksProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ToggleResumeProfileEventCopyWith<$Res> {
  factory _$ToggleResumeProfileEventCopyWith(_ToggleResumeProfileEvent value,
          $Res Function(_ToggleResumeProfileEvent) then) =
      __$ToggleResumeProfileEventCopyWithImpl<$Res>;
  $Res call({String title, int id, bool isPublished});
}

/// @nodoc
class __$ToggleResumeProfileEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$ToggleResumeProfileEventCopyWith<$Res> {
  __$ToggleResumeProfileEventCopyWithImpl(_ToggleResumeProfileEvent _value,
      $Res Function(_ToggleResumeProfileEvent) _then)
      : super(_value, (v) => _then(v as _ToggleResumeProfileEvent));

  @override
  _ToggleResumeProfileEvent get _value =>
      super._value as _ToggleResumeProfileEvent;

  @override
  $Res call({
    Object? title = freezed,
    Object? id = freezed,
    Object? isPublished = freezed,
  }) {
    return _then(_ToggleResumeProfileEvent(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isPublished: isPublished == freezed
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ToggleResumeProfileEvent implements _ToggleResumeProfileEvent {
  const _$_ToggleResumeProfileEvent(
      {required this.title, required this.id, required this.isPublished});

  @override
  final String title;
  @override
  final int id;
  @override
  final bool isPublished;

  @override
  String toString() {
    return 'ProfileEvent.toggleResume(title: $title, id: $id, isPublished: $isPublished)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToggleResumeProfileEvent &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isPublished, isPublished) ||
                const DeepCollectionEquality()
                    .equals(other.isPublished, isPublished)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isPublished);

  @JsonKey(ignore: true)
  @override
  _$ToggleResumeProfileEventCopyWith<_ToggleResumeProfileEvent> get copyWith =>
      __$ToggleResumeProfileEventCopyWithImpl<_ToggleResumeProfileEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function(int page, bool isMoved) onClick,
    required TResult Function(int id, String title, bool isSelectBlocks)
        toggleBlocks,
    required TResult Function(String title, int id, bool isPublished)
        toggleResume,
    required TResult Function(String firstField, String secondField,
            String thirdField, String fourthField, String title)
        resumeData,
    required TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)
        createResume,
    required TResult Function(int number) resumeButtons,
    required TResult Function(String title, String filename) addFileToResume,
    required TResult Function(String name, int id) addResumeName,
    required TResult Function(String name, bool isPublished, int id)
        editResumeName,
    required TResult Function(int active) deActivatedResume,
  }) {
    return toggleResume(title, id, isPublished);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(int page, bool isMoved)? onClick,
    TResult Function(int id, String title, bool isSelectBlocks)? toggleBlocks,
    TResult Function(String title, int id, bool isPublished)? toggleResume,
    TResult Function(String firstField, String secondField, String thirdField,
            String fourthField, String title)?
        resumeData,
    TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)?
        createResume,
    TResult Function(int number)? resumeButtons,
    TResult Function(String title, String filename)? addFileToResume,
    TResult Function(String name, int id)? addResumeName,
    TResult Function(String name, bool isPublished, int id)? editResumeName,
    TResult Function(int active)? deActivatedResume,
    required TResult orElse(),
  }) {
    if (toggleResume != null) {
      return toggleResume(title, id, isPublished);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialProfileEvent value) initial,
    required TResult Function(_RefreshProfileEvent value) refresh,
    required TResult Function(_OnClickProfileEvent value) onClick,
    required TResult Function(_ToggleBlocksProfileEvent value) toggleBlocks,
    required TResult Function(_ToggleResumeProfileEvent value) toggleResume,
    required TResult Function(_ResumeDataEvent value) resumeData,
    required TResult Function(_CreateResumeEvent value) createResume,
    required TResult Function(_ResumeButtonsProfileEvent value) resumeButtons,
    required TResult Function(_AddFileToResumeProfileEvent value)
        addFileToResume,
    required TResult Function(_AddResumeNameProfileEvent value) addResumeName,
    required TResult Function(_EditResumeNameProfileEvent value) editResumeName,
    required TResult Function(_DeActivatedResumeProfileEvent value)
        deActivatedResume,
  }) {
    return toggleResume(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileEvent value)? initial,
    TResult Function(_RefreshProfileEvent value)? refresh,
    TResult Function(_OnClickProfileEvent value)? onClick,
    TResult Function(_ToggleBlocksProfileEvent value)? toggleBlocks,
    TResult Function(_ToggleResumeProfileEvent value)? toggleResume,
    TResult Function(_ResumeDataEvent value)? resumeData,
    TResult Function(_CreateResumeEvent value)? createResume,
    TResult Function(_ResumeButtonsProfileEvent value)? resumeButtons,
    TResult Function(_AddFileToResumeProfileEvent value)? addFileToResume,
    TResult Function(_AddResumeNameProfileEvent value)? addResumeName,
    TResult Function(_EditResumeNameProfileEvent value)? editResumeName,
    TResult Function(_DeActivatedResumeProfileEvent value)? deActivatedResume,
    required TResult orElse(),
  }) {
    if (toggleResume != null) {
      return toggleResume(this);
    }
    return orElse();
  }
}

abstract class _ToggleResumeProfileEvent implements ProfileEvent {
  const factory _ToggleResumeProfileEvent(
      {required String title,
      required int id,
      required bool isPublished}) = _$_ToggleResumeProfileEvent;

  String get title => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  bool get isPublished => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ToggleResumeProfileEventCopyWith<_ToggleResumeProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResumeDataEventCopyWith<$Res> {
  factory _$ResumeDataEventCopyWith(
          _ResumeDataEvent value, $Res Function(_ResumeDataEvent) then) =
      __$ResumeDataEventCopyWithImpl<$Res>;
  $Res call(
      {String firstField,
      String secondField,
      String thirdField,
      String fourthField,
      String title});
}

/// @nodoc
class __$ResumeDataEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$ResumeDataEventCopyWith<$Res> {
  __$ResumeDataEventCopyWithImpl(
      _ResumeDataEvent _value, $Res Function(_ResumeDataEvent) _then)
      : super(_value, (v) => _then(v as _ResumeDataEvent));

  @override
  _ResumeDataEvent get _value => super._value as _ResumeDataEvent;

  @override
  $Res call({
    Object? firstField = freezed,
    Object? secondField = freezed,
    Object? thirdField = freezed,
    Object? fourthField = freezed,
    Object? title = freezed,
  }) {
    return _then(_ResumeDataEvent(
      firstField: firstField == freezed
          ? _value.firstField
          : firstField // ignore: cast_nullable_to_non_nullable
              as String,
      secondField: secondField == freezed
          ? _value.secondField
          : secondField // ignore: cast_nullable_to_non_nullable
              as String,
      thirdField: thirdField == freezed
          ? _value.thirdField
          : thirdField // ignore: cast_nullable_to_non_nullable
              as String,
      fourthField: fourthField == freezed
          ? _value.fourthField
          : fourthField // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResumeDataEvent implements _ResumeDataEvent {
  const _$_ResumeDataEvent(
      {required this.firstField,
      required this.secondField,
      required this.thirdField,
      required this.fourthField,
      required this.title});

  @override
  final String firstField;
  @override
  final String secondField;
  @override
  final String thirdField;
  @override
  final String fourthField;
  @override
  final String title;

  @override
  String toString() {
    return 'ProfileEvent.resumeData(firstField: $firstField, secondField: $secondField, thirdField: $thirdField, fourthField: $fourthField, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResumeDataEvent &&
            (identical(other.firstField, firstField) ||
                const DeepCollectionEquality()
                    .equals(other.firstField, firstField)) &&
            (identical(other.secondField, secondField) ||
                const DeepCollectionEquality()
                    .equals(other.secondField, secondField)) &&
            (identical(other.thirdField, thirdField) ||
                const DeepCollectionEquality()
                    .equals(other.thirdField, thirdField)) &&
            (identical(other.fourthField, fourthField) ||
                const DeepCollectionEquality()
                    .equals(other.fourthField, fourthField)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstField) ^
      const DeepCollectionEquality().hash(secondField) ^
      const DeepCollectionEquality().hash(thirdField) ^
      const DeepCollectionEquality().hash(fourthField) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$ResumeDataEventCopyWith<_ResumeDataEvent> get copyWith =>
      __$ResumeDataEventCopyWithImpl<_ResumeDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function(int page, bool isMoved) onClick,
    required TResult Function(int id, String title, bool isSelectBlocks)
        toggleBlocks,
    required TResult Function(String title, int id, bool isPublished)
        toggleResume,
    required TResult Function(String firstField, String secondField,
            String thirdField, String fourthField, String title)
        resumeData,
    required TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)
        createResume,
    required TResult Function(int number) resumeButtons,
    required TResult Function(String title, String filename) addFileToResume,
    required TResult Function(String name, int id) addResumeName,
    required TResult Function(String name, bool isPublished, int id)
        editResumeName,
    required TResult Function(int active) deActivatedResume,
  }) {
    return resumeData(firstField, secondField, thirdField, fourthField, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(int page, bool isMoved)? onClick,
    TResult Function(int id, String title, bool isSelectBlocks)? toggleBlocks,
    TResult Function(String title, int id, bool isPublished)? toggleResume,
    TResult Function(String firstField, String secondField, String thirdField,
            String fourthField, String title)?
        resumeData,
    TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)?
        createResume,
    TResult Function(int number)? resumeButtons,
    TResult Function(String title, String filename)? addFileToResume,
    TResult Function(String name, int id)? addResumeName,
    TResult Function(String name, bool isPublished, int id)? editResumeName,
    TResult Function(int active)? deActivatedResume,
    required TResult orElse(),
  }) {
    if (resumeData != null) {
      return resumeData(
          firstField, secondField, thirdField, fourthField, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialProfileEvent value) initial,
    required TResult Function(_RefreshProfileEvent value) refresh,
    required TResult Function(_OnClickProfileEvent value) onClick,
    required TResult Function(_ToggleBlocksProfileEvent value) toggleBlocks,
    required TResult Function(_ToggleResumeProfileEvent value) toggleResume,
    required TResult Function(_ResumeDataEvent value) resumeData,
    required TResult Function(_CreateResumeEvent value) createResume,
    required TResult Function(_ResumeButtonsProfileEvent value) resumeButtons,
    required TResult Function(_AddFileToResumeProfileEvent value)
        addFileToResume,
    required TResult Function(_AddResumeNameProfileEvent value) addResumeName,
    required TResult Function(_EditResumeNameProfileEvent value) editResumeName,
    required TResult Function(_DeActivatedResumeProfileEvent value)
        deActivatedResume,
  }) {
    return resumeData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileEvent value)? initial,
    TResult Function(_RefreshProfileEvent value)? refresh,
    TResult Function(_OnClickProfileEvent value)? onClick,
    TResult Function(_ToggleBlocksProfileEvent value)? toggleBlocks,
    TResult Function(_ToggleResumeProfileEvent value)? toggleResume,
    TResult Function(_ResumeDataEvent value)? resumeData,
    TResult Function(_CreateResumeEvent value)? createResume,
    TResult Function(_ResumeButtonsProfileEvent value)? resumeButtons,
    TResult Function(_AddFileToResumeProfileEvent value)? addFileToResume,
    TResult Function(_AddResumeNameProfileEvent value)? addResumeName,
    TResult Function(_EditResumeNameProfileEvent value)? editResumeName,
    TResult Function(_DeActivatedResumeProfileEvent value)? deActivatedResume,
    required TResult orElse(),
  }) {
    if (resumeData != null) {
      return resumeData(this);
    }
    return orElse();
  }
}

abstract class _ResumeDataEvent implements ProfileEvent {
  const factory _ResumeDataEvent(
      {required String firstField,
      required String secondField,
      required String thirdField,
      required String fourthField,
      required String title}) = _$_ResumeDataEvent;

  String get firstField => throw _privateConstructorUsedError;
  String get secondField => throw _privateConstructorUsedError;
  String get thirdField => throw _privateConstructorUsedError;
  String get fourthField => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ResumeDataEventCopyWith<_ResumeDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateResumeEventCopyWith<$Res> {
  factory _$CreateResumeEventCopyWith(
          _CreateResumeEvent value, $Res Function(_CreateResumeEvent) then) =
      __$CreateResumeEventCopyWithImpl<$Res>;
  $Res call(
      {String name,
      List<Map<String, dynamic>> stages,
      List<Map<String, dynamic>> grades,
      String emails,
      String phones});
}

/// @nodoc
class __$CreateResumeEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$CreateResumeEventCopyWith<$Res> {
  __$CreateResumeEventCopyWithImpl(
      _CreateResumeEvent _value, $Res Function(_CreateResumeEvent) _then)
      : super(_value, (v) => _then(v as _CreateResumeEvent));

  @override
  _CreateResumeEvent get _value => super._value as _CreateResumeEvent;

  @override
  $Res call({
    Object? name = freezed,
    Object? stages = freezed,
    Object? grades = freezed,
    Object? emails = freezed,
    Object? phones = freezed,
  }) {
    return _then(_CreateResumeEvent(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stages: stages == freezed
          ? _value.stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      grades: grades == freezed
          ? _value.grades
          : grades // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      emails: emails == freezed
          ? _value.emails
          : emails // ignore: cast_nullable_to_non_nullable
              as String,
      phones: phones == freezed
          ? _value.phones
          : phones // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateResumeEvent implements _CreateResumeEvent {
  const _$_CreateResumeEvent(
      {required this.name,
      required this.stages,
      required this.grades,
      required this.emails,
      required this.phones});

  @override
  final String name;
  @override
  final List<Map<String, dynamic>> stages;
  @override
  final List<Map<String, dynamic>> grades;
  @override
  final String emails;
  @override
  final String phones;

  @override
  String toString() {
    return 'ProfileEvent.createResume(name: $name, stages: $stages, grades: $grades, emails: $emails, phones: $phones)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateResumeEvent &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.stages, stages) ||
                const DeepCollectionEquality().equals(other.stages, stages)) &&
            (identical(other.grades, grades) ||
                const DeepCollectionEquality().equals(other.grades, grades)) &&
            (identical(other.emails, emails) ||
                const DeepCollectionEquality().equals(other.emails, emails)) &&
            (identical(other.phones, phones) ||
                const DeepCollectionEquality().equals(other.phones, phones)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(stages) ^
      const DeepCollectionEquality().hash(grades) ^
      const DeepCollectionEquality().hash(emails) ^
      const DeepCollectionEquality().hash(phones);

  @JsonKey(ignore: true)
  @override
  _$CreateResumeEventCopyWith<_CreateResumeEvent> get copyWith =>
      __$CreateResumeEventCopyWithImpl<_CreateResumeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function(int page, bool isMoved) onClick,
    required TResult Function(int id, String title, bool isSelectBlocks)
        toggleBlocks,
    required TResult Function(String title, int id, bool isPublished)
        toggleResume,
    required TResult Function(String firstField, String secondField,
            String thirdField, String fourthField, String title)
        resumeData,
    required TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)
        createResume,
    required TResult Function(int number) resumeButtons,
    required TResult Function(String title, String filename) addFileToResume,
    required TResult Function(String name, int id) addResumeName,
    required TResult Function(String name, bool isPublished, int id)
        editResumeName,
    required TResult Function(int active) deActivatedResume,
  }) {
    return createResume(name, stages, grades, emails, phones);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(int page, bool isMoved)? onClick,
    TResult Function(int id, String title, bool isSelectBlocks)? toggleBlocks,
    TResult Function(String title, int id, bool isPublished)? toggleResume,
    TResult Function(String firstField, String secondField, String thirdField,
            String fourthField, String title)?
        resumeData,
    TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)?
        createResume,
    TResult Function(int number)? resumeButtons,
    TResult Function(String title, String filename)? addFileToResume,
    TResult Function(String name, int id)? addResumeName,
    TResult Function(String name, bool isPublished, int id)? editResumeName,
    TResult Function(int active)? deActivatedResume,
    required TResult orElse(),
  }) {
    if (createResume != null) {
      return createResume(name, stages, grades, emails, phones);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialProfileEvent value) initial,
    required TResult Function(_RefreshProfileEvent value) refresh,
    required TResult Function(_OnClickProfileEvent value) onClick,
    required TResult Function(_ToggleBlocksProfileEvent value) toggleBlocks,
    required TResult Function(_ToggleResumeProfileEvent value) toggleResume,
    required TResult Function(_ResumeDataEvent value) resumeData,
    required TResult Function(_CreateResumeEvent value) createResume,
    required TResult Function(_ResumeButtonsProfileEvent value) resumeButtons,
    required TResult Function(_AddFileToResumeProfileEvent value)
        addFileToResume,
    required TResult Function(_AddResumeNameProfileEvent value) addResumeName,
    required TResult Function(_EditResumeNameProfileEvent value) editResumeName,
    required TResult Function(_DeActivatedResumeProfileEvent value)
        deActivatedResume,
  }) {
    return createResume(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileEvent value)? initial,
    TResult Function(_RefreshProfileEvent value)? refresh,
    TResult Function(_OnClickProfileEvent value)? onClick,
    TResult Function(_ToggleBlocksProfileEvent value)? toggleBlocks,
    TResult Function(_ToggleResumeProfileEvent value)? toggleResume,
    TResult Function(_ResumeDataEvent value)? resumeData,
    TResult Function(_CreateResumeEvent value)? createResume,
    TResult Function(_ResumeButtonsProfileEvent value)? resumeButtons,
    TResult Function(_AddFileToResumeProfileEvent value)? addFileToResume,
    TResult Function(_AddResumeNameProfileEvent value)? addResumeName,
    TResult Function(_EditResumeNameProfileEvent value)? editResumeName,
    TResult Function(_DeActivatedResumeProfileEvent value)? deActivatedResume,
    required TResult orElse(),
  }) {
    if (createResume != null) {
      return createResume(this);
    }
    return orElse();
  }
}

abstract class _CreateResumeEvent implements ProfileEvent {
  const factory _CreateResumeEvent(
      {required String name,
      required List<Map<String, dynamic>> stages,
      required List<Map<String, dynamic>> grades,
      required String emails,
      required String phones}) = _$_CreateResumeEvent;

  String get name => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get stages => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get grades => throw _privateConstructorUsedError;
  String get emails => throw _privateConstructorUsedError;
  String get phones => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CreateResumeEventCopyWith<_CreateResumeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResumeButtonsProfileEventCopyWith<$Res> {
  factory _$ResumeButtonsProfileEventCopyWith(_ResumeButtonsProfileEvent value,
          $Res Function(_ResumeButtonsProfileEvent) then) =
      __$ResumeButtonsProfileEventCopyWithImpl<$Res>;
  $Res call({int number});
}

/// @nodoc
class __$ResumeButtonsProfileEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$ResumeButtonsProfileEventCopyWith<$Res> {
  __$ResumeButtonsProfileEventCopyWithImpl(_ResumeButtonsProfileEvent _value,
      $Res Function(_ResumeButtonsProfileEvent) _then)
      : super(_value, (v) => _then(v as _ResumeButtonsProfileEvent));

  @override
  _ResumeButtonsProfileEvent get _value =>
      super._value as _ResumeButtonsProfileEvent;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_ResumeButtonsProfileEvent(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ResumeButtonsProfileEvent implements _ResumeButtonsProfileEvent {
  const _$_ResumeButtonsProfileEvent({required this.number});

  @override
  final int number;

  @override
  String toString() {
    return 'ProfileEvent.resumeButtons(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResumeButtonsProfileEvent &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(number);

  @JsonKey(ignore: true)
  @override
  _$ResumeButtonsProfileEventCopyWith<_ResumeButtonsProfileEvent>
      get copyWith =>
          __$ResumeButtonsProfileEventCopyWithImpl<_ResumeButtonsProfileEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function(int page, bool isMoved) onClick,
    required TResult Function(int id, String title, bool isSelectBlocks)
        toggleBlocks,
    required TResult Function(String title, int id, bool isPublished)
        toggleResume,
    required TResult Function(String firstField, String secondField,
            String thirdField, String fourthField, String title)
        resumeData,
    required TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)
        createResume,
    required TResult Function(int number) resumeButtons,
    required TResult Function(String title, String filename) addFileToResume,
    required TResult Function(String name, int id) addResumeName,
    required TResult Function(String name, bool isPublished, int id)
        editResumeName,
    required TResult Function(int active) deActivatedResume,
  }) {
    return resumeButtons(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(int page, bool isMoved)? onClick,
    TResult Function(int id, String title, bool isSelectBlocks)? toggleBlocks,
    TResult Function(String title, int id, bool isPublished)? toggleResume,
    TResult Function(String firstField, String secondField, String thirdField,
            String fourthField, String title)?
        resumeData,
    TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)?
        createResume,
    TResult Function(int number)? resumeButtons,
    TResult Function(String title, String filename)? addFileToResume,
    TResult Function(String name, int id)? addResumeName,
    TResult Function(String name, bool isPublished, int id)? editResumeName,
    TResult Function(int active)? deActivatedResume,
    required TResult orElse(),
  }) {
    if (resumeButtons != null) {
      return resumeButtons(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialProfileEvent value) initial,
    required TResult Function(_RefreshProfileEvent value) refresh,
    required TResult Function(_OnClickProfileEvent value) onClick,
    required TResult Function(_ToggleBlocksProfileEvent value) toggleBlocks,
    required TResult Function(_ToggleResumeProfileEvent value) toggleResume,
    required TResult Function(_ResumeDataEvent value) resumeData,
    required TResult Function(_CreateResumeEvent value) createResume,
    required TResult Function(_ResumeButtonsProfileEvent value) resumeButtons,
    required TResult Function(_AddFileToResumeProfileEvent value)
        addFileToResume,
    required TResult Function(_AddResumeNameProfileEvent value) addResumeName,
    required TResult Function(_EditResumeNameProfileEvent value) editResumeName,
    required TResult Function(_DeActivatedResumeProfileEvent value)
        deActivatedResume,
  }) {
    return resumeButtons(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileEvent value)? initial,
    TResult Function(_RefreshProfileEvent value)? refresh,
    TResult Function(_OnClickProfileEvent value)? onClick,
    TResult Function(_ToggleBlocksProfileEvent value)? toggleBlocks,
    TResult Function(_ToggleResumeProfileEvent value)? toggleResume,
    TResult Function(_ResumeDataEvent value)? resumeData,
    TResult Function(_CreateResumeEvent value)? createResume,
    TResult Function(_ResumeButtonsProfileEvent value)? resumeButtons,
    TResult Function(_AddFileToResumeProfileEvent value)? addFileToResume,
    TResult Function(_AddResumeNameProfileEvent value)? addResumeName,
    TResult Function(_EditResumeNameProfileEvent value)? editResumeName,
    TResult Function(_DeActivatedResumeProfileEvent value)? deActivatedResume,
    required TResult orElse(),
  }) {
    if (resumeButtons != null) {
      return resumeButtons(this);
    }
    return orElse();
  }
}

abstract class _ResumeButtonsProfileEvent implements ProfileEvent {
  const factory _ResumeButtonsProfileEvent({required int number}) =
      _$_ResumeButtonsProfileEvent;

  int get number => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ResumeButtonsProfileEventCopyWith<_ResumeButtonsProfileEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddFileToResumeProfileEventCopyWith<$Res> {
  factory _$AddFileToResumeProfileEventCopyWith(
          _AddFileToResumeProfileEvent value,
          $Res Function(_AddFileToResumeProfileEvent) then) =
      __$AddFileToResumeProfileEventCopyWithImpl<$Res>;
  $Res call({String title, String filename});
}

/// @nodoc
class __$AddFileToResumeProfileEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$AddFileToResumeProfileEventCopyWith<$Res> {
  __$AddFileToResumeProfileEventCopyWithImpl(
      _AddFileToResumeProfileEvent _value,
      $Res Function(_AddFileToResumeProfileEvent) _then)
      : super(_value, (v) => _then(v as _AddFileToResumeProfileEvent));

  @override
  _AddFileToResumeProfileEvent get _value =>
      super._value as _AddFileToResumeProfileEvent;

  @override
  $Res call({
    Object? title = freezed,
    Object? filename = freezed,
  }) {
    return _then(_AddFileToResumeProfileEvent(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      filename: filename == freezed
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddFileToResumeProfileEvent implements _AddFileToResumeProfileEvent {
  const _$_AddFileToResumeProfileEvent(
      {required this.title, required this.filename});

  @override
  final String title;
  @override
  final String filename;

  @override
  String toString() {
    return 'ProfileEvent.addFileToResume(title: $title, filename: $filename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddFileToResumeProfileEvent &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.filename, filename) ||
                const DeepCollectionEquality()
                    .equals(other.filename, filename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(filename);

  @JsonKey(ignore: true)
  @override
  _$AddFileToResumeProfileEventCopyWith<_AddFileToResumeProfileEvent>
      get copyWith => __$AddFileToResumeProfileEventCopyWithImpl<
          _AddFileToResumeProfileEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function(int page, bool isMoved) onClick,
    required TResult Function(int id, String title, bool isSelectBlocks)
        toggleBlocks,
    required TResult Function(String title, int id, bool isPublished)
        toggleResume,
    required TResult Function(String firstField, String secondField,
            String thirdField, String fourthField, String title)
        resumeData,
    required TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)
        createResume,
    required TResult Function(int number) resumeButtons,
    required TResult Function(String title, String filename) addFileToResume,
    required TResult Function(String name, int id) addResumeName,
    required TResult Function(String name, bool isPublished, int id)
        editResumeName,
    required TResult Function(int active) deActivatedResume,
  }) {
    return addFileToResume(title, filename);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(int page, bool isMoved)? onClick,
    TResult Function(int id, String title, bool isSelectBlocks)? toggleBlocks,
    TResult Function(String title, int id, bool isPublished)? toggleResume,
    TResult Function(String firstField, String secondField, String thirdField,
            String fourthField, String title)?
        resumeData,
    TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)?
        createResume,
    TResult Function(int number)? resumeButtons,
    TResult Function(String title, String filename)? addFileToResume,
    TResult Function(String name, int id)? addResumeName,
    TResult Function(String name, bool isPublished, int id)? editResumeName,
    TResult Function(int active)? deActivatedResume,
    required TResult orElse(),
  }) {
    if (addFileToResume != null) {
      return addFileToResume(title, filename);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialProfileEvent value) initial,
    required TResult Function(_RefreshProfileEvent value) refresh,
    required TResult Function(_OnClickProfileEvent value) onClick,
    required TResult Function(_ToggleBlocksProfileEvent value) toggleBlocks,
    required TResult Function(_ToggleResumeProfileEvent value) toggleResume,
    required TResult Function(_ResumeDataEvent value) resumeData,
    required TResult Function(_CreateResumeEvent value) createResume,
    required TResult Function(_ResumeButtonsProfileEvent value) resumeButtons,
    required TResult Function(_AddFileToResumeProfileEvent value)
        addFileToResume,
    required TResult Function(_AddResumeNameProfileEvent value) addResumeName,
    required TResult Function(_EditResumeNameProfileEvent value) editResumeName,
    required TResult Function(_DeActivatedResumeProfileEvent value)
        deActivatedResume,
  }) {
    return addFileToResume(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileEvent value)? initial,
    TResult Function(_RefreshProfileEvent value)? refresh,
    TResult Function(_OnClickProfileEvent value)? onClick,
    TResult Function(_ToggleBlocksProfileEvent value)? toggleBlocks,
    TResult Function(_ToggleResumeProfileEvent value)? toggleResume,
    TResult Function(_ResumeDataEvent value)? resumeData,
    TResult Function(_CreateResumeEvent value)? createResume,
    TResult Function(_ResumeButtonsProfileEvent value)? resumeButtons,
    TResult Function(_AddFileToResumeProfileEvent value)? addFileToResume,
    TResult Function(_AddResumeNameProfileEvent value)? addResumeName,
    TResult Function(_EditResumeNameProfileEvent value)? editResumeName,
    TResult Function(_DeActivatedResumeProfileEvent value)? deActivatedResume,
    required TResult orElse(),
  }) {
    if (addFileToResume != null) {
      return addFileToResume(this);
    }
    return orElse();
  }
}

abstract class _AddFileToResumeProfileEvent implements ProfileEvent {
  const factory _AddFileToResumeProfileEvent(
      {required String title,
      required String filename}) = _$_AddFileToResumeProfileEvent;

  String get title => throw _privateConstructorUsedError;
  String get filename => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddFileToResumeProfileEventCopyWith<_AddFileToResumeProfileEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddResumeNameProfileEventCopyWith<$Res> {
  factory _$AddResumeNameProfileEventCopyWith(_AddResumeNameProfileEvent value,
          $Res Function(_AddResumeNameProfileEvent) then) =
      __$AddResumeNameProfileEventCopyWithImpl<$Res>;
  $Res call({String name, int id});
}

/// @nodoc
class __$AddResumeNameProfileEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$AddResumeNameProfileEventCopyWith<$Res> {
  __$AddResumeNameProfileEventCopyWithImpl(_AddResumeNameProfileEvent _value,
      $Res Function(_AddResumeNameProfileEvent) _then)
      : super(_value, (v) => _then(v as _AddResumeNameProfileEvent));

  @override
  _AddResumeNameProfileEvent get _value =>
      super._value as _AddResumeNameProfileEvent;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_AddResumeNameProfileEvent(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AddResumeNameProfileEvent implements _AddResumeNameProfileEvent {
  const _$_AddResumeNameProfileEvent({required this.name, required this.id});

  @override
  final String name;
  @override
  final int id;

  @override
  String toString() {
    return 'ProfileEvent.addResumeName(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddResumeNameProfileEvent &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$AddResumeNameProfileEventCopyWith<_AddResumeNameProfileEvent>
      get copyWith =>
          __$AddResumeNameProfileEventCopyWithImpl<_AddResumeNameProfileEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function(int page, bool isMoved) onClick,
    required TResult Function(int id, String title, bool isSelectBlocks)
        toggleBlocks,
    required TResult Function(String title, int id, bool isPublished)
        toggleResume,
    required TResult Function(String firstField, String secondField,
            String thirdField, String fourthField, String title)
        resumeData,
    required TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)
        createResume,
    required TResult Function(int number) resumeButtons,
    required TResult Function(String title, String filename) addFileToResume,
    required TResult Function(String name, int id) addResumeName,
    required TResult Function(String name, bool isPublished, int id)
        editResumeName,
    required TResult Function(int active) deActivatedResume,
  }) {
    return addResumeName(name, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(int page, bool isMoved)? onClick,
    TResult Function(int id, String title, bool isSelectBlocks)? toggleBlocks,
    TResult Function(String title, int id, bool isPublished)? toggleResume,
    TResult Function(String firstField, String secondField, String thirdField,
            String fourthField, String title)?
        resumeData,
    TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)?
        createResume,
    TResult Function(int number)? resumeButtons,
    TResult Function(String title, String filename)? addFileToResume,
    TResult Function(String name, int id)? addResumeName,
    TResult Function(String name, bool isPublished, int id)? editResumeName,
    TResult Function(int active)? deActivatedResume,
    required TResult orElse(),
  }) {
    if (addResumeName != null) {
      return addResumeName(name, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialProfileEvent value) initial,
    required TResult Function(_RefreshProfileEvent value) refresh,
    required TResult Function(_OnClickProfileEvent value) onClick,
    required TResult Function(_ToggleBlocksProfileEvent value) toggleBlocks,
    required TResult Function(_ToggleResumeProfileEvent value) toggleResume,
    required TResult Function(_ResumeDataEvent value) resumeData,
    required TResult Function(_CreateResumeEvent value) createResume,
    required TResult Function(_ResumeButtonsProfileEvent value) resumeButtons,
    required TResult Function(_AddFileToResumeProfileEvent value)
        addFileToResume,
    required TResult Function(_AddResumeNameProfileEvent value) addResumeName,
    required TResult Function(_EditResumeNameProfileEvent value) editResumeName,
    required TResult Function(_DeActivatedResumeProfileEvent value)
        deActivatedResume,
  }) {
    return addResumeName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileEvent value)? initial,
    TResult Function(_RefreshProfileEvent value)? refresh,
    TResult Function(_OnClickProfileEvent value)? onClick,
    TResult Function(_ToggleBlocksProfileEvent value)? toggleBlocks,
    TResult Function(_ToggleResumeProfileEvent value)? toggleResume,
    TResult Function(_ResumeDataEvent value)? resumeData,
    TResult Function(_CreateResumeEvent value)? createResume,
    TResult Function(_ResumeButtonsProfileEvent value)? resumeButtons,
    TResult Function(_AddFileToResumeProfileEvent value)? addFileToResume,
    TResult Function(_AddResumeNameProfileEvent value)? addResumeName,
    TResult Function(_EditResumeNameProfileEvent value)? editResumeName,
    TResult Function(_DeActivatedResumeProfileEvent value)? deActivatedResume,
    required TResult orElse(),
  }) {
    if (addResumeName != null) {
      return addResumeName(this);
    }
    return orElse();
  }
}

abstract class _AddResumeNameProfileEvent implements ProfileEvent {
  const factory _AddResumeNameProfileEvent(
      {required String name, required int id}) = _$_AddResumeNameProfileEvent;

  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddResumeNameProfileEventCopyWith<_AddResumeNameProfileEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EditResumeNameProfileEventCopyWith<$Res> {
  factory _$EditResumeNameProfileEventCopyWith(
          _EditResumeNameProfileEvent value,
          $Res Function(_EditResumeNameProfileEvent) then) =
      __$EditResumeNameProfileEventCopyWithImpl<$Res>;
  $Res call({String name, bool isPublished, int id});
}

/// @nodoc
class __$EditResumeNameProfileEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$EditResumeNameProfileEventCopyWith<$Res> {
  __$EditResumeNameProfileEventCopyWithImpl(_EditResumeNameProfileEvent _value,
      $Res Function(_EditResumeNameProfileEvent) _then)
      : super(_value, (v) => _then(v as _EditResumeNameProfileEvent));

  @override
  _EditResumeNameProfileEvent get _value =>
      super._value as _EditResumeNameProfileEvent;

  @override
  $Res call({
    Object? name = freezed,
    Object? isPublished = freezed,
    Object? id = freezed,
  }) {
    return _then(_EditResumeNameProfileEvent(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isPublished: isPublished == freezed
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EditResumeNameProfileEvent implements _EditResumeNameProfileEvent {
  const _$_EditResumeNameProfileEvent(
      {required this.name, required this.isPublished, required this.id});

  @override
  final String name;
  @override
  final bool isPublished;
  @override
  final int id;

  @override
  String toString() {
    return 'ProfileEvent.editResumeName(name: $name, isPublished: $isPublished, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditResumeNameProfileEvent &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.isPublished, isPublished) ||
                const DeepCollectionEquality()
                    .equals(other.isPublished, isPublished)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(isPublished) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$EditResumeNameProfileEventCopyWith<_EditResumeNameProfileEvent>
      get copyWith => __$EditResumeNameProfileEventCopyWithImpl<
          _EditResumeNameProfileEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function(int page, bool isMoved) onClick,
    required TResult Function(int id, String title, bool isSelectBlocks)
        toggleBlocks,
    required TResult Function(String title, int id, bool isPublished)
        toggleResume,
    required TResult Function(String firstField, String secondField,
            String thirdField, String fourthField, String title)
        resumeData,
    required TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)
        createResume,
    required TResult Function(int number) resumeButtons,
    required TResult Function(String title, String filename) addFileToResume,
    required TResult Function(String name, int id) addResumeName,
    required TResult Function(String name, bool isPublished, int id)
        editResumeName,
    required TResult Function(int active) deActivatedResume,
  }) {
    return editResumeName(name, isPublished, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(int page, bool isMoved)? onClick,
    TResult Function(int id, String title, bool isSelectBlocks)? toggleBlocks,
    TResult Function(String title, int id, bool isPublished)? toggleResume,
    TResult Function(String firstField, String secondField, String thirdField,
            String fourthField, String title)?
        resumeData,
    TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)?
        createResume,
    TResult Function(int number)? resumeButtons,
    TResult Function(String title, String filename)? addFileToResume,
    TResult Function(String name, int id)? addResumeName,
    TResult Function(String name, bool isPublished, int id)? editResumeName,
    TResult Function(int active)? deActivatedResume,
    required TResult orElse(),
  }) {
    if (editResumeName != null) {
      return editResumeName(name, isPublished, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialProfileEvent value) initial,
    required TResult Function(_RefreshProfileEvent value) refresh,
    required TResult Function(_OnClickProfileEvent value) onClick,
    required TResult Function(_ToggleBlocksProfileEvent value) toggleBlocks,
    required TResult Function(_ToggleResumeProfileEvent value) toggleResume,
    required TResult Function(_ResumeDataEvent value) resumeData,
    required TResult Function(_CreateResumeEvent value) createResume,
    required TResult Function(_ResumeButtonsProfileEvent value) resumeButtons,
    required TResult Function(_AddFileToResumeProfileEvent value)
        addFileToResume,
    required TResult Function(_AddResumeNameProfileEvent value) addResumeName,
    required TResult Function(_EditResumeNameProfileEvent value) editResumeName,
    required TResult Function(_DeActivatedResumeProfileEvent value)
        deActivatedResume,
  }) {
    return editResumeName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileEvent value)? initial,
    TResult Function(_RefreshProfileEvent value)? refresh,
    TResult Function(_OnClickProfileEvent value)? onClick,
    TResult Function(_ToggleBlocksProfileEvent value)? toggleBlocks,
    TResult Function(_ToggleResumeProfileEvent value)? toggleResume,
    TResult Function(_ResumeDataEvent value)? resumeData,
    TResult Function(_CreateResumeEvent value)? createResume,
    TResult Function(_ResumeButtonsProfileEvent value)? resumeButtons,
    TResult Function(_AddFileToResumeProfileEvent value)? addFileToResume,
    TResult Function(_AddResumeNameProfileEvent value)? addResumeName,
    TResult Function(_EditResumeNameProfileEvent value)? editResumeName,
    TResult Function(_DeActivatedResumeProfileEvent value)? deActivatedResume,
    required TResult orElse(),
  }) {
    if (editResumeName != null) {
      return editResumeName(this);
    }
    return orElse();
  }
}

abstract class _EditResumeNameProfileEvent implements ProfileEvent {
  const factory _EditResumeNameProfileEvent(
      {required String name,
      required bool isPublished,
      required int id}) = _$_EditResumeNameProfileEvent;

  String get name => throw _privateConstructorUsedError;
  bool get isPublished => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EditResumeNameProfileEventCopyWith<_EditResumeNameProfileEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeActivatedResumeProfileEventCopyWith<$Res> {
  factory _$DeActivatedResumeProfileEventCopyWith(
          _DeActivatedResumeProfileEvent value,
          $Res Function(_DeActivatedResumeProfileEvent) then) =
      __$DeActivatedResumeProfileEventCopyWithImpl<$Res>;
  $Res call({int active});
}

/// @nodoc
class __$DeActivatedResumeProfileEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$DeActivatedResumeProfileEventCopyWith<$Res> {
  __$DeActivatedResumeProfileEventCopyWithImpl(
      _DeActivatedResumeProfileEvent _value,
      $Res Function(_DeActivatedResumeProfileEvent) _then)
      : super(_value, (v) => _then(v as _DeActivatedResumeProfileEvent));

  @override
  _DeActivatedResumeProfileEvent get _value =>
      super._value as _DeActivatedResumeProfileEvent;

  @override
  $Res call({
    Object? active = freezed,
  }) {
    return _then(_DeActivatedResumeProfileEvent(
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeActivatedResumeProfileEvent
    implements _DeActivatedResumeProfileEvent {
  const _$_DeActivatedResumeProfileEvent({required this.active});

  @override
  final int active;

  @override
  String toString() {
    return 'ProfileEvent.deActivatedResume(active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeActivatedResumeProfileEvent &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(active);

  @JsonKey(ignore: true)
  @override
  _$DeActivatedResumeProfileEventCopyWith<_DeActivatedResumeProfileEvent>
      get copyWith => __$DeActivatedResumeProfileEventCopyWithImpl<
          _DeActivatedResumeProfileEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function(int page, bool isMoved) onClick,
    required TResult Function(int id, String title, bool isSelectBlocks)
        toggleBlocks,
    required TResult Function(String title, int id, bool isPublished)
        toggleResume,
    required TResult Function(String firstField, String secondField,
            String thirdField, String fourthField, String title)
        resumeData,
    required TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)
        createResume,
    required TResult Function(int number) resumeButtons,
    required TResult Function(String title, String filename) addFileToResume,
    required TResult Function(String name, int id) addResumeName,
    required TResult Function(String name, bool isPublished, int id)
        editResumeName,
    required TResult Function(int active) deActivatedResume,
  }) {
    return deActivatedResume(active);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(int page, bool isMoved)? onClick,
    TResult Function(int id, String title, bool isSelectBlocks)? toggleBlocks,
    TResult Function(String title, int id, bool isPublished)? toggleResume,
    TResult Function(String firstField, String secondField, String thirdField,
            String fourthField, String title)?
        resumeData,
    TResult Function(String name, List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades, String emails, String phones)?
        createResume,
    TResult Function(int number)? resumeButtons,
    TResult Function(String title, String filename)? addFileToResume,
    TResult Function(String name, int id)? addResumeName,
    TResult Function(String name, bool isPublished, int id)? editResumeName,
    TResult Function(int active)? deActivatedResume,
    required TResult orElse(),
  }) {
    if (deActivatedResume != null) {
      return deActivatedResume(active);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialProfileEvent value) initial,
    required TResult Function(_RefreshProfileEvent value) refresh,
    required TResult Function(_OnClickProfileEvent value) onClick,
    required TResult Function(_ToggleBlocksProfileEvent value) toggleBlocks,
    required TResult Function(_ToggleResumeProfileEvent value) toggleResume,
    required TResult Function(_ResumeDataEvent value) resumeData,
    required TResult Function(_CreateResumeEvent value) createResume,
    required TResult Function(_ResumeButtonsProfileEvent value) resumeButtons,
    required TResult Function(_AddFileToResumeProfileEvent value)
        addFileToResume,
    required TResult Function(_AddResumeNameProfileEvent value) addResumeName,
    required TResult Function(_EditResumeNameProfileEvent value) editResumeName,
    required TResult Function(_DeActivatedResumeProfileEvent value)
        deActivatedResume,
  }) {
    return deActivatedResume(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileEvent value)? initial,
    TResult Function(_RefreshProfileEvent value)? refresh,
    TResult Function(_OnClickProfileEvent value)? onClick,
    TResult Function(_ToggleBlocksProfileEvent value)? toggleBlocks,
    TResult Function(_ToggleResumeProfileEvent value)? toggleResume,
    TResult Function(_ResumeDataEvent value)? resumeData,
    TResult Function(_CreateResumeEvent value)? createResume,
    TResult Function(_ResumeButtonsProfileEvent value)? resumeButtons,
    TResult Function(_AddFileToResumeProfileEvent value)? addFileToResume,
    TResult Function(_AddResumeNameProfileEvent value)? addResumeName,
    TResult Function(_EditResumeNameProfileEvent value)? editResumeName,
    TResult Function(_DeActivatedResumeProfileEvent value)? deActivatedResume,
    required TResult orElse(),
  }) {
    if (deActivatedResume != null) {
      return deActivatedResume(this);
    }
    return orElse();
  }
}

abstract class _DeActivatedResumeProfileEvent implements ProfileEvent {
  const factory _DeActivatedResumeProfileEvent({required int active}) =
      _$_DeActivatedResumeProfileEvent;

  int get active => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeActivatedResumeProfileEventCopyWith<_DeActivatedResumeProfileEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  InitialProfileState initial() {
    return const InitialProfileState();
  }

  AccessResumeProfileState accessResume() {
    return const AccessResumeProfileState();
  }

  ProfileScreenState profileState(
      {required int id,
      required int buttons,
      required String title,
      required Resume resume,
      required bool isEnabled,
      required List<Block> blocks,
      required int feedbacksCount,
      required FormzStatus status,
      required List<Resume> resumes,
      required TypeProfileUser profile,
      required List<String> localResumes,
      required List<Map<String, dynamic>> stages,
      required List<Map<String, dynamic>> grades}) {
    return ProfileScreenState(
      id: id,
      buttons: buttons,
      title: title,
      resume: resume,
      isEnabled: isEnabled,
      blocks: blocks,
      feedbacksCount: feedbacksCount,
      status: status,
      resumes: resumes,
      profile: profile,
      localResumes: localResumes,
      stages: stages,
      grades: grades,
    );
  }

  ScreensProfileState screens({required int page}) {
    return ScreensProfileState(
      page: page,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accessResume,
    required TResult Function(
            int id,
            int buttons,
            String title,
            Resume resume,
            bool isEnabled,
            List<Block> blocks,
            int feedbacksCount,
            FormzStatus status,
            List<Resume> resumes,
            TypeProfileUser profile,
            List<String> localResumes,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)
        profileState,
    required TResult Function(int page) screens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accessResume,
    TResult Function(
            int id,
            int buttons,
            String title,
            Resume resume,
            bool isEnabled,
            List<Block> blocks,
            int feedbacksCount,
            FormzStatus status,
            List<Resume> resumes,
            TypeProfileUser profile,
            List<String> localResumes,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)?
        profileState,
    TResult Function(int page)? screens,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialProfileState value) initial,
    required TResult Function(AccessResumeProfileState value) accessResume,
    required TResult Function(ProfileScreenState value) profileState,
    required TResult Function(ScreensProfileState value) screens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProfileState value)? initial,
    TResult Function(AccessResumeProfileState value)? accessResume,
    TResult Function(ProfileScreenState value)? profileState,
    TResult Function(ScreensProfileState value)? screens,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

/// @nodoc
abstract class $InitialProfileStateCopyWith<$Res> {
  factory $InitialProfileStateCopyWith(
          InitialProfileState value, $Res Function(InitialProfileState) then) =
      _$InitialProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $InitialProfileStateCopyWith<$Res> {
  _$InitialProfileStateCopyWithImpl(
      InitialProfileState _value, $Res Function(InitialProfileState) _then)
      : super(_value, (v) => _then(v as InitialProfileState));

  @override
  InitialProfileState get _value => super._value as InitialProfileState;
}

/// @nodoc

class _$InitialProfileState implements InitialProfileState {
  const _$InitialProfileState();

  @override
  String toString() {
    return 'ProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accessResume,
    required TResult Function(
            int id,
            int buttons,
            String title,
            Resume resume,
            bool isEnabled,
            List<Block> blocks,
            int feedbacksCount,
            FormzStatus status,
            List<Resume> resumes,
            TypeProfileUser profile,
            List<String> localResumes,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)
        profileState,
    required TResult Function(int page) screens,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accessResume,
    TResult Function(
            int id,
            int buttons,
            String title,
            Resume resume,
            bool isEnabled,
            List<Block> blocks,
            int feedbacksCount,
            FormzStatus status,
            List<Resume> resumes,
            TypeProfileUser profile,
            List<String> localResumes,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)?
        profileState,
    TResult Function(int page)? screens,
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
    required TResult Function(InitialProfileState value) initial,
    required TResult Function(AccessResumeProfileState value) accessResume,
    required TResult Function(ProfileScreenState value) profileState,
    required TResult Function(ScreensProfileState value) screens,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProfileState value)? initial,
    TResult Function(AccessResumeProfileState value)? accessResume,
    TResult Function(ProfileScreenState value)? profileState,
    TResult Function(ScreensProfileState value)? screens,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialProfileState implements ProfileState {
  const factory InitialProfileState() = _$InitialProfileState;
}

/// @nodoc
abstract class $AccessResumeProfileStateCopyWith<$Res> {
  factory $AccessResumeProfileStateCopyWith(AccessResumeProfileState value,
          $Res Function(AccessResumeProfileState) then) =
      _$AccessResumeProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccessResumeProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $AccessResumeProfileStateCopyWith<$Res> {
  _$AccessResumeProfileStateCopyWithImpl(AccessResumeProfileState _value,
      $Res Function(AccessResumeProfileState) _then)
      : super(_value, (v) => _then(v as AccessResumeProfileState));

  @override
  AccessResumeProfileState get _value =>
      super._value as AccessResumeProfileState;
}

/// @nodoc

class _$AccessResumeProfileState implements AccessResumeProfileState {
  const _$AccessResumeProfileState();

  @override
  String toString() {
    return 'ProfileState.accessResume()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AccessResumeProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accessResume,
    required TResult Function(
            int id,
            int buttons,
            String title,
            Resume resume,
            bool isEnabled,
            List<Block> blocks,
            int feedbacksCount,
            FormzStatus status,
            List<Resume> resumes,
            TypeProfileUser profile,
            List<String> localResumes,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)
        profileState,
    required TResult Function(int page) screens,
  }) {
    return accessResume();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accessResume,
    TResult Function(
            int id,
            int buttons,
            String title,
            Resume resume,
            bool isEnabled,
            List<Block> blocks,
            int feedbacksCount,
            FormzStatus status,
            List<Resume> resumes,
            TypeProfileUser profile,
            List<String> localResumes,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)?
        profileState,
    TResult Function(int page)? screens,
    required TResult orElse(),
  }) {
    if (accessResume != null) {
      return accessResume();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialProfileState value) initial,
    required TResult Function(AccessResumeProfileState value) accessResume,
    required TResult Function(ProfileScreenState value) profileState,
    required TResult Function(ScreensProfileState value) screens,
  }) {
    return accessResume(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProfileState value)? initial,
    TResult Function(AccessResumeProfileState value)? accessResume,
    TResult Function(ProfileScreenState value)? profileState,
    TResult Function(ScreensProfileState value)? screens,
    required TResult orElse(),
  }) {
    if (accessResume != null) {
      return accessResume(this);
    }
    return orElse();
  }
}

abstract class AccessResumeProfileState implements ProfileState {
  const factory AccessResumeProfileState() = _$AccessResumeProfileState;
}

/// @nodoc
abstract class $ProfileScreenStateCopyWith<$Res> {
  factory $ProfileScreenStateCopyWith(
          ProfileScreenState value, $Res Function(ProfileScreenState) then) =
      _$ProfileScreenStateCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int buttons,
      String title,
      Resume resume,
      bool isEnabled,
      List<Block> blocks,
      int feedbacksCount,
      FormzStatus status,
      List<Resume> resumes,
      TypeProfileUser profile,
      List<String> localResumes,
      List<Map<String, dynamic>> stages,
      List<Map<String, dynamic>> grades});
}

/// @nodoc
class _$ProfileScreenStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileScreenStateCopyWith<$Res> {
  _$ProfileScreenStateCopyWithImpl(
      ProfileScreenState _value, $Res Function(ProfileScreenState) _then)
      : super(_value, (v) => _then(v as ProfileScreenState));

  @override
  ProfileScreenState get _value => super._value as ProfileScreenState;

  @override
  $Res call({
    Object? id = freezed,
    Object? buttons = freezed,
    Object? title = freezed,
    Object? resume = freezed,
    Object? isEnabled = freezed,
    Object? blocks = freezed,
    Object? feedbacksCount = freezed,
    Object? status = freezed,
    Object? resumes = freezed,
    Object? profile = freezed,
    Object? localResumes = freezed,
    Object? stages = freezed,
    Object? grades = freezed,
  }) {
    return _then(ProfileScreenState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      buttons: buttons == freezed
          ? _value.buttons
          : buttons // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      resume: resume == freezed
          ? _value.resume
          : resume // ignore: cast_nullable_to_non_nullable
              as Resume,
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      blocks: blocks == freezed
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<Block>,
      feedbacksCount: feedbacksCount == freezed
          ? _value.feedbacksCount
          : feedbacksCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      resumes: resumes == freezed
          ? _value.resumes
          : resumes // ignore: cast_nullable_to_non_nullable
              as List<Resume>,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as TypeProfileUser,
      localResumes: localResumes == freezed
          ? _value.localResumes
          : localResumes // ignore: cast_nullable_to_non_nullable
              as List<String>,
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

class _$ProfileScreenState implements ProfileScreenState {
  const _$ProfileScreenState(
      {required this.id,
      required this.buttons,
      required this.title,
      required this.resume,
      required this.isEnabled,
      required this.blocks,
      required this.feedbacksCount,
      required this.status,
      required this.resumes,
      required this.profile,
      required this.localResumes,
      required this.stages,
      required this.grades});

  @override
  final int id;
  @override
  final int buttons;
  @override
  final String title;
  @override
  final Resume resume;
  @override
  final bool isEnabled;
  @override
  final List<Block> blocks;
  @override
  final int feedbacksCount;
  @override
  final FormzStatus status;
  @override
  final List<Resume> resumes;
  @override
  final TypeProfileUser profile;
  @override
  final List<String> localResumes;
  @override
  final List<Map<String, dynamic>> stages;
  @override
  final List<Map<String, dynamic>> grades;

  @override
  String toString() {
    return 'ProfileState.profileState(id: $id, buttons: $buttons, title: $title, resume: $resume, isEnabled: $isEnabled, blocks: $blocks, feedbacksCount: $feedbacksCount, status: $status, resumes: $resumes, profile: $profile, localResumes: $localResumes, stages: $stages, grades: $grades)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProfileScreenState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.buttons, buttons) ||
                const DeepCollectionEquality()
                    .equals(other.buttons, buttons)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.resume, resume) ||
                const DeepCollectionEquality().equals(other.resume, resume)) &&
            (identical(other.isEnabled, isEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.isEnabled, isEnabled)) &&
            (identical(other.blocks, blocks) ||
                const DeepCollectionEquality().equals(other.blocks, blocks)) &&
            (identical(other.feedbacksCount, feedbacksCount) ||
                const DeepCollectionEquality()
                    .equals(other.feedbacksCount, feedbacksCount)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.resumes, resumes) ||
                const DeepCollectionEquality()
                    .equals(other.resumes, resumes)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.localResumes, localResumes) ||
                const DeepCollectionEquality()
                    .equals(other.localResumes, localResumes)) &&
            (identical(other.stages, stages) ||
                const DeepCollectionEquality().equals(other.stages, stages)) &&
            (identical(other.grades, grades) ||
                const DeepCollectionEquality().equals(other.grades, grades)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(buttons) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(resume) ^
      const DeepCollectionEquality().hash(isEnabled) ^
      const DeepCollectionEquality().hash(blocks) ^
      const DeepCollectionEquality().hash(feedbacksCount) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(resumes) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(localResumes) ^
      const DeepCollectionEquality().hash(stages) ^
      const DeepCollectionEquality().hash(grades);

  @JsonKey(ignore: true)
  @override
  $ProfileScreenStateCopyWith<ProfileScreenState> get copyWith =>
      _$ProfileScreenStateCopyWithImpl<ProfileScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accessResume,
    required TResult Function(
            int id,
            int buttons,
            String title,
            Resume resume,
            bool isEnabled,
            List<Block> blocks,
            int feedbacksCount,
            FormzStatus status,
            List<Resume> resumes,
            TypeProfileUser profile,
            List<String> localResumes,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)
        profileState,
    required TResult Function(int page) screens,
  }) {
    return profileState(id, buttons, title, resume, isEnabled, blocks,
        feedbacksCount, status, resumes, profile, localResumes, stages, grades);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accessResume,
    TResult Function(
            int id,
            int buttons,
            String title,
            Resume resume,
            bool isEnabled,
            List<Block> blocks,
            int feedbacksCount,
            FormzStatus status,
            List<Resume> resumes,
            TypeProfileUser profile,
            List<String> localResumes,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)?
        profileState,
    TResult Function(int page)? screens,
    required TResult orElse(),
  }) {
    if (profileState != null) {
      return profileState(
          id,
          buttons,
          title,
          resume,
          isEnabled,
          blocks,
          feedbacksCount,
          status,
          resumes,
          profile,
          localResumes,
          stages,
          grades);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialProfileState value) initial,
    required TResult Function(AccessResumeProfileState value) accessResume,
    required TResult Function(ProfileScreenState value) profileState,
    required TResult Function(ScreensProfileState value) screens,
  }) {
    return profileState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProfileState value)? initial,
    TResult Function(AccessResumeProfileState value)? accessResume,
    TResult Function(ProfileScreenState value)? profileState,
    TResult Function(ScreensProfileState value)? screens,
    required TResult orElse(),
  }) {
    if (profileState != null) {
      return profileState(this);
    }
    return orElse();
  }
}

abstract class ProfileScreenState implements ProfileState {
  const factory ProfileScreenState(
      {required int id,
      required int buttons,
      required String title,
      required Resume resume,
      required bool isEnabled,
      required List<Block> blocks,
      required int feedbacksCount,
      required FormzStatus status,
      required List<Resume> resumes,
      required TypeProfileUser profile,
      required List<String> localResumes,
      required List<Map<String, dynamic>> stages,
      required List<Map<String, dynamic>> grades}) = _$ProfileScreenState;

  int get id => throw _privateConstructorUsedError;
  int get buttons => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Resume get resume => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;
  List<Block> get blocks => throw _privateConstructorUsedError;
  int get feedbacksCount => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  List<Resume> get resumes => throw _privateConstructorUsedError;
  TypeProfileUser get profile => throw _privateConstructorUsedError;
  List<String> get localResumes => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get stages => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get grades => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileScreenStateCopyWith<ProfileScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreensProfileStateCopyWith<$Res> {
  factory $ScreensProfileStateCopyWith(
          ScreensProfileState value, $Res Function(ScreensProfileState) then) =
      _$ScreensProfileStateCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class _$ScreensProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $ScreensProfileStateCopyWith<$Res> {
  _$ScreensProfileStateCopyWithImpl(
      ScreensProfileState _value, $Res Function(ScreensProfileState) _then)
      : super(_value, (v) => _then(v as ScreensProfileState));

  @override
  ScreensProfileState get _value => super._value as ScreensProfileState;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(ScreensProfileState(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ScreensProfileState implements ScreensProfileState {
  const _$ScreensProfileState({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'ProfileState.screens(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScreensProfileState &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  $ScreensProfileStateCopyWith<ScreensProfileState> get copyWith =>
      _$ScreensProfileStateCopyWithImpl<ScreensProfileState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accessResume,
    required TResult Function(
            int id,
            int buttons,
            String title,
            Resume resume,
            bool isEnabled,
            List<Block> blocks,
            int feedbacksCount,
            FormzStatus status,
            List<Resume> resumes,
            TypeProfileUser profile,
            List<String> localResumes,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)
        profileState,
    required TResult Function(int page) screens,
  }) {
    return screens(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accessResume,
    TResult Function(
            int id,
            int buttons,
            String title,
            Resume resume,
            bool isEnabled,
            List<Block> blocks,
            int feedbacksCount,
            FormzStatus status,
            List<Resume> resumes,
            TypeProfileUser profile,
            List<String> localResumes,
            List<Map<String, dynamic>> stages,
            List<Map<String, dynamic>> grades)?
        profileState,
    TResult Function(int page)? screens,
    required TResult orElse(),
  }) {
    if (screens != null) {
      return screens(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialProfileState value) initial,
    required TResult Function(AccessResumeProfileState value) accessResume,
    required TResult Function(ProfileScreenState value) profileState,
    required TResult Function(ScreensProfileState value) screens,
  }) {
    return screens(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProfileState value)? initial,
    TResult Function(AccessResumeProfileState value)? accessResume,
    TResult Function(ProfileScreenState value)? profileState,
    TResult Function(ScreensProfileState value)? screens,
    required TResult orElse(),
  }) {
    if (screens != null) {
      return screens(this);
    }
    return orElse();
  }
}

abstract class ScreensProfileState implements ProfileState {
  const factory ScreensProfileState({required int page}) =
      _$ScreensProfileState;

  int get page => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScreensProfileStateCopyWith<ScreensProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
