import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/models/resume/resume.dart';
import 'package:sap_work/resources/lists.dart';

part 'feedbacks_company_btn_cubit.freezed.dart';

class FeedbacksCompanyBtnCubit extends Cubit<FeedbacksCompanyBtnState> {
  FeedbacksCompanyBtnCubit() : super(const FeedbacksCompanyBtnState.empty());

  void chat(
      {required String avatarUser,
      required String avatarCompany,
      required String name,
      required int userId}) {
    emit(const FeedbacksCompanyBtnState.empty());
    emit(FeedbacksCompanyBtnState.chat(
        avatarUser: avatarUser,
        avatarCompany: avatarCompany,
        name: name,
        userId: userId));
  }

  void invite(Resume resume) {
    emit(const FeedbacksCompanyBtnState.empty());
    emit(FeedbacksCompanyBtnState.invite(resume: resume));
  }

  void resume(Resume resume) {
    emit(const FeedbacksCompanyBtnState.empty());
    emit(FeedbacksCompanyBtnState.resume(resume: resume));
  }

  void selectVacancy() {
    emit(const FeedbacksCompanyBtnState.empty());
    emit(const FeedbacksCompanyBtnState.selectVacancy());
  }

  void payment() {
    emit(const FeedbacksCompanyBtnState.empty());
    emit(const FeedbacksCompanyBtnState.payment());
  }
}

@freezed
abstract class FeedbacksCompanyBtnState with _$FeedbacksCompanyBtnState {
  const factory FeedbacksCompanyBtnState.empty() =
      EmptyFeedbacksCompanyBtnState;

  const factory FeedbacksCompanyBtnState.selectVacancy() =
      SelectVacancyFeedbacksCompanyBtnState;

  const factory FeedbacksCompanyBtnState.payment() =
      PaymentVacancyFeedbacksCompanyBtnState;

  const factory FeedbacksCompanyBtnState.chat(
      {required final String avatarUser,
      required final String avatarCompany,
      required final String name,
      required final int userId}) = ChatFeedbacksCompanyBtnState;

  const factory FeedbacksCompanyBtnState.invite({
    required final Resume resume,
  }) = InviteFeedbacksCompanyBtnState;

  const factory FeedbacksCompanyBtnState.resume({
    required final Resume resume,
  }) = ResumeFeedbacksCompanyBtnState;
}
