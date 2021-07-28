import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_user_btn_cubit.freezed.dart';

class ProfileUserBtnCubit extends Cubit<ProfileUserBtnState> {
  ProfileUserBtnCubit()
      : super(const ProfileUserBtnState.onClick(
          link: false,
          selectResumes: false,
          isEditNames: false,
          isExtraName: false,
          isEditBody: false,
          isEditCategory: false,
          isEditSphere: false,
          isEditAbilities: false,
          isEditCity: false,
          isEditContacts: false,
        ));

  void link() => emit(state.copyWith(link: !state.link));

  void selectResumes() =>
      emit(state.copyWith(selectResumes: !state.selectResumes));

  void editNames() => emit(state.copyWith(isEditNames: !state.isEditNames));

  void extraName() => emit(state.copyWith(isExtraName: !state.isExtraName));

  void editBody() => emit(state.copyWith(isEditBody: !state.isEditBody));

  void editContacts() =>
      emit(state.copyWith(isEditContacts: !state.isEditContacts));

  void editAbilities() =>
      emit(state.copyWith(isEditAbilities: !state.isEditAbilities));

  void editCity() =>
      emit(state.copyWith(isEditCity: !state.isEditCity));

  void editCategories()=>emit(state.copyWith(isEditCategory: !state.isEditCategory));
  void editSpheres()=>emit(state.copyWith(isEditSphere: !state.isEditSphere));
}

@freezed
abstract class ProfileUserBtnState with _$ProfileUserBtnState {
  const factory ProfileUserBtnState.onClick({
    required final bool link,
    required final bool selectResumes,
    required final bool isEditNames,
    required final bool isExtraName,
    required final bool isEditBody,
    required final bool isEditCategory,
    required final bool isEditSphere,
    required final bool isEditAbilities,
    required final bool isEditContacts,
    required final bool isEditCity,
  }) = OnClickProfileUserBtnState;
}
