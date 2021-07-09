import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/models/resume/resume_attributes.dart';

part 'variable_resume_cubit.freezed.dart';

class VariableResumeCubit extends Cubit<VariableResumeState> {
  VariableResumeCubit()
      : super(VariableResumeState.arguments(
          categoryTitle: EMPTY_STRING,
          categoryId: 0,
          email: EMPTY_STRING,
          body: EMPTY_STRING,
          abilities: EMPTY_STRING,
          tools: <String>[],
          phone: EMPTY_STRING,
          city: EMPTY_STRING,
          companyName: EMPTY_STRING,
          periodCompany: EMPTY_STRING,
          positionCompany: EMPTY_STRING,
          descriptionCompany: EMPTY_STRING,
          universityName: EMPTY_STRING,
          gradeUniversity: EMPTY_STRING,
          periodUniversity: EMPTY_STRING,
          indexStages: -1,
          indexGrades: -1,
          grades: <Map<String, dynamic>>[Grade.toMap("", "", "")],
          stages: <Map<String, dynamic>>[Stage.toMap("", "", "", "")],
        ));

  void email(String value) => emit(state.copyWith(email: value));

  void phone(String value) => emit(state.copyWith(phone: value));

  void categoryTitle(String title) =>
      emit(state.copyWith(categoryTitle: title));

  void categoryId(int id) => emit(state.copyWith(categoryId: id));

  void body(String value) => emit(state.copyWith(body: value));
  void city(String value) => emit(state.copyWith(city: value));

  void addingTools(String value) =>
      emit(state.copyWith(tools: <String>[...state.tools, value]));

  void abilities(String value) => emit(state.copyWith(abilities: value));

  void deletingTools(String value) =>
      emit(state.copyWith(tools: List.from(state.tools)..remove(value)));

  void addingStage() {
    emit(state.copyWith(
        stages: List.from(state.stages)..add(Stage.toMap("", "", "", ""))));
  }

  void deletingStage(int index) {
    if (state.stages.length > 1)
      emit(state.copyWith(stages: List.from(state.stages)..removeAt(index)));
  }

  void companyName(int index, String value) {
    emit(state.copyWith(companyName: value));
    emit(state.copyWith(
        stages: List.from(state.stages)
          ..replaceWhere(
              (it) => state.stages.indexOf(it) == index,
              Stage.toMap(value, state.positionCompany,
                  state.descriptionCompany, state.periodCompany))));
  }

  void positionCompany(int index, String value) {
    emit(state.copyWith(positionCompany: value));
    emit(state.copyWith(
        stages: List.from(state.stages)
          ..replaceWhere(
              (it) => state.stages.indexOf(it) == index,
              Stage.toMap(state.companyName, value, state.descriptionCompany,
                  state.periodCompany))));
  }

  void descriptionCompany(int index, String value) {
    emit(state.copyWith(descriptionCompany: value));
    emit(state.copyWith(
        stages: List.from(state.stages)
          ..replaceWhere(
              (it) => state.stages.indexOf(it) == index,
              Stage.toMap(state.companyName, state.positionCompany, value,
                  state.periodCompany))));
  }

  void periodCompany(int index, String value) {
    emit(state.copyWith(periodCompany: value));
    emit(state.copyWith(
        stages: List.from(state.stages)
          ..replaceWhere(
              (it) => state.stages.indexOf(it) == index,
              Stage.toMap(state.companyName, state.positionCompany,
                  state.descriptionCompany, value))));
  }

  void addingGrade() {
    emit(state.copyWith(
        grades: List.from(state.grades)..add(Grade.toMap("", "", ""))));
  }

  void deletingGrade(int index) {
    if (state.grades.length > 1)
      emit(state.copyWith(grades: List.from(state.grades)..removeAt(index)));
  }

  void universityName(int index, String value) {
    emit(state.copyWith(universityName: value));
    emit(state.copyWith(
        grades: List.from(state.grades)
          ..replaceWhere(
              (it) => state.grades.indexOf(it) == index,
              Grade.toMap(
                  value, state.gradeUniversity, state.periodUniversity))));
  }

  void gradeUniversity(int index, String value) {
    emit(state.copyWith(gradeUniversity: value));
    emit(state.copyWith(
        grades: List.from(state.grades)
          ..replaceWhere(
              (it) => state.grades.indexOf(it) == index,
              Grade.toMap(
                  state.universityName, value, state.periodUniversity))));
  }

  void periodUniversity(int index, String value) {
    emit(state.copyWith(periodUniversity: value));
    emit(state.copyWith(
        grades: List.from(state.grades)
          ..replaceWhere(
              (it) => state.grades.indexOf(it) == index,
              Grade.toMap(
                  state.universityName, state.gradeUniversity, value))));
  }

  void indexStages(int id) => emit(state.copyWith(indexStages: id));
  void indexGrades(int id) => emit(state.copyWith(indexGrades: id));
}

@freezed
abstract class VariableResumeState with _$VariableResumeState {
  const factory VariableResumeState.arguments({
    required final String categoryTitle,
    required final int categoryId,
    required final String email,
    required final String phone,
    required final String body,
    required final String city,
    required final String abilities,
    required final List<String> tools,
    required final String companyName,
    required final String positionCompany,
    required final String periodCompany,
    required final String descriptionCompany,
    required final String universityName,
    required final String gradeUniversity,
    required final String periodUniversity,
    required final List<Map<String, dynamic>> stages,
    required final List<Map<String, dynamic>> grades,
    required final int indexStages,
    required final int indexGrades,
  }) = ArgumentsVariableResumeState;
}
