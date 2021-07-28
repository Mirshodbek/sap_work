import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/data_source/user/remote_data.dart';
import 'package:sap_work/models/chat/chat.dart';
import 'package:sap_work/models/feedback_resume/feedback.dart';
import 'package:sap_work/models/invite/invite.dart';
import 'package:sap_work/models/params_user/local_resumes/resumes.dart';
import 'package:sap_work/repository/exceptions_failures.dart';
import 'package:sap_work/repository/user/usercases/usercases.dart';

part 'feedbacks_resume_bloc.freezed.dart';

class FeedbacksResumeBloc
    extends Bloc<FeedbacksResumeEvent, FeedbacksResumeState> {
  final GetLocalResume getLocalResume;
  final GetInvitesVacanciesUser getInvites;
  final GetFeedbacksResume getFeedbacksResume;
  final GetAllChatsUser getAllChats;
  final UserRemoteDataBase remoteData;

  FeedbacksResumeBloc(this.getInvites, this.getLocalResume, this.getAllChats,
      this.getFeedbacksResume, this.remoteData)
      : super(const FeedbacksResumeState.empty());

  @override
  Stream<FeedbacksResumeState> mapEventToState(
      FeedbacksResumeEvent event) async* {
    yield* event.map(
        getFeedbacks: _getFeedbacksEvent, sendFeedbacks: _sendFeedbacksEvent);
  }

  Stream<FeedbacksResumeState> _getFeedbacksEvent(
      _GetFeedbacksResumeEvent event) async* {
    yield const FeedbacksResumeState.loading();
    final localVacancy = await getLocalResume(ParamsLocalResumes());
    yield* localVacancy.fold((failure) async* {
      yield FeedbacksResumeState.noFeedbacks(status: EMPTY_BLOC);
    }, (resume) async* {
      final getFeedbacks = await getFeedbacksResume(resume.id);
      yield* getFeedbacks.fold((failure) async* {
        yield FeedbacksResumeState.error(
            message: _mapFailureToMessage(failure));
      }, (feedbacks) async* {
        final chats = await getAllChats(NoParams());
        yield* chats.fold((failure) async* {
          feedbacks.sort((a, b) => DateTime.parse(b.updated_at)
              .compareTo(DateTime.parse(a.updated_at)));
         yield* _loadedStates(
              invite: [],
              chats: [],
              feedbacks: feedbacks,
              resumeName: resume.name);
        }, (chats) async* {
          final invite = await getInvites(NoParams());
          yield* invite.fold((failure) async* {
            feedbacks.sort((a, b) => DateTime.parse(b.updated_at)
                .compareTo(DateTime.parse(a.updated_at)));
          yield*  _loadedStates(
                invite: [],
                chats: chats,
                feedbacks: feedbacks,
                resumeName: resume.name);
          }, (invite) async* {
            feedbacks.sort((a, b) => DateTime.parse(b.updated_at)
                .compareTo(DateTime.parse(a.updated_at)));
            invite.sort((a, b) => DateTime.parse(b.updated_at)
                .compareTo(DateTime.parse(a.updated_at)));
           yield* _loadedStates(
                invite: invite,
                chats: chats,
                feedbacks: feedbacks,
                resumeName: resume.name);
          });
        });
      });
    });
  }

  Stream<FeedbacksResumeState> _loadedStates(
      {required final List<Invite> invite,
      required final List<AllChats> chats,
      required final List<FeedbackResume> feedbacks,
      required final String resumeName}) async* {
    yield FeedbacksResumeState.loaded(
        invites: invite,
        feedbacks: feedbacks,
        resumeName: resumeName,
        allChats: chats,
        status: EMPTY_BLOC);
  }

  Stream<FeedbacksResumeState> _sendFeedbacksEvent(
      _SendFeedbacksResumeEvent event) async* {
    try {
      if (event.accept) {
        final result =
            await remoteData.acceptInvites(event.vacancyId, event.resumeId);
        yield* _status(FEEDBACKS_RESUME_BLOC_ACCEPT_FEEDBACKS_SUCCEED);
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(invites: result));
      } else {
        yield* _status(FEEDBACKS_RESUME_BLOC_SEND_FEEDBACKS_PROGRESS);
        final result = await remoteData.sendFeedbacksResumeUser(
            event.vacancyId, event.resumeId);
        yield* _status(FEEDBACKS_RESUME_BLOC_SEND_FEEDBACKS_SUCCEED);
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(feedbacks: result));
      }
    } catch (_) {
      yield* _status(FEEDBACKS_RESUME_BLOC_SEND_FEEDBACKS_FAILURE);
    }
  }

  Stream<FeedbacksResumeState> _status(String status) async* {
    yield state.maybeMap(
        orElse: () => state,
        loaded: (_state) => _state.copyWith(status: EMPTY_BLOC),
        noFeedbacks: (_state) => _state.copyWith(status: EMPTY_BLOC));
    yield state.maybeMap(
        orElse: () => state,
        loaded: (_state) => _state.copyWith(status: status),
        noFeedbacks: (_state) => _state.copyWith(status: status));
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
abstract class FeedbacksResumeEvent with _$FeedbacksResumeEvent {
  const factory FeedbacksResumeEvent.getFeedbacks() = _GetFeedbacksResumeEvent;

  const factory FeedbacksResumeEvent.sendFeedbacks(
      {required final int resumeId,
      required final bool accept,
      required final int vacancyId}) = _SendFeedbacksResumeEvent;
}

@freezed
abstract class FeedbacksResumeState with _$FeedbacksResumeState {
  const factory FeedbacksResumeState.empty() = EmptyFeedbacksResumeState;

  const factory FeedbacksResumeState.loading() = LoadingFeedbacksResumeState;

  const factory FeedbacksResumeState.noFeedbacks(
      {required final String status}) = NoFeedbacksResumeState;

  const factory FeedbacksResumeState.loaded(
      {required final List<FeedbackResume> feedbacks,
      required final List<Invite> invites,
      required final List<AllChats> allChats,
      required final String resumeName,
      required final String status}) = LoadedFeedbacksResumeState;

  const factory FeedbacksResumeState.error({required final String message}) =
      ErrorFeedbacksResumeState;
}
