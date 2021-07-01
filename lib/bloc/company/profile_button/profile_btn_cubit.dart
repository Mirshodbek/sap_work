import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_btn_cubit.freezed.dart';

class ProfileBtnCubit extends Cubit<ProfileBtnState> {
  ProfileBtnCubit()
      : super(const ProfileBtnState.onClick(
            isSelect: false, isEdit: false, isExtra: false));

   void isSelect()=>emit(state.copyWith(isSelect: !state.isSelect));
   void isEdit()=>emit(state.copyWith(isEdit: !state.isEdit));
   void isExtra()=>emit(state.copyWith(isExtra: !state.isExtra));
}

@freezed
abstract class ProfileBtnState with _$ProfileBtnState {
  const factory ProfileBtnState.onClick(
      {required final bool isSelect,
      required final bool isEdit,
      required final bool isExtra}) = OnClickProfileBtnState;
}
