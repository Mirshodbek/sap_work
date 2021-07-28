import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vacancies_user_btn_cubit.freezed.dart';

class VacanciesUserBtnCubit extends Cubit<VacanciesUserBtnState> {
  VacanciesUserBtnCubit() : super(const VacanciesUserBtnState.empty());

  void favorites() {
    emit(const VacanciesUserBtnState.empty());
    emit(const VacanciesUserBtnState.favorites());
  }

  void filter() {
    emit(const VacanciesUserBtnState.empty());
    emit(const VacanciesUserBtnState.filter());
  }

  void searchCountry() {
    emit(const VacanciesUserBtnState.empty());
    emit(const VacanciesUserBtnState.searchCountry());
  }


  void vacancy(int id) {
    emit(const VacanciesUserBtnState.empty());
    emit(VacanciesUserBtnState.vacancy(id: id));
  }
}

@freezed
abstract class VacanciesUserBtnState with _$VacanciesUserBtnState {
  const factory VacanciesUserBtnState.empty() = EmptyVacanciesUserBtnState;

  const factory VacanciesUserBtnState.favorites() =
      FavoritesVacanciesUserBtnState;

  const factory VacanciesUserBtnState.searchCountry() =
      SearchCountryVacanciesUserBtnState;

  const factory VacanciesUserBtnState.searchProfession() =
      SearchProfessionVacanciesUserBtnState;

  const factory VacanciesUserBtnState.filter() = FilterVacanciesUserBtnState;

  const factory VacanciesUserBtnState.vacancy({required final int id}) =
      GetVacanciesUserBtnState;
}
