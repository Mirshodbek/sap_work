import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/resources/lists.dart';
import 'package:sap_work/resources/extensions/string_extension.dart';

part 'variable_filter_cubit.freezed.dart';

class VariableFilterCubit extends Cubit<VariableFilterState> {
  VariableFilterCubit()
      : super(VariableFilterState.arguments(
            page: 1,
            stage: EMPTY_BLOC,
            city: EMPTY_BLOC,
            abilities: EMPTY_BLOC,
            schedule: EMPTY_BLOC,
            type: EMPTY_BLOC,
            profession: EMPTY_BLOC,
            categoryTitle: EMPTY_BLOC,
            countryList: Lists.countryList,
            category: 0));

  void page() {
    emit(state.copyWith(page: state.page + 1));
  }

  void stage(String value) => emit(state.copyWith(stage: value));

  void abilities(String value) => emit(state.copyWith(abilities: value));

  void schedule(String value) => emit(state.copyWith(schedule: value));

  void city(String value) => emit(state.copyWith(city: value));

  void type(String value) => emit(state.copyWith(type: value));

  void profession(String value) => emit(state.copyWith(profession: value));

  void categoryTitle(String value) =>
      emit(state.copyWith(categoryTitle: value));

  void category(int id) => emit(state.copyWith(category: id));

  void searchCountry(String value) {
    if (value.isNotEmpty) {
      emit(state.copyWith(
          countryList: state.countryList.where((it) {
        return it.containsIgnoreCase(value);
      }).toList()));
    } else {
      emit(state.copyWith(countryList: Lists.countryList));
    }
  }

  void clear() => emit(state.copyWith(
      stage: EMPTY_BLOC,
      city: "Город",
      abilities: EMPTY_BLOC,
      schedule: EMPTY_BLOC,
      type: EMPTY_BLOC,
      profession: EMPTY_BLOC,
      categoryTitle: EMPTY_BLOC,
      category: -1));
}

@freezed
abstract class VariableFilterState with _$VariableFilterState {
  const factory VariableFilterState.arguments({
    required final String stage,
    required final String city,
    required final String abilities,
    required final String schedule,
    required final String type,
    required final String profession,
    required final String categoryTitle,
    required final int category,
    required final int page,
    required final List<String> countryList,
  }) = ArgumentsVariableFilterState;
}
