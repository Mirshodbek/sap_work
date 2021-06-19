import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/models/feedback/feedback.dart';
import 'package:sap_work/repository/hunter_repository.dart';

part 'notifications_bloc.freezed.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  final HunterRepositoryBase _repository;

  NotificationsBloc(this._repository)
      : super(const NotificationsState.initial());

  @override
  Stream<NotificationsState> mapEventToState(
    NotificationsEvent event,
  ) async* {
    yield* event.map(
      initial: _initialEvent,
    );
  }

  Stream<NotificationsState> _initialEvent(
      _InitialNotificationsEvent event) async* {
    try {
      final result = await _repository.getFeedbacks();
      yield NotificationsState.notificationsState(feedbacks: result);
    } catch (_) {}
  }
}

@freezed
abstract class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.initial() = _InitialNotificationsEvent;
}

@freezed
abstract class NotificationsState with _$NotificationsState {
  const factory NotificationsState.initial() = InitialNotificationsState;

  const factory NotificationsState.notificationsState({
    required final List<FeedbackResume> feedbacks,
  }) = NotificationsScreenState;
}
