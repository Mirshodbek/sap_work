import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_company_btn_cubit.freezed.dart';

class ProfileCompanyBtnCubit extends Cubit<ProfileCompanyBtnState> {
  ProfileCompanyBtnCubit()
      : super(const ProfileCompanyBtnState.onClick(
            link: false,
            isSelectVacancies: false,
            isEditNames: false,
            isEditCategory: false,
            isEditSphere: false,
            isEditCity: false,
            isEditBody: false,
            isEditGrade: false,
            isEditMinAndMaxSalary: false,
            isEditSchedule: false,
            isEditStage: false,
            isEditType: false,
            isEditAbilities: false,
            isExtraName: false));

  void link() => emit(state.copyWith(link: !state.link));

  void selectVacancies() =>
      emit(state.copyWith(isSelectVacancies: !state.isSelectVacancies));

  void editNames() => emit(state.copyWith(isEditNames: !state.isEditNames));

  void editCategory() =>
      emit(state.copyWith(isEditCategory: !state.isEditCategory));

  void editSpheres() => emit(state.copyWith(isEditSphere: !state.isEditSphere));

  void editCity() => emit(state.copyWith(isEditCity: !state.isEditCity));

  void editBody() => emit(state.copyWith(isEditBody: !state.isEditBody));

  void editGrade() => emit(state.copyWith(isEditGrade: !state.isEditGrade));

  void editMinAndMaxSalary() =>
      emit(state.copyWith(isEditMinAndMaxSalary: !state.isEditMinAndMaxSalary));

  void editSchedule() =>
      emit(state.copyWith(isEditSchedule: !state.isEditSchedule));

  void editStage() => emit(state.copyWith(isEditStage: !state.isEditStage));

  void editType() => emit(state.copyWith(isEditType: !state.isEditType));

  void editAbilities() =>
      emit(state.copyWith(isEditAbilities: !state.isEditAbilities));

  void extraName() => emit(state.copyWith(isExtraName: !state.isExtraName));
}

@freezed
abstract class ProfileCompanyBtnState with _$ProfileCompanyBtnState {
  const factory ProfileCompanyBtnState.onClick(
      {required final bool isSelectVacancies,
      required final bool isEditNames,
      required final bool isEditCategory,
      required final bool isEditSphere,
      required final bool isEditCity,
      required final bool isEditBody,
      required final bool isEditGrade,
      required final bool isEditMinAndMaxSalary,
      required final bool isEditSchedule,
      required final bool isEditStage,
      required final bool isEditType,
      required final bool isEditAbilities,
      required final bool isExtraName,
      required final bool link}) = OnClickProfileCompanyBtnState;
}
