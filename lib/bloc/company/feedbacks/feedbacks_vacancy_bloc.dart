import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/models/params_company/feedback/feedback.dart';

import '../company.dart';

part 'feedbacks_vacancy_bloc.freezed.dart';

class FeedbacksVacancyBloc
    extends Bloc<FeedbacksVacancyEvent, FeedbacksVacancyState> {
  final GetLocalVacancyCompany getLocalVacancy;
  final GetFeedbacksVacancy getFeedbacksVacancy;
  final CompanyRemoteDataBase remoteData;

  FeedbacksVacancyBloc(
      this.getLocalVacancy, this.getFeedbacksVacancy, this.remoteData)
      : super(const FeedbacksVacancyState.empty());

  @override
  Stream<FeedbacksVacancyState> mapEventToState(
      FeedbacksVacancyEvent event) async* {
    yield* event.map(
        getFeedbacks: _getFeedbacksEvent, postInvite: _postInviteEvent);
  }

  Stream<FeedbacksVacancyState> _getFeedbacksEvent(
      _GetFeedbacksVacancyEvent event) async* {
    yield const FeedbacksVacancyState.loading();
    final localVacancy = await getLocalVacancy(ParamsLocalVacancy());
    yield* localVacancy.fold((failure) async* {
      yield const NoFeedbacksVacancyState();
    }, (vacancy) async* {
      final getFeedbacks = await getFeedbacksVacancy(vacancy.id);
      yield* getFeedbacks.fold((failure) async* {
        yield FeedbacksVacancyState.error(
            message: _mapFailureToMessage(failure));
      }, (feedbacks) async* {
        feedbacks.sort((a, b) => DateTime.parse(b.updated_at)
            .compareTo(DateTime.parse(a.updated_at)));
        yield FeedbacksVacancyState.loaded(
            feedbacks: feedbacks,
            vacancyName: vacancy.name,
            status: FormzStatus.pure);
      });
    });
  }

  Stream<FeedbacksVacancyState> _postInviteEvent(
      _PostInviteFeedbacksVacancyEvent event) async* {
    final isValidated = Formz.validate([
      Texts.dirty(event.date),
      Texts.dirty(event.contactType),
      Texts.dirty(event.contact),
      Texts.dirty(event.answer),
    ]);
    if (isValidated.isValidated) {
      try {
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) =>
                _state.copyWith(status: FormzStatus.submissionInProgress));
        final result = await remoteData.postInviteFeedback(ParamsFeedback(
            event.date,
            event.contactType,
            event.contact,
            event.answer,
            event.resume,
            event.vacancy));
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(
                status: FormzStatus.submissionSuccess, feedbacks: result));
      } catch (_) {
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) =>
                _state.copyWith(status: FormzStatus.submissionFailure));
      }
    } else {
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(status: FormzStatus.pure));
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(status: isValidated));
    }
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

  const factory FeedbacksVacancyEvent.postInvite({
    required final String date,
    required final String contact,
    required final String contactType,
    required final String answer,
    required final int resume,
    required final int vacancy,
  }) = _PostInviteFeedbacksVacancyEvent;
}

@freezed
abstract class FeedbacksVacancyState with _$FeedbacksVacancyState {
  const factory FeedbacksVacancyState.empty() = EmptyFeedbacksVacancyState;

  const factory FeedbacksVacancyState.loading() = LoadingFeedbacksVacancyState;

  const factory FeedbacksVacancyState.noFeedbacks() = NoFeedbacksVacancyState;

  const factory FeedbacksVacancyState.loaded(
      {required final List<FeedbackVacancy> feedbacks,
      required final String vacancyName,
      required final FormzStatus status}) = LoadedFeedbacksVacancyState;

  const factory FeedbacksVacancyState.error({required final String message}) =
      ErrorFeedbacksVacancyState;
}
