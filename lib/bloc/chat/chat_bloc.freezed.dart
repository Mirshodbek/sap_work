// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatEventTearOff {
  const _$ChatEventTearOff();

  _GetChatsEvent getChats({required int id, required String type}) {
    return _GetChatsEvent(
      id: id,
      type: type,
    );
  }

  _PostChatEvent postChat(
      {required int id, required String text, required String type}) {
    return _PostChatEvent(
      id: id,
      text: text,
      type: type,
    );
  }
}

/// @nodoc
const $ChatEvent = _$ChatEventTearOff();

/// @nodoc
mixin _$ChatEvent {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String type) getChats,
    required TResult Function(int id, String text, String type) postChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String type)? getChats,
    TResult Function(int id, String text, String type)? postChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChatsEvent value) getChats,
    required TResult Function(_PostChatEvent value) postChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChatsEvent value)? getChats,
    TResult Function(_PostChatEvent value)? postChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatEventCopyWith<ChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res>;
  $Res call({int id, String type});
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res> implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  final ChatEvent _value;
  // ignore: unused_field
  final $Res Function(ChatEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetChatsEventCopyWith<$Res>
    implements $ChatEventCopyWith<$Res> {
  factory _$GetChatsEventCopyWith(
          _GetChatsEvent value, $Res Function(_GetChatsEvent) then) =
      __$GetChatsEventCopyWithImpl<$Res>;
  @override
  $Res call({int id, String type});
}

/// @nodoc
class __$GetChatsEventCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$GetChatsEventCopyWith<$Res> {
  __$GetChatsEventCopyWithImpl(
      _GetChatsEvent _value, $Res Function(_GetChatsEvent) _then)
      : super(_value, (v) => _then(v as _GetChatsEvent));

  @override
  _GetChatsEvent get _value => super._value as _GetChatsEvent;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_GetChatsEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetChatsEvent implements _GetChatsEvent {
  const _$_GetChatsEvent({required this.id, required this.type});

  @override
  final int id;
  @override
  final String type;

  @override
  String toString() {
    return 'ChatEvent.getChats(id: $id, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetChatsEvent &&
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
  _$GetChatsEventCopyWith<_GetChatsEvent> get copyWith =>
      __$GetChatsEventCopyWithImpl<_GetChatsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String type) getChats,
    required TResult Function(int id, String text, String type) postChat,
  }) {
    return getChats(id, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String type)? getChats,
    TResult Function(int id, String text, String type)? postChat,
    required TResult orElse(),
  }) {
    if (getChats != null) {
      return getChats(id, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChatsEvent value) getChats,
    required TResult Function(_PostChatEvent value) postChat,
  }) {
    return getChats(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChatsEvent value)? getChats,
    TResult Function(_PostChatEvent value)? postChat,
    required TResult orElse(),
  }) {
    if (getChats != null) {
      return getChats(this);
    }
    return orElse();
  }
}

abstract class _GetChatsEvent implements ChatEvent {
  const factory _GetChatsEvent({required int id, required String type}) =
      _$_GetChatsEvent;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetChatsEventCopyWith<_GetChatsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PostChatEventCopyWith<$Res>
    implements $ChatEventCopyWith<$Res> {
  factory _$PostChatEventCopyWith(
          _PostChatEvent value, $Res Function(_PostChatEvent) then) =
      __$PostChatEventCopyWithImpl<$Res>;
  @override
  $Res call({int id, String text, String type});
}

/// @nodoc
class __$PostChatEventCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$PostChatEventCopyWith<$Res> {
  __$PostChatEventCopyWithImpl(
      _PostChatEvent _value, $Res Function(_PostChatEvent) _then)
      : super(_value, (v) => _then(v as _PostChatEvent));

  @override
  _PostChatEvent get _value => super._value as _PostChatEvent;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? type = freezed,
  }) {
    return _then(_PostChatEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PostChatEvent implements _PostChatEvent {
  const _$_PostChatEvent(
      {required this.id, required this.text, required this.type});

  @override
  final int id;
  @override
  final String text;
  @override
  final String type;

  @override
  String toString() {
    return 'ChatEvent.postChat(id: $id, text: $text, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostChatEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$PostChatEventCopyWith<_PostChatEvent> get copyWith =>
      __$PostChatEventCopyWithImpl<_PostChatEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String type) getChats,
    required TResult Function(int id, String text, String type) postChat,
  }) {
    return postChat(id, text, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String type)? getChats,
    TResult Function(int id, String text, String type)? postChat,
    required TResult orElse(),
  }) {
    if (postChat != null) {
      return postChat(id, text, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChatsEvent value) getChats,
    required TResult Function(_PostChatEvent value) postChat,
  }) {
    return postChat(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChatsEvent value)? getChats,
    TResult Function(_PostChatEvent value)? postChat,
    required TResult orElse(),
  }) {
    if (postChat != null) {
      return postChat(this);
    }
    return orElse();
  }
}

abstract class _PostChatEvent implements ChatEvent {
  const factory _PostChatEvent(
      {required int id,
      required String text,
      required String type}) = _$_PostChatEvent;

  @override
  int get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostChatEventCopyWith<_PostChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatStateTearOff {
  const _$ChatStateTearOff();

  EmptyChatState empty() {
    return const EmptyChatState();
  }

  LoadingChatState loading() {
    return const LoadingChatState();
  }

  LoadedChatState loaded(
      {required List<Chat> chats, required FormzStatus status}) {
    return LoadedChatState(
      chats: chats,
      status: status,
    );
  }

  ErrorChatState error({required String message}) {
    return ErrorChatState(
      message: message,
    );
  }
}

/// @nodoc
const $ChatState = _$ChatStateTearOff();

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Chat> chats, FormzStatus status) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Chat> chats, FormzStatus status)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyChatState value) empty,
    required TResult Function(LoadingChatState value) loading,
    required TResult Function(LoadedChatState value) loaded,
    required TResult Function(ErrorChatState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyChatState value)? empty,
    TResult Function(LoadingChatState value)? loading,
    TResult Function(LoadedChatState value)? loaded,
    TResult Function(ErrorChatState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;
}

/// @nodoc
abstract class $EmptyChatStateCopyWith<$Res> {
  factory $EmptyChatStateCopyWith(
          EmptyChatState value, $Res Function(EmptyChatState) then) =
      _$EmptyChatStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyChatStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements $EmptyChatStateCopyWith<$Res> {
  _$EmptyChatStateCopyWithImpl(
      EmptyChatState _value, $Res Function(EmptyChatState) _then)
      : super(_value, (v) => _then(v as EmptyChatState));

  @override
  EmptyChatState get _value => super._value as EmptyChatState;
}

/// @nodoc

class _$EmptyChatState implements EmptyChatState {
  const _$EmptyChatState();

  @override
  String toString() {
    return 'ChatState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyChatState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Chat> chats, FormzStatus status) loaded,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Chat> chats, FormzStatus status)? loaded,
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
    required TResult Function(EmptyChatState value) empty,
    required TResult Function(LoadingChatState value) loading,
    required TResult Function(LoadedChatState value) loaded,
    required TResult Function(ErrorChatState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyChatState value)? empty,
    TResult Function(LoadingChatState value)? loading,
    TResult Function(LoadedChatState value)? loaded,
    TResult Function(ErrorChatState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyChatState implements ChatState {
  const factory EmptyChatState() = _$EmptyChatState;
}

/// @nodoc
abstract class $LoadingChatStateCopyWith<$Res> {
  factory $LoadingChatStateCopyWith(
          LoadingChatState value, $Res Function(LoadingChatState) then) =
      _$LoadingChatStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingChatStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements $LoadingChatStateCopyWith<$Res> {
  _$LoadingChatStateCopyWithImpl(
      LoadingChatState _value, $Res Function(LoadingChatState) _then)
      : super(_value, (v) => _then(v as LoadingChatState));

  @override
  LoadingChatState get _value => super._value as LoadingChatState;
}

/// @nodoc

class _$LoadingChatState implements LoadingChatState {
  const _$LoadingChatState();

  @override
  String toString() {
    return 'ChatState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingChatState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Chat> chats, FormzStatus status) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Chat> chats, FormzStatus status)? loaded,
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
    required TResult Function(EmptyChatState value) empty,
    required TResult Function(LoadingChatState value) loading,
    required TResult Function(LoadedChatState value) loaded,
    required TResult Function(ErrorChatState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyChatState value)? empty,
    TResult Function(LoadingChatState value)? loading,
    TResult Function(LoadedChatState value)? loaded,
    TResult Function(ErrorChatState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingChatState implements ChatState {
  const factory LoadingChatState() = _$LoadingChatState;
}

/// @nodoc
abstract class $LoadedChatStateCopyWith<$Res> {
  factory $LoadedChatStateCopyWith(
          LoadedChatState value, $Res Function(LoadedChatState) then) =
      _$LoadedChatStateCopyWithImpl<$Res>;
  $Res call({List<Chat> chats, FormzStatus status});
}

/// @nodoc
class _$LoadedChatStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements $LoadedChatStateCopyWith<$Res> {
  _$LoadedChatStateCopyWithImpl(
      LoadedChatState _value, $Res Function(LoadedChatState) _then)
      : super(_value, (v) => _then(v as LoadedChatState));

  @override
  LoadedChatState get _value => super._value as LoadedChatState;

  @override
  $Res call({
    Object? chats = freezed,
    Object? status = freezed,
  }) {
    return _then(LoadedChatState(
      chats: chats == freezed
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$LoadedChatState implements LoadedChatState {
  const _$LoadedChatState({required this.chats, required this.status});

  @override
  final List<Chat> chats;
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'ChatState.loaded(chats: $chats, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedChatState &&
            (identical(other.chats, chats) ||
                const DeepCollectionEquality().equals(other.chats, chats)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chats) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $LoadedChatStateCopyWith<LoadedChatState> get copyWith =>
      _$LoadedChatStateCopyWithImpl<LoadedChatState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Chat> chats, FormzStatus status) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(chats, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Chat> chats, FormzStatus status)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(chats, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyChatState value) empty,
    required TResult Function(LoadingChatState value) loading,
    required TResult Function(LoadedChatState value) loaded,
    required TResult Function(ErrorChatState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyChatState value)? empty,
    TResult Function(LoadingChatState value)? loading,
    TResult Function(LoadedChatState value)? loaded,
    TResult Function(ErrorChatState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedChatState implements ChatState {
  const factory LoadedChatState(
      {required List<Chat> chats,
      required FormzStatus status}) = _$LoadedChatState;

  List<Chat> get chats => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedChatStateCopyWith<LoadedChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorChatStateCopyWith<$Res> {
  factory $ErrorChatStateCopyWith(
          ErrorChatState value, $Res Function(ErrorChatState) then) =
      _$ErrorChatStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorChatStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements $ErrorChatStateCopyWith<$Res> {
  _$ErrorChatStateCopyWithImpl(
      ErrorChatState _value, $Res Function(ErrorChatState) _then)
      : super(_value, (v) => _then(v as ErrorChatState));

  @override
  ErrorChatState get _value => super._value as ErrorChatState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorChatState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorChatState implements ErrorChatState {
  const _$ErrorChatState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ChatState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorChatState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorChatStateCopyWith<ErrorChatState> get copyWith =>
      _$ErrorChatStateCopyWithImpl<ErrorChatState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Chat> chats, FormzStatus status) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Chat> chats, FormzStatus status)? loaded,
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
    required TResult Function(EmptyChatState value) empty,
    required TResult Function(LoadingChatState value) loading,
    required TResult Function(LoadedChatState value) loaded,
    required TResult Function(ErrorChatState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyChatState value)? empty,
    TResult Function(LoadingChatState value)? loading,
    TResult Function(LoadedChatState value)? loaded,
    TResult Function(ErrorChatState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorChatState implements ChatState {
  const factory ErrorChatState({required String message}) = _$ErrorChatState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorChatStateCopyWith<ErrorChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
