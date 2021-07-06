import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/resources/lists.dart';

part 'feedbacks_btn_cubit.freezed.dart';

class FeedbacksBtnCubit extends Cubit<FeedbacksBtnState> {
  int sum = 0;
  int total = 1000;
  String title = Lists.tariffs.first.title;

  FeedbacksBtnCubit() : super(const FeedbacksBtnState.empty());

  void resume(FeedbackVacancy resume) {
    emit(const FeedbacksBtnState.empty());
    emit(FeedbacksBtnState.resume(resume: resume));
  }

  void payment() {
    emit(const FeedbacksBtnState.payment());
    emit(FeedbacksBtnState.sum(
        sum: 1, total: 1000, title: Lists.tariffs.first.title));
  }

  void minus() {
    if (sum > 1) {
      totally;
      emit(state.maybeMap(
          orElse: () => state,
          sum: (_state) =>
              _state.copyWith(sum: sum = sum - 1, total: total * sum)));
    }
  }

  void onTap(String title) {
    this.title = title;
    totally;
    emit(state.maybeMap(
        orElse: () => state,
        sum: (_state) => _state.copyWith(title: title, total: total * sum)));
  }

  void plus() {
    totally;
    emit(state.maybeMap(
        orElse: () => state,
        sum: (_state) =>
            _state.copyWith(sum: sum = sum + 1, total: total * sum)));
  }

  int get totally {
    if (title == Lists.tariffs[0].title) {
      return total = 1000;
    } else if (title == Lists.tariffs[1].title) {
      return total = 2000;
    }
    return total = 0;
  }
}

@freezed
abstract class FeedbacksBtnState with _$FeedbacksBtnState {
  const factory FeedbacksBtnState.empty() = EmptyFeedbacksBtnState;

  const factory FeedbacksBtnState.payment() = PaymentFeedbacksBtnState;

  const factory FeedbacksBtnState.resume({required FeedbackVacancy resume}) =
      ResumeFeedbacksBtnState;

  const factory FeedbacksBtnState.sum(
      {required final String title,
      required final int sum,
      required final int total}) = SumFeedbacksBtnState;
}
