import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/screens/hunter/hunter.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'notifications_bloc.freezed.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  int id = 0;
  late SharedPreferences _prefs;
  List<FeedbackResume> _feedbacks = [];
  final HunterRepositoryBase _repository;

  NotificationsBloc(this._repository)
      : super(const NotificationsState.initial());


  @override
  Stream<NotificationsState> mapEventToState(
    NotificationsEvent event,
  ) async* {
    yield* event.map(
      initial: _initialEvent,
      refresh: _refreshEvent,
      message: _messageEvent,
      sendMessage: _sendMessage,
      disconnectedInternet: _disconnectedInternetEvent,
    );
  }

  Stream<NotificationsState> _refreshEvent(
      _RefreshNotificationsEvent event) async* {
    try {
      _prefs = await SharedPreferences.getInstance();
      _feedbacks = await _repository.getFeedbacks(id);
      yield* _repository.getMessages(id).map((event) {
        return NotificationsState.notificationsState(
          feedbacks: _feedbacks,
          messages: event,
          isSend: 0,
        );
      });
    } catch (_) {}
  }

  Stream<NotificationsState> _initialEvent(
      _InitialNotificationsEvent event) async* {
    _prefs = await SharedPreferences.getInstance();
  }

  Stream<NotificationsState> _messageEvent(
      _MessageNotificationsEvent event) async* {
    id = event.id;
    yield const NotificationsState.navigationState();
    try {
      yield* _repository.getMessages(event.id).map((event) {
        return NotificationsState.messagesState(
          feedbacks: _feedbacks,
          messages: event,
          isSend: 0,
        );
      });
    } catch (_) {}
  }

  Stream<NotificationsState> _sendMessage(
      _SendMessageNotificationsEvent event) async* {
    try {
      yield state.maybeMap(
        orElse: () => state,
        messagesState: (_state) => _state.copyWith(isSend: 1),
      );
      await _repository.postMessage(id, event.text);
      yield* _repository.getMessages(id).map((event) {
        return NotificationsState.messagesState(
          feedbacks: _feedbacks,
          messages: event,
          isSend: 2,
        );
      });
    } catch (_) {
      add(const NotificationsEvent.disconnectedInternet());
    }
  }

  Stream<NotificationsState> _disconnectedInternetEvent(
      _DisconnectedInternetNotificationsEvent event) async* {
    yield const NotificationsState.disconnectedInternet();
    yield state.maybeMap(orElse: () => state);
  }

  @override
  Future<void> close() {
    return super.close();
  }
}

@freezed
abstract class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.initial() = _InitialNotificationsEvent;

  const factory NotificationsEvent.refresh() = _RefreshNotificationsEvent;

  const factory NotificationsEvent.disconnectedInternet() =
      _DisconnectedInternetNotificationsEvent;

  const factory NotificationsEvent.message({
    required final int id,
  }) = _MessageNotificationsEvent;

  const factory NotificationsEvent.sendMessage({
    required final String text,
  }) = _SendMessageNotificationsEvent;
}

@freezed
abstract class NotificationsState with _$NotificationsState {
  const factory NotificationsState.initial() = InitialNotificationsState;

  const factory NotificationsState.notificationsState({
    required final List<FeedbackResume> feedbacks,
    required final List<Chat> messages,
    required final int isSend,
  }) = NotificationsScreenState;

  const factory NotificationsState.navigationState() =
      NavigationNotificationsState;

  const factory NotificationsState.disconnectedInternet() =
      DisconnectedInternetNotificationsState;

  const factory NotificationsState.messagesState({
    required final List<FeedbackResume> feedbacks,
    required final List<Chat> messages,
    required final int isSend,
  }) = MessagesScreenState;
}
