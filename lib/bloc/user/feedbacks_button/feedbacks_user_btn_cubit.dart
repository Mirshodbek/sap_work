import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedbacks_user_btn_cubit.freezed.dart';

class FeedbacksUserBtnCubit extends Cubit<FeedbacksUserBtnState> {
  FeedbacksUserBtnCubit() : super(const FeedbacksUserBtnState.empty());

  void chat(
      {required String avatarUser,
      required String avatarCompany,
      required String name,
      required int companyId}) {
    emit(const FeedbacksUserBtnState.empty());
    emit(FeedbacksUserBtnState.chat(
        avatarUser: avatarUser,
        avatarCompany: avatarCompany,
        name: name,
        companyId: companyId));
  }

  void selectResume() {
    emit(const FeedbacksUserBtnState.empty());
    emit(const FeedbacksUserBtnState.selectResume());
  }

  void vacancy(int id) {
    emit(const FeedbacksUserBtnState.empty());
    emit(FeedbacksUserBtnState.vacancy(id: id));
  }

  void totalDisplay(String status) {
    emit(const FeedbacksUserBtnState.empty());
    emit( FeedbacksUserBtnState.totalDisplay(status: status));
  }
}

@freezed
abstract class FeedbacksUserBtnState with _$FeedbacksUserBtnState {
  const factory FeedbacksUserBtnState.empty() = EmptyFeedbacksUserBtnState;

  const factory FeedbacksUserBtnState.totalDisplay({required final String status}) =
      TotalDisplayFeedbacksUserBtnState;

  const factory FeedbacksUserBtnState.chat(
      {required final String avatarUser,
      required final String avatarCompany,
      required final String name,
      required final int companyId}) = ChatFeedbacksUserBtnState;

  const factory FeedbacksUserBtnState.selectResume() =
      SelectResumeFeedbacksUserBtnState;

  const factory FeedbacksUserBtnState.vacancy({required final int id}) =
      VacancyFeedbacksUserBtnState;
}
