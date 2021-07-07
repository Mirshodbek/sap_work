import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/models/feedback_resume/feedback.dart';
part 'feedbacks_resume_bloc.freezed.dart';
class FeedbacksResumeBloc
    extends Bloc<FeedbacksResumeEvent, FeedbacksResumeState> {
  FeedbacksResumeBloc() : super(const FeedbacksResumeState.empty());

  @override
  Stream<FeedbacksResumeState> mapEventToState(
      FeedbacksResumeEvent event) async* {
    // TODO: implement mapEventToState
  }
}

@freezed
abstract class FeedbacksResumeEvent with _$FeedbacksResumeEvent {
  const factory FeedbacksResumeEvent.getFeedbacks()=_GetFeedbacksResumeEvent;
}

@freezed
abstract class FeedbacksResumeState with _$FeedbacksResumeState {
  const factory FeedbacksResumeState.empty() = EmptyFeedbacksResumeState;

  const factory FeedbacksResumeState.loading() = LoadingFeedbacksResumeState;

  const factory FeedbacksResumeState.noFeedbacks() = NoFeedbacksResumeState;

  const factory FeedbacksResumeState.loaded(
      {required final List<FeedbackResume> feedbacks,
        required final String resumeName,
        required final FormzStatus status}) = LoadedFeedbacksResumeState;

  const factory FeedbacksResumeState.error({required final String message}) =
  ErrorFeedbacksResumeState;
}
