import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/models/feedback_vacancy/feedback.dart';

import '../company.dart';

part 'feedbacks_vacancy_bloc.freezed.dart';

class FeedbacksVacancyBloc
    extends Bloc<FeedbacksVacancyEvent, FeedbacksVacancyState> {
  final GetLocalVacancyCompany getLocalVacancy;
  final GetFeedbacksVacancy getFeedbacksVacancy;

  FeedbacksVacancyBloc(this.getLocalVacancy, this.getFeedbacksVacancy)
      : super(const FeedbacksVacancyState.empty());

  @override
  Stream<FeedbacksVacancyState> mapEventToState(
      FeedbacksVacancyEvent event) async* {
    yield* event.map(getFeedbacks: _getFeedbacksEvent);
  }

  Stream<FeedbacksVacancyState> _getFeedbacksEvent(
      _GetFeedbacksVacancyEvent event) async* {
    yield const FeedbacksVacancyState.loading();
    final localVacancy = await getLocalVacancy(Params());
    yield* localVacancy.fold((failure) async* {}, (vacancy) async* {
      final getFeedbacks = await getFeedbacksVacancy(vacancy.id);
      yield* getFeedbacks.fold((failure) async* {
        yield FeedbacksVacancyState.error(
            message: _mapFailureToMessage(failure));
      }, (feedbacks) async* {
        yield FeedbacksVacancyState.loaded(
            feedbacks: feedbacks, vacancyName: vacancy.name);
      });
    });
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHE_FAILURE_MESSAGE;
      default:
        return 'Unexpected error';
    }
  }
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
      {required final List<FeedbackVacancy> feedbacks,
      required final String vacancyName}) = LoadedFeedbacksVacancyState;

  const factory FeedbacksVacancyState.error({required final String message}) =
      ErrorFeedbacksVacancyState;
}
