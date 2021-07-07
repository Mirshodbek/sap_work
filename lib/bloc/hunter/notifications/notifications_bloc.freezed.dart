// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationsEventTearOff {
  const _$NotificationsEventTearOff();

  _InitialNotificationsEvent initial() {
    return const _InitialNotificationsEvent();
  }

  _RefreshNotificationsEvent refresh() {
    return const _RefreshNotificationsEvent();
  }

  _DisconnectedInternetNotificationsEvent disconnectedInternet() {
    return const _DisconnectedInternetNotificationsEvent();
  }

  _MessageNotificationsEvent message({required int id}) {
    return _MessageNotificationsEvent(
      id: id,
    );
  }

  _SendMessageNotificationsEvent sendMessage({required String text}) {
    return _SendMessageNotificationsEvent(
      text: text,
    );
  }
}

/// @nodoc
const $NotificationsEvent = _$NotificationsEventTearOff();

/// @nodoc
mixin _$NotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function() disconnectedInternet,
    required TResult Function(int id) message,
    required TResult Function(String text) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function()? disconnectedInternet,
    TResult Function(int id)? message,
    TResult Function(String text)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialNotificationsEvent value) initial,
    required TResult Function(_RefreshNotificationsEvent value) refresh,
    required TResult Function(_DisconnectedInternetNotificationsEvent value)
        disconnectedInternet,
    required TResult Function(_MessageNotificationsEvent value) message,
    required TResult Function(_SendMessageNotificationsEvent value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNotificationsEvent value)? initial,
    TResult Function(_RefreshNotificationsEvent value)? refresh,
    TResult Function(_DisconnectedInternetNotificationsEvent value)?
        disconnectedInternet,
    TResult Function(_MessageNotificationsEvent value)? message,
    TResult Function(_SendMessageNotificationsEvent value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsEventCopyWith<$Res> {
  factory $NotificationsEventCopyWith(
          NotificationsEvent value, $Res Function(NotificationsEvent) then) =
      _$NotificationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationsEventCopyWithImpl<$Res>
    implements $NotificationsEventCopyWith<$Res> {
  _$NotificationsEventCopyWithImpl(this._value, this._then);

  final NotificationsEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationsEvent) _then;
}

/// @nodoc
abstract class _$InitialNotificationsEventCopyWith<$Res> {
  factory _$InitialNotificationsEventCopyWith(_InitialNotificationsEvent value,
          $Res Function(_InitialNotificationsEvent) then) =
      __$InitialNotificationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialNotificationsEventCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements _$InitialNotificationsEventCopyWith<$Res> {
  __$InitialNotificationsEventCopyWithImpl(_InitialNotificationsEvent _value,
      $Res Function(_InitialNotificationsEvent) _then)
      : super(_value, (v) => _then(v as _InitialNotificationsEvent));

  @override
  _InitialNotificationsEvent get _value =>
      super._value as _InitialNotificationsEvent;
}

/// @nodoc

class _$_InitialNotificationsEvent implements _InitialNotificationsEvent {
  const _$_InitialNotificationsEvent();

  @override
  String toString() {
    return 'NotificationsEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialNotificationsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function() disconnectedInternet,
    required TResult Function(int id) message,
    required TResult Function(String text) sendMessage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function()? disconnectedInternet,
    TResult Function(int id)? message,
    TResult Function(String text)? sendMessage,
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
    required TResult Function(_InitialNotificationsEvent value) initial,
    required TResult Function(_RefreshNotificationsEvent value) refresh,
    required TResult Function(_DisconnectedInternetNotificationsEvent value)
        disconnectedInternet,
    required TResult Function(_MessageNotificationsEvent value) message,
    required TResult Function(_SendMessageNotificationsEvent value) sendMessage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNotificationsEvent value)? initial,
    TResult Function(_RefreshNotificationsEvent value)? refresh,
    TResult Function(_DisconnectedInternetNotificationsEvent value)?
        disconnectedInternet,
    TResult Function(_MessageNotificationsEvent value)? message,
    TResult Function(_SendMessageNotificationsEvent value)? sendMessage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialNotificationsEvent implements NotificationsEvent {
  const factory _InitialNotificationsEvent() = _$_InitialNotificationsEvent;
}

/// @nodoc
abstract class _$RefreshNotificationsEventCopyWith<$Res> {
  factory _$RefreshNotificationsEventCopyWith(_RefreshNotificationsEvent value,
          $Res Function(_RefreshNotificationsEvent) then) =
      __$RefreshNotificationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshNotificationsEventCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements _$RefreshNotificationsEventCopyWith<$Res> {
  __$RefreshNotificationsEventCopyWithImpl(_RefreshNotificationsEvent _value,
      $Res Function(_RefreshNotificationsEvent) _then)
      : super(_value, (v) => _then(v as _RefreshNotificationsEvent));

  @override
  _RefreshNotificationsEvent get _value =>
      super._value as _RefreshNotificationsEvent;
}

/// @nodoc

class _$_RefreshNotificationsEvent implements _RefreshNotificationsEvent {
  const _$_RefreshNotificationsEvent();

  @override
  String toString() {
    return 'NotificationsEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RefreshNotificationsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function() disconnectedInternet,
    required TResult Function(int id) message,
    required TResult Function(String text) sendMessage,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function()? disconnectedInternet,
    TResult Function(int id)? message,
    TResult Function(String text)? sendMessage,
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
    required TResult Function(_InitialNotificationsEvent value) initial,
    required TResult Function(_RefreshNotificationsEvent value) refresh,
    required TResult Function(_DisconnectedInternetNotificationsEvent value)
        disconnectedInternet,
    required TResult Function(_MessageNotificationsEvent value) message,
    required TResult Function(_SendMessageNotificationsEvent value) sendMessage,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNotificationsEvent value)? initial,
    TResult Function(_RefreshNotificationsEvent value)? refresh,
    TResult Function(_DisconnectedInternetNotificationsEvent value)?
        disconnectedInternet,
    TResult Function(_MessageNotificationsEvent value)? message,
    TResult Function(_SendMessageNotificationsEvent value)? sendMessage,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _RefreshNotificationsEvent implements NotificationsEvent {
  const factory _RefreshNotificationsEvent() = _$_RefreshNotificationsEvent;
}

/// @nodoc
abstract class _$DisconnectedInternetNotificationsEventCopyWith<$Res> {
  factory _$DisconnectedInternetNotificationsEventCopyWith(
          _DisconnectedInternetNotificationsEvent value,
          $Res Function(_DisconnectedInternetNotificationsEvent) then) =
      __$DisconnectedInternetNotificationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$DisconnectedInternetNotificationsEventCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements _$DisconnectedInternetNotificationsEventCopyWith<$Res> {
  __$DisconnectedInternetNotificationsEventCopyWithImpl(
      _DisconnectedInternetNotificationsEvent _value,
      $Res Function(_DisconnectedInternetNotificationsEvent) _then)
      : super(
            _value, (v) => _then(v as _DisconnectedInternetNotificationsEvent));

  @override
  _DisconnectedInternetNotificationsEvent get _value =>
      super._value as _DisconnectedInternetNotificationsEvent;
}

/// @nodoc

class _$_DisconnectedInternetNotificationsEvent
    implements _DisconnectedInternetNotificationsEvent {
  const _$_DisconnectedInternetNotificationsEvent();

  @override
  String toString() {
    return 'NotificationsEvent.disconnectedInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DisconnectedInternetNotificationsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function() disconnectedInternet,
    required TResult Function(int id) message,
    required TResult Function(String text) sendMessage,
  }) {
    return disconnectedInternet();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function()? disconnectedInternet,
    TResult Function(int id)? message,
    TResult Function(String text)? sendMessage,
    required TResult orElse(),
  }) {
    if (disconnectedInternet != null) {
      return disconnectedInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialNotificationsEvent value) initial,
    required TResult Function(_RefreshNotificationsEvent value) refresh,
    required TResult Function(_DisconnectedInternetNotificationsEvent value)
        disconnectedInternet,
    required TResult Function(_MessageNotificationsEvent value) message,
    required TResult Function(_SendMessageNotificationsEvent value) sendMessage,
  }) {
    return disconnectedInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNotificationsEvent value)? initial,
    TResult Function(_RefreshNotificationsEvent value)? refresh,
    TResult Function(_DisconnectedInternetNotificationsEvent value)?
        disconnectedInternet,
    TResult Function(_MessageNotificationsEvent value)? message,
    TResult Function(_SendMessageNotificationsEvent value)? sendMessage,
    required TResult orElse(),
  }) {
    if (disconnectedInternet != null) {
      return disconnectedInternet(this);
    }
    return orElse();
  }
}

abstract class _DisconnectedInternetNotificationsEvent
    implements NotificationsEvent {
  const factory _DisconnectedInternetNotificationsEvent() =
      _$_DisconnectedInternetNotificationsEvent;
}

/// @nodoc
abstract class _$MessageNotificationsEventCopyWith<$Res> {
  factory _$MessageNotificationsEventCopyWith(_MessageNotificationsEvent value,
          $Res Function(_MessageNotificationsEvent) then) =
      __$MessageNotificationsEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$MessageNotificationsEventCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements _$MessageNotificationsEventCopyWith<$Res> {
  __$MessageNotificationsEventCopyWithImpl(_MessageNotificationsEvent _value,
      $Res Function(_MessageNotificationsEvent) _then)
      : super(_value, (v) => _then(v as _MessageNotificationsEvent));

  @override
  _MessageNotificationsEvent get _value =>
      super._value as _MessageNotificationsEvent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_MessageNotificationsEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MessageNotificationsEvent implements _MessageNotificationsEvent {
  const _$_MessageNotificationsEvent({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'NotificationsEvent.message(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageNotificationsEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$MessageNotificationsEventCopyWith<_MessageNotificationsEvent>
      get copyWith =>
          __$MessageNotificationsEventCopyWithImpl<_MessageNotificationsEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function() disconnectedInternet,
    required TResult Function(int id) message,
    required TResult Function(String text) sendMessage,
  }) {
    return message(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function()? disconnectedInternet,
    TResult Function(int id)? message,
    TResult Function(String text)? sendMessage,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialNotificationsEvent value) initial,
    required TResult Function(_RefreshNotificationsEvent value) refresh,
    required TResult Function(_DisconnectedInternetNotificationsEvent value)
        disconnectedInternet,
    required TResult Function(_MessageNotificationsEvent value) message,
    required TResult Function(_SendMessageNotificationsEvent value) sendMessage,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNotificationsEvent value)? initial,
    TResult Function(_RefreshNotificationsEvent value)? refresh,
    TResult Function(_DisconnectedInternetNotificationsEvent value)?
        disconnectedInternet,
    TResult Function(_MessageNotificationsEvent value)? message,
    TResult Function(_SendMessageNotificationsEvent value)? sendMessage,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }
}

abstract class _MessageNotificationsEvent implements NotificationsEvent {
  const factory _MessageNotificationsEvent({required int id}) =
      _$_MessageNotificationsEvent;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MessageNotificationsEventCopyWith<_MessageNotificationsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendMessageNotificationsEventCopyWith<$Res> {
  factory _$SendMessageNotificationsEventCopyWith(
          _SendMessageNotificationsEvent value,
          $Res Function(_SendMessageNotificationsEvent) then) =
      __$SendMessageNotificationsEventCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class __$SendMessageNotificationsEventCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements _$SendMessageNotificationsEventCopyWith<$Res> {
  __$SendMessageNotificationsEventCopyWithImpl(
      _SendMessageNotificationsEvent _value,
      $Res Function(_SendMessageNotificationsEvent) _then)
      : super(_value, (v) => _then(v as _SendMessageNotificationsEvent));

  @override
  _SendMessageNotificationsEvent get _value =>
      super._value as _SendMessageNotificationsEvent;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_SendMessageNotificationsEvent(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendMessageNotificationsEvent
    implements _SendMessageNotificationsEvent {
  const _$_SendMessageNotificationsEvent({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'NotificationsEvent.sendMessage(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendMessageNotificationsEvent &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  _$SendMessageNotificationsEventCopyWith<_SendMessageNotificationsEvent>
      get copyWith => __$SendMessageNotificationsEventCopyWithImpl<
          _SendMessageNotificationsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function() disconnectedInternet,
    required TResult Function(int id) message,
    required TResult Function(String text) sendMessage,
  }) {
    return sendMessage(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function()? disconnectedInternet,
    TResult Function(int id)? message,
    TResult Function(String text)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialNotificationsEvent value) initial,
    required TResult Function(_RefreshNotificationsEvent value) refresh,
    required TResult Function(_DisconnectedInternetNotificationsEvent value)
        disconnectedInternet,
    required TResult Function(_MessageNotificationsEvent value) message,
    required TResult Function(_SendMessageNotificationsEvent value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNotificationsEvent value)? initial,
    TResult Function(_RefreshNotificationsEvent value)? refresh,
    TResult Function(_DisconnectedInternetNotificationsEvent value)?
        disconnectedInternet,
    TResult Function(_MessageNotificationsEvent value)? message,
    TResult Function(_SendMessageNotificationsEvent value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessageNotificationsEvent implements NotificationsEvent {
  const factory _SendMessageNotificationsEvent({required String text}) =
      _$_SendMessageNotificationsEvent;

  String get text => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SendMessageNotificationsEventCopyWith<_SendMessageNotificationsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$NotificationsStateTearOff {
  const _$NotificationsStateTearOff();

  InitialNotificationsState initial() {
    return const InitialNotificationsState();
  }

  NotificationsScreenState notificationsState(
      {required List<FeedbackResume> feedbacks,
      required List<Chat> messages,
      required int isSend}) {
    return NotificationsScreenState(
      feedbacks: feedbacks,
      messages: messages,
      isSend: isSend,
    );
  }

  NavigationNotificationsState navigationState() {
    return const NavigationNotificationsState();
  }

  DisconnectedInternetNotificationsState disconnectedInternet() {
    return const DisconnectedInternetNotificationsState();
  }

  MessagesScreenState messagesState(
      {required List<FeedbackResume> feedbacks,
      required List<Chat> messages,
      required int isSend}) {
    return MessagesScreenState(
      feedbacks: feedbacks,
      messages: messages,
      isSend: isSend,
    );
  }
}

/// @nodoc
const $NotificationsState = _$NotificationsStateTearOff();

/// @nodoc
mixin _$NotificationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)
        notificationsState,
    required TResult Function() navigationState,
    required TResult Function() disconnectedInternet,
    required TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)
        messagesState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)?
        notificationsState,
    TResult Function()? navigationState,
    TResult Function()? disconnectedInternet,
    TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)?
        messagesState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialNotificationsState value) initial,
    required TResult Function(NotificationsScreenState value)
        notificationsState,
    required TResult Function(NavigationNotificationsState value)
        navigationState,
    required TResult Function(DisconnectedInternetNotificationsState value)
        disconnectedInternet,
    required TResult Function(MessagesScreenState value) messagesState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialNotificationsState value)? initial,
    TResult Function(NotificationsScreenState value)? notificationsState,
    TResult Function(NavigationNotificationsState value)? navigationState,
    TResult Function(DisconnectedInternetNotificationsState value)?
        disconnectedInternet,
    TResult Function(MessagesScreenState value)? messagesState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsStateCopyWith<$Res> {
  factory $NotificationsStateCopyWith(
          NotificationsState value, $Res Function(NotificationsState) then) =
      _$NotificationsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

  final NotificationsState _value;
  // ignore: unused_field
  final $Res Function(NotificationsState) _then;
}

/// @nodoc
abstract class $InitialNotificationsStateCopyWith<$Res> {
  factory $InitialNotificationsStateCopyWith(InitialNotificationsState value,
          $Res Function(InitialNotificationsState) then) =
      _$InitialNotificationsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialNotificationsStateCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res>
    implements $InitialNotificationsStateCopyWith<$Res> {
  _$InitialNotificationsStateCopyWithImpl(InitialNotificationsState _value,
      $Res Function(InitialNotificationsState) _then)
      : super(_value, (v) => _then(v as InitialNotificationsState));

  @override
  InitialNotificationsState get _value =>
      super._value as InitialNotificationsState;
}

/// @nodoc

class _$InitialNotificationsState implements InitialNotificationsState {
  const _$InitialNotificationsState();

  @override
  String toString() {
    return 'NotificationsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialNotificationsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)
        notificationsState,
    required TResult Function() navigationState,
    required TResult Function() disconnectedInternet,
    required TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)
        messagesState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)?
        notificationsState,
    TResult Function()? navigationState,
    TResult Function()? disconnectedInternet,
    TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)?
        messagesState,
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
    required TResult Function(InitialNotificationsState value) initial,
    required TResult Function(NotificationsScreenState value)
        notificationsState,
    required TResult Function(NavigationNotificationsState value)
        navigationState,
    required TResult Function(DisconnectedInternetNotificationsState value)
        disconnectedInternet,
    required TResult Function(MessagesScreenState value) messagesState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialNotificationsState value)? initial,
    TResult Function(NotificationsScreenState value)? notificationsState,
    TResult Function(NavigationNotificationsState value)? navigationState,
    TResult Function(DisconnectedInternetNotificationsState value)?
        disconnectedInternet,
    TResult Function(MessagesScreenState value)? messagesState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialNotificationsState implements NotificationsState {
  const factory InitialNotificationsState() = _$InitialNotificationsState;
}

/// @nodoc
abstract class $NotificationsScreenStateCopyWith<$Res> {
  factory $NotificationsScreenStateCopyWith(NotificationsScreenState value,
          $Res Function(NotificationsScreenState) then) =
      _$NotificationsScreenStateCopyWithImpl<$Res>;
  $Res call({List<FeedbackResume> feedbacks, List<Chat> messages, int isSend});
}

/// @nodoc
class _$NotificationsScreenStateCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res>
    implements $NotificationsScreenStateCopyWith<$Res> {
  _$NotificationsScreenStateCopyWithImpl(NotificationsScreenState _value,
      $Res Function(NotificationsScreenState) _then)
      : super(_value, (v) => _then(v as NotificationsScreenState));

  @override
  NotificationsScreenState get _value =>
      super._value as NotificationsScreenState;

  @override
  $Res call({
    Object? feedbacks = freezed,
    Object? messages = freezed,
    Object? isSend = freezed,
  }) {
    return _then(NotificationsScreenState(
      feedbacks: feedbacks == freezed
          ? _value.feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<FeedbackResume>,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      isSend: isSend == freezed
          ? _value.isSend
          : isSend // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NotificationsScreenState implements NotificationsScreenState {
  const _$NotificationsScreenState(
      {required this.feedbacks, required this.messages, required this.isSend});

  @override
  final List<FeedbackResume> feedbacks;
  @override
  final List<Chat> messages;
  @override
  final int isSend;

  @override
  String toString() {
    return 'NotificationsState.notificationsState(feedbacks: $feedbacks, messages: $messages, isSend: $isSend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationsScreenState &&
            (identical(other.feedbacks, feedbacks) ||
                const DeepCollectionEquality()
                    .equals(other.feedbacks, feedbacks)) &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)) &&
            (identical(other.isSend, isSend) ||
                const DeepCollectionEquality().equals(other.isSend, isSend)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(feedbacks) ^
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(isSend);

  @JsonKey(ignore: true)
  @override
  $NotificationsScreenStateCopyWith<NotificationsScreenState> get copyWith =>
      _$NotificationsScreenStateCopyWithImpl<NotificationsScreenState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)
        notificationsState,
    required TResult Function() navigationState,
    required TResult Function() disconnectedInternet,
    required TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)
        messagesState,
  }) {
    return notificationsState(feedbacks, messages, isSend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)?
        notificationsState,
    TResult Function()? navigationState,
    TResult Function()? disconnectedInternet,
    TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)?
        messagesState,
    required TResult orElse(),
  }) {
    if (notificationsState != null) {
      return notificationsState(feedbacks, messages, isSend);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialNotificationsState value) initial,
    required TResult Function(NotificationsScreenState value)
        notificationsState,
    required TResult Function(NavigationNotificationsState value)
        navigationState,
    required TResult Function(DisconnectedInternetNotificationsState value)
        disconnectedInternet,
    required TResult Function(MessagesScreenState value) messagesState,
  }) {
    return notificationsState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialNotificationsState value)? initial,
    TResult Function(NotificationsScreenState value)? notificationsState,
    TResult Function(NavigationNotificationsState value)? navigationState,
    TResult Function(DisconnectedInternetNotificationsState value)?
        disconnectedInternet,
    TResult Function(MessagesScreenState value)? messagesState,
    required TResult orElse(),
  }) {
    if (notificationsState != null) {
      return notificationsState(this);
    }
    return orElse();
  }
}

abstract class NotificationsScreenState implements NotificationsState {
  const factory NotificationsScreenState(
      {required List<FeedbackResume> feedbacks,
      required List<Chat> messages,
      required int isSend}) = _$NotificationsScreenState;

  List<FeedbackResume> get feedbacks => throw _privateConstructorUsedError;
  List<Chat> get messages => throw _privateConstructorUsedError;
  int get isSend => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationsScreenStateCopyWith<NotificationsScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationNotificationsStateCopyWith<$Res> {
  factory $NavigationNotificationsStateCopyWith(
          NavigationNotificationsState value,
          $Res Function(NavigationNotificationsState) then) =
      _$NavigationNotificationsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigationNotificationsStateCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res>
    implements $NavigationNotificationsStateCopyWith<$Res> {
  _$NavigationNotificationsStateCopyWithImpl(
      NavigationNotificationsState _value,
      $Res Function(NavigationNotificationsState) _then)
      : super(_value, (v) => _then(v as NavigationNotificationsState));

  @override
  NavigationNotificationsState get _value =>
      super._value as NavigationNotificationsState;
}

/// @nodoc

class _$NavigationNotificationsState implements NavigationNotificationsState {
  const _$NavigationNotificationsState();

  @override
  String toString() {
    return 'NotificationsState.navigationState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NavigationNotificationsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)
        notificationsState,
    required TResult Function() navigationState,
    required TResult Function() disconnectedInternet,
    required TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)
        messagesState,
  }) {
    return navigationState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)?
        notificationsState,
    TResult Function()? navigationState,
    TResult Function()? disconnectedInternet,
    TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)?
        messagesState,
    required TResult orElse(),
  }) {
    if (navigationState != null) {
      return navigationState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialNotificationsState value) initial,
    required TResult Function(NotificationsScreenState value)
        notificationsState,
    required TResult Function(NavigationNotificationsState value)
        navigationState,
    required TResult Function(DisconnectedInternetNotificationsState value)
        disconnectedInternet,
    required TResult Function(MessagesScreenState value) messagesState,
  }) {
    return navigationState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialNotificationsState value)? initial,
    TResult Function(NotificationsScreenState value)? notificationsState,
    TResult Function(NavigationNotificationsState value)? navigationState,
    TResult Function(DisconnectedInternetNotificationsState value)?
        disconnectedInternet,
    TResult Function(MessagesScreenState value)? messagesState,
    required TResult orElse(),
  }) {
    if (navigationState != null) {
      return navigationState(this);
    }
    return orElse();
  }
}

abstract class NavigationNotificationsState implements NotificationsState {
  const factory NavigationNotificationsState() = _$NavigationNotificationsState;
}

/// @nodoc
abstract class $DisconnectedInternetNotificationsStateCopyWith<$Res> {
  factory $DisconnectedInternetNotificationsStateCopyWith(
          DisconnectedInternetNotificationsState value,
          $Res Function(DisconnectedInternetNotificationsState) then) =
      _$DisconnectedInternetNotificationsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DisconnectedInternetNotificationsStateCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res>
    implements $DisconnectedInternetNotificationsStateCopyWith<$Res> {
  _$DisconnectedInternetNotificationsStateCopyWithImpl(
      DisconnectedInternetNotificationsState _value,
      $Res Function(DisconnectedInternetNotificationsState) _then)
      : super(
            _value, (v) => _then(v as DisconnectedInternetNotificationsState));

  @override
  DisconnectedInternetNotificationsState get _value =>
      super._value as DisconnectedInternetNotificationsState;
}

/// @nodoc

class _$DisconnectedInternetNotificationsState
    implements DisconnectedInternetNotificationsState {
  const _$DisconnectedInternetNotificationsState();

  @override
  String toString() {
    return 'NotificationsState.disconnectedInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DisconnectedInternetNotificationsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)
        notificationsState,
    required TResult Function() navigationState,
    required TResult Function() disconnectedInternet,
    required TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)
        messagesState,
  }) {
    return disconnectedInternet();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)?
        notificationsState,
    TResult Function()? navigationState,
    TResult Function()? disconnectedInternet,
    TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)?
        messagesState,
    required TResult orElse(),
  }) {
    if (disconnectedInternet != null) {
      return disconnectedInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialNotificationsState value) initial,
    required TResult Function(NotificationsScreenState value)
        notificationsState,
    required TResult Function(NavigationNotificationsState value)
        navigationState,
    required TResult Function(DisconnectedInternetNotificationsState value)
        disconnectedInternet,
    required TResult Function(MessagesScreenState value) messagesState,
  }) {
    return disconnectedInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialNotificationsState value)? initial,
    TResult Function(NotificationsScreenState value)? notificationsState,
    TResult Function(NavigationNotificationsState value)? navigationState,
    TResult Function(DisconnectedInternetNotificationsState value)?
        disconnectedInternet,
    TResult Function(MessagesScreenState value)? messagesState,
    required TResult orElse(),
  }) {
    if (disconnectedInternet != null) {
      return disconnectedInternet(this);
    }
    return orElse();
  }
}

abstract class DisconnectedInternetNotificationsState
    implements NotificationsState {
  const factory DisconnectedInternetNotificationsState() =
      _$DisconnectedInternetNotificationsState;
}

/// @nodoc
abstract class $MessagesScreenStateCopyWith<$Res> {
  factory $MessagesScreenStateCopyWith(
          MessagesScreenState value, $Res Function(MessagesScreenState) then) =
      _$MessagesScreenStateCopyWithImpl<$Res>;
  $Res call({List<FeedbackResume> feedbacks, List<Chat> messages, int isSend});
}

/// @nodoc
class _$MessagesScreenStateCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res>
    implements $MessagesScreenStateCopyWith<$Res> {
  _$MessagesScreenStateCopyWithImpl(
      MessagesScreenState _value, $Res Function(MessagesScreenState) _then)
      : super(_value, (v) => _then(v as MessagesScreenState));

  @override
  MessagesScreenState get _value => super._value as MessagesScreenState;

  @override
  $Res call({
    Object? feedbacks = freezed,
    Object? messages = freezed,
    Object? isSend = freezed,
  }) {
    return _then(MessagesScreenState(
      feedbacks: feedbacks == freezed
          ? _value.feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<FeedbackResume>,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      isSend: isSend == freezed
          ? _value.isSend
          : isSend // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MessagesScreenState implements MessagesScreenState {
  const _$MessagesScreenState(
      {required this.feedbacks, required this.messages, required this.isSend});

  @override
  final List<FeedbackResume> feedbacks;
  @override
  final List<Chat> messages;
  @override
  final int isSend;

  @override
  String toString() {
    return 'NotificationsState.messagesState(feedbacks: $feedbacks, messages: $messages, isSend: $isSend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MessagesScreenState &&
            (identical(other.feedbacks, feedbacks) ||
                const DeepCollectionEquality()
                    .equals(other.feedbacks, feedbacks)) &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)) &&
            (identical(other.isSend, isSend) ||
                const DeepCollectionEquality().equals(other.isSend, isSend)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(feedbacks) ^
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(isSend);

  @JsonKey(ignore: true)
  @override
  $MessagesScreenStateCopyWith<MessagesScreenState> get copyWith =>
      _$MessagesScreenStateCopyWithImpl<MessagesScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)
        notificationsState,
    required TResult Function() navigationState,
    required TResult Function() disconnectedInternet,
    required TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)
        messagesState,
  }) {
    return messagesState(feedbacks, messages, isSend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)?
        notificationsState,
    TResult Function()? navigationState,
    TResult Function()? disconnectedInternet,
    TResult Function(
            List<FeedbackResume> feedbacks, List<Chat> messages, int isSend)?
        messagesState,
    required TResult orElse(),
  }) {
    if (messagesState != null) {
      return messagesState(feedbacks, messages, isSend);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialNotificationsState value) initial,
    required TResult Function(NotificationsScreenState value)
        notificationsState,
    required TResult Function(NavigationNotificationsState value)
        navigationState,
    required TResult Function(DisconnectedInternetNotificationsState value)
        disconnectedInternet,
    required TResult Function(MessagesScreenState value) messagesState,
  }) {
    return messagesState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialNotificationsState value)? initial,
    TResult Function(NotificationsScreenState value)? notificationsState,
    TResult Function(NavigationNotificationsState value)? navigationState,
    TResult Function(DisconnectedInternetNotificationsState value)?
        disconnectedInternet,
    TResult Function(MessagesScreenState value)? messagesState,
    required TResult orElse(),
  }) {
    if (messagesState != null) {
      return messagesState(this);
    }
    return orElse();
  }
}

abstract class MessagesScreenState implements NotificationsState {
  const factory MessagesScreenState(
      {required List<FeedbackResume> feedbacks,
      required List<Chat> messages,
      required int isSend}) = _$MessagesScreenState;

  List<FeedbackResume> get feedbacks => throw _privateConstructorUsedError;
  List<Chat> get messages => throw _privateConstructorUsedError;
  int get isSend => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagesScreenStateCopyWith<MessagesScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
