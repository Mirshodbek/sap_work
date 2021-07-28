import 'dart:async';

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
      yield const FeedbacksVacancyState.noVacancy();
    }, (vacancy) async* {
      final getFeedbacks = await getFeedbacksVacancy(vacancy.id);
      yield* getFeedbacks.fold((failure) async* {
        if (vacancy.id == 0) {
          yield const FeedbacksVacancyState.noVacancy();
        } else {
          yield FeedbacksVacancyState.error(
              message: _mapFailureToMessage(failure));
        }
      }, (feedbacks) async* {
        feedbacks.sort((a, b) => DateTime.parse(b.updated_at)
            .compareTo(DateTime.parse(a.updated_at)));
        yield FeedbacksVacancyState.loaded(
            vacancyId: vacancy.id, feedbacks: feedbacks, status: EMPTY_BLOC);
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
        yield* _status(FEEDBACKS_VACANCY_BLOC_POST_INVITE_PROGRESS);
        final result = await remoteData.postInviteFeedback(ParamsFeedback(
            event.date,
            event.contactType,
            event.contact,
            event.answer,
            event.resume,
            event.vacancy));
        yield* _status(FEEDBACKS_VACANCY_BLOC_POST_INVITE_SUCCEED);
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(feedbacks: result));
      } catch (_) {
        yield* _status(FEEDBACKS_VACANCY_BLOC_POST_INVITE_FAILURE);
      }
    } else {
      yield* _status(FEEDBACKS_VACANCY_BLOC_POST_INVITE_REQUIRED);
    }
  }

  Stream<FeedbacksVacancyState> _status(String status) async* {
    yield state.maybeMap(
        orElse: () => state,
        loaded: (_state) => _state.copyWith(status: EMPTY_BLOC));
    yield state.maybeMap(
        orElse: () => state,
        loaded: (_state) => _state.copyWith(status: status));
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

  const factory FeedbacksVacancyEvent.postInvite(
      {required final String date,
      required final String contact,
      required final String contactType,
      required final String answer,
      required final int resume,
      required final int vacancy}) = _PostInviteFeedbacksVacancyEvent;
}

@freezed
abstract class FeedbacksVacancyState with _$FeedbacksVacancyState {
  const factory FeedbacksVacancyState.empty() = EmptyFeedbacksVacancyState;

  const factory FeedbacksVacancyState.loading() = LoadingFeedbacksVacancyState;

  const factory FeedbacksVacancyState.noFeedbacks() = NoFeedbacksVacancyState;

  const factory FeedbacksVacancyState.noVacancy() = NoVacancyState;

  const factory FeedbacksVacancyState.loaded(
      {required final List<dynamic> feedbacks,
      required final int vacancyId,
      required final String status}) = LoadedFeedbacksVacancyState;

  const factory FeedbacksVacancyState.error({required final String message}) =
      ErrorFeedbacksVacancyState;
}
