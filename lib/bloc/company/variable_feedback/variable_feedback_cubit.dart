import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/bloc/company/company.dart';

part 'variable_feedback_cubit.freezed.dart';

class VariableFeedbackCubit extends Cubit<VariableFeedbackState> {
  VariableFeedbackCubit()
      : super(const VariableFeedbackState.arguments(
            time: EMPTY_STRING,
            date: EMPTY_STRING,
            contact: EMPTY_STRING,
            contactType: EMPTY_STRING,
            answer: EMPTY_STRING));

  void date(String date) => emit(state.copyWith(date: date));

  void time(String time) => emit(state.copyWith(time: time));

  void contact(String contact) => emit(state.copyWith(contact: contact));

  void contactType(String contactType) =>
      emit(state.copyWith(contactType: contactType));

  void answer(String answer) => emit(state.copyWith(answer: answer));
}

@freezed
abstract class VariableFeedbackState with _$VariableFeedbackState {
  const factory VariableFeedbackState.arguments(
      {required final String date,
      required final String time,
      required final String contact,
      required final String contactType,
      required final String answer}) = ArgumentsVariableFeedbackState;
}
