import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/resources/lists.dart';
import 'package:sap_work/resources/validator.dart';

part 'payment_cubit.freezed.dart';

class PaymentCubit extends Cubit<PaymentState> {
  int sum = 1;
  int total = 1000;
  String title = Lists.tariffs.first.title;
  PaymentCubit()
      : super(PaymentState.status(
            sum: 1, total: 1000, title: Lists.tariffs.first.title));


  void minus() {
    if (sum > 1) {
      total = Utils.totally(title);
      emit(state.maybeMap(
          orElse: () => state,
          status: (_state) =>
              _state.copyWith(sum: sum = sum - 1, total: total * sum)));
    }
  }

  void onTap(String title) {
    this.title = title;
    total = Utils.totally(title);
    emit(state.maybeMap(
        orElse: () => state,
        status: (_state) =>
            _state.copyWith(title: title, total: total * sum)));
  }

  void plus() {
    total = Utils.totally(title);
    emit(state.maybeMap(
        orElse: () => state,
        status: (_state) =>
            _state.copyWith(sum: sum = sum + 1, total: total * sum)));
  }
}

@freezed
abstract class PaymentState with _$PaymentState {
  const factory PaymentState.status(
      {required final String title,
      required final int sum,
      required final int total}) = StatusPaymentState;
}
