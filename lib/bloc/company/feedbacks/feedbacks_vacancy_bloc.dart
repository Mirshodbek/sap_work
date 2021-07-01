import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'feedbacks.dart';

part 'feedbacks_vacancy_bloc.freezed.dart';

class FeedbacksVacancyBloc
    extends Bloc<FeedbacksVacancyEvent, FeedbacksVacancyState> {
  FeedbacksVacancyBloc() : super(const FeedbacksVacancyState.empty());

  @override
  Stream<FeedbacksVacancyState> mapEventToState(
      FeedbacksVacancyEvent event) async* {
    yield* event.map(getFeedbacks: _getFeedbacksEvent);
  }

  Stream<FeedbacksVacancyState> _getFeedbacksEvent(
      _GetFeedbacksVacancyEvent event) async* {}
}

@freezed
abstract class FeedbacksVacancyEvent with _$FeedbacksVacancyEvent {
  const factory FeedbacksVacancyEvent.getFeedbacks() =
      _GetFeedbacksVacancyEvent;
}

@freezed
abstract class FeedbacksVacancyState with _$FeedbacksVacancyState {
  const factory FeedbacksVacancyState.empty() = EmptyFeedbacksVacancyState;

  const factory FeedbacksVacancyState.loading() = LoadingFeedbacksVacancyState;

  const factory FeedbacksVacancyState.loaded(
      {required final FeedbackVacancy feedbacks}) = LoadedFeedbacksVacancyState;

  const factory FeedbacksVacancyState.error({required final String message}) =
      ErrorFeedbacksVacancyState;
}
