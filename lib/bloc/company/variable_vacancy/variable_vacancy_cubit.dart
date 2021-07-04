import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/resources/constants.dart';

part 'variable_vacancy_cubit.freezed.dart';

class VariableVacancyCubit extends Cubit<VariableVacancyState> {
  VariableVacancyCubit()
      : super(const VariableVacancyState.arguments(
            categoryTitle: EMPTY_STRING,
            minsalary: EMPTY_STRING,
            maxsalary: EMPTY_STRING,
            schedule: EMPTY_STRING,
            grade: EMPTY_STRING,
            stage: EMPTY_STRING,
            city: EMPTY_STRING,
            name: EMPTY_STRING,
            body: EMPTY_STRING,
            type: EMPTY_STRING,
            abilities: EMPTY_STRING,
            categoryId: 0,
            tools: []));

  void category(String title) => emit(state.copyWith(categoryTitle: title));

  void categoryId(int id) => emit(state.copyWith(categoryId: id));

  void grade(String grade) => emit(state.copyWith(grade: grade));

  void body(String body) => emit(state.copyWith(body: body));

  void minsalary(String minsalary) =>
      emit(state.copyWith(minsalary: minsalary));

  void maxsalary(String maxsalary) =>
      emit(state.copyWith(maxsalary: maxsalary));

  void addingTools(String abilities) =>
      emit(state.copyWith(tools: <String>[...state.tools, abilities]));

  void abilities(String abilities) =>
      emit(state.copyWith(abilities: abilities));

  void deletingTools(String abilities) =>
      emit(state.copyWith(tools: List.from(state.tools)..remove(abilities)));

  void schedule(String schedule) => emit(state.copyWith(schedule: schedule));

  void city(String city) => emit(state.copyWith(city: city));

  void stage(String stage) => emit(state.copyWith(stage: stage));

  void type(String type) => emit(state.copyWith(type: type));
}

@freezed
abstract class VariableVacancyState with _$VariableVacancyState {
  const factory VariableVacancyState.arguments(
      {required final String categoryTitle,
      required final String city,
      required final String name,
      required final String body,
      required final String grade,
      required final String minsalary,
      required final String maxsalary,
      required final String schedule,
      required final String stage,
      required final String type,
      required final String abilities,
      required final int categoryId,
      required final List<String> tools}) = ArgumentsVacancyState;
}
