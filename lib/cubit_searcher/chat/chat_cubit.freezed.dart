// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatStateTearOff {
  const _$ChatStateTearOff();

  _InitialChatState initial() {
    return const _InitialChatState();
  }

  _ChatsChatState chat({required List<Chat> chats}) {
    return _ChatsChatState(
      chats: chats,
    );
  }
}

/// @nodoc
const $ChatState = _$ChatStateTearOff();

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Chat> chats) chat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Chat> chats)? chat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialChatState value) initial,
    required TResult Function(_ChatsChatState value) chat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialChatState value)? initial,
    TResult Function(_ChatsChatState value)? chat,
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
abstract class _$InitialChatStateCopyWith<$Res> {
  factory _$InitialChatStateCopyWith(
          _InitialChatState value, $Res Function(_InitialChatState) then) =
      __$InitialChatStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialChatStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res>
    implements _$InitialChatStateCopyWith<$Res> {
  __$InitialChatStateCopyWithImpl(
      _InitialChatState _value, $Res Function(_InitialChatState) _then)
      : super(_value, (v) => _then(v as _InitialChatState));

  @override
  _InitialChatState get _value => super._value as _InitialChatState;
}

/// @nodoc

class _$_InitialChatState implements _InitialChatState {
  const _$_InitialChatState();

  @override
  String toString() {
    return 'ChatState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialChatState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Chat> chats) chat,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Chat> chats)? chat,
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
    required TResult Function(_InitialChatState value) initial,
    required TResult Function(_ChatsChatState value) chat,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialChatState value)? initial,
    TResult Function(_ChatsChatState value)? chat,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialChatState implements ChatState {
  const factory _InitialChatState() = _$_InitialChatState;
}

/// @nodoc
abstract class _$ChatsChatStateCopyWith<$Res> {
  factory _$ChatsChatStateCopyWith(
          _ChatsChatState value, $Res Function(_ChatsChatState) then) =
      __$ChatsChatStateCopyWithImpl<$Res>;
  $Res call({List<Chat> chats});
}

/// @nodoc
class __$ChatsChatStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements _$ChatsChatStateCopyWith<$Res> {
  __$ChatsChatStateCopyWithImpl(
      _ChatsChatState _value, $Res Function(_ChatsChatState) _then)
      : super(_value, (v) => _then(v as _ChatsChatState));

  @override
  _ChatsChatState get _value => super._value as _ChatsChatState;

  @override
  $Res call({
    Object? chats = freezed,
  }) {
    return _then(_ChatsChatState(
      chats: chats == freezed
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
    ));
  }
}

/// @nodoc

class _$_ChatsChatState implements _ChatsChatState {
  const _$_ChatsChatState({required this.chats});

  @override
  final List<Chat> chats;

  @override
  String toString() {
    return 'ChatState.chat(chats: $chats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatsChatState &&
            (identical(other.chats, chats) ||
                const DeepCollectionEquality().equals(other.chats, chats)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chats);

  @JsonKey(ignore: true)
  @override
  _$ChatsChatStateCopyWith<_ChatsChatState> get copyWith =>
      __$ChatsChatStateCopyWithImpl<_ChatsChatState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Chat> chats) chat,
  }) {
    return chat(chats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Chat> chats)? chat,
    required TResult orElse(),
  }) {
    if (chat != null) {
      return chat(chats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialChatState value) initial,
    required TResult Function(_ChatsChatState value) chat,
  }) {
    return chat(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialChatState value)? initial,
    TResult Function(_ChatsChatState value)? chat,
    required TResult orElse(),
  }) {
    if (chat != null) {
      return chat(this);
    }
    return orElse();
  }
}

abstract class _ChatsChatState implements ChatState {
  const factory _ChatsChatState({required List<Chat> chats}) =
      _$_ChatsChatState;

  List<Chat> get chats => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChatsChatStateCopyWith<_ChatsChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
