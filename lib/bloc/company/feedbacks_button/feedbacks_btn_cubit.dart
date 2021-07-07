import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/resources/lists.dart';

part 'feedbacks_btn_cubit.freezed.dart';

class FeedbacksBtnCubit extends Cubit<FeedbacksBtnState> {
  int sum = 1;
  int total = 1000;
  String title = Lists.tariffs.first.title;

  FeedbacksBtnCubit() : super(const FeedbacksBtnState.empty());

  void chat(
      {required String avatarUser,
      required String avatarCompany,
      required String name,
      required int userId}) {
    emit(const FeedbacksBtnState.empty());
    emit(FeedbacksBtnState.chat(
        avatarUser: avatarUser,
        avatarCompany: avatarCompany,
        name: name,
        userId: userId));
  }

  void resumeInvite(FeedbackVacancy resume, bool isInvite) {
    emit(const FeedbacksBtnState.empty());
    emit(FeedbacksBtnState.resumeInvite(resume: resume, isInvite: isInvite));
  }

  void payment() {
    emit(const FeedbacksBtnState.payment());
    emit(FeedbacksBtnState.sum(
        sum: 1, total: 1000, title: Lists.tariffs.first.title));
  }

  void minus() {
    if (sum > 1) {
      total = Utils.totally(title);
      emit(state.maybeMap(
          orElse: () => state,
          sum: (_state) =>
              _state.copyWith(sum: sum = sum - 1, total: total * sum)));
    }
  }

  void onTap(String title) {
    this.title = title;
    total = Utils.totally(title);
    emit(state.maybeMap(
        orElse: () => state,
        sum: (_state) => _state.copyWith(title: title, total: total * sum)));
  }

  void plus() {
    total = Utils.totally(title);
    emit(state.maybeMap(
        orElse: () => state,
        sum: (_state) =>
            _state.copyWith(sum: sum = sum + 1, total: total * sum)));
  }
}

@freezed
abstract class FeedbacksBtnState with _$FeedbacksBtnState {
  const factory FeedbacksBtnState.empty() = EmptyFeedbacksBtnState;

  const factory FeedbacksBtnState.payment() = PaymentFeedbacksBtnState;

  const factory FeedbacksBtnState.chat(
      {required final String avatarUser,
      required final String avatarCompany,
      required final String name,
      required final int userId}) = ChatFeedbacksBtnState;

  const factory FeedbacksBtnState.resumeInvite(
      {required FeedbackVacancy resume,
      required final bool isInvite}) = ResumeInviteFeedbacksBtnState;

  const factory FeedbacksBtnState.sum(
      {required final String title,
      required final int sum,
      required final int total}) = SumFeedbacksBtnState;
}
