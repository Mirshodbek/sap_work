part of 'pay_cubit.dart';

@freezed
abstract class PayState with _$PayState{
  const factory PayState.loading()=_LoadingPayState;
  const factory PayState.loaded({
    required final  bool isPayed,
    required final  bool nextStep,
    required final int sum,
    required final int count,
})=_LoadedPayState;
}

