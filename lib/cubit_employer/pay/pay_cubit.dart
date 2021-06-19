import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pay_cubit.freezed.dart';

part 'pay_state.dart';

class PayCubit extends Cubit<PayState> {
  bool nextStep = false;
  bool isPayed = false;
  int sum = 0;
  int initialSum = 0;
  int count = 1;

  PayCubit() : super(PayState.loading()) {
    _init();
  }

  void _init() {
    _updateState();
  }

  void next(int sum) {
    nextStep = true;
    this.sum = sum;
    initialSum = sum;
    _updateState();
  }

  void plus() {
    sum = initialSum;
    count++;
    sum = sum * count;
    _updateState();
  }

  void minus() {
    sum = initialSum;
    if (count > 1) {
      count--;
      sum = sum * count;
      _updateState();
    }
  }

  void paying(){
    isPayed = true;
    _updateState();
  }

  void _updateState() {
    emit(PayState.loaded(
      isPayed: isPayed,
      nextStep: nextStep,
      sum: sum,
      count: count,
    ));
  }
}
