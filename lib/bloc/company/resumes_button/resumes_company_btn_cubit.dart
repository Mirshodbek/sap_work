import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/models/resume/resume.dart';

part 'resumes_company_btn_cubit.freezed.dart';

class ResumesCompanyBtnCubit extends Cubit<ResumesCompanyBtnState> {
  ResumesCompanyBtnCubit() : super(const ResumesCompanyBtnState.empty());

  void filter() {
    emit(const ResumesCompanyBtnState.empty());
    emit(const ResumesCompanyBtnState.filter());
  }

  void searchCountry() {
    emit(const ResumesCompanyBtnState.empty());
    emit(const ResumesCompanyBtnState.searchCountry());
  }


  void resume(Resume resume) {
    emit(const ResumesCompanyBtnState.empty());
    emit(ResumesCompanyBtnState.resume(resume: resume));
  }
}

@freezed
abstract class ResumesCompanyBtnState with _$ResumesCompanyBtnState {
  const factory ResumesCompanyBtnState.empty() = EmptyResumesCompanyBtnState;

  const factory ResumesCompanyBtnState.filter() = FilterResumesCompanyBtnState;

  const factory ResumesCompanyBtnState.searchCountry() =
      SearchcountryResumesCompanyBtnState;

  const factory ResumesCompanyBtnState.resume(
      {required Resume resume}) = ResumeResumesCompanyBtnState;
}
