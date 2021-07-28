import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/models/resume/resume.dart';

part 'resume_company_btn_cubit.freezed.dart';

class ResumeCompanyBtnCubit extends Cubit<ResumeCompanyBtnState> {
  ResumeCompanyBtnCubit() : super(const ResumeCompanyBtnState.empty());

  void payment() {
    emit(const ResumeCompanyBtnState.empty());
    emit(const ResumeCompanyBtnState.payment());
  }

  void invite(Resume resume) {
      emit(const ResumeCompanyBtnState.empty());
      emit(ResumeCompanyBtnState.invite(resume: resume));

  }
}

@freezed
abstract class ResumeCompanyBtnState with _$ResumeCompanyBtnState {
  const factory ResumeCompanyBtnState.empty() = EmptyResumeCompanyBtnState;

  const factory ResumeCompanyBtnState.payment() = PaymentResumeCompanyBtnState;


  const factory ResumeCompanyBtnState.invite({
    required final Resume resume,
  }) = InviteResumeCompanyBtnState;
}
