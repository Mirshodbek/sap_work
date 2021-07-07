import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/models/tariff/tariff.dart';

import '../company.dart';

part 'core_feedbacks_bloc.freezed.dart';

class CoreFeedbacksBloc extends Bloc<CoreFeedbacksEvent, CoreFeedbacksState> {
  final CompanyRemoteDataBase remoteCompany;
  final GetStatusCompany getStatus;

  CoreFeedbacksBloc(this.remoteCompany, this.getStatus)
      : super(const CoreFeedbacksState.empty());

  @override
  Stream<CoreFeedbacksState> mapEventToState(CoreFeedbacksEvent event) async* {
    yield* event.map(
        getStatusSubscribe: _getStatusSubscribe,
        payStatus: _payStatusEvent);
  }

  Stream<CoreFeedbacksState> _getStatusSubscribe(
      _GetStatusSubscribeCoreFeedbacksEvent event) async* {
    final status = await getStatus(NoParams());
    yield* status.fold((failure) async* {
      yield CoreFeedbacksState.error(error: _mapFailureToMessage(failure));
    }, (subscribe) async* {
      yield CoreFeedbacksState.loaded(
          subscribe: subscribe, status: FormzStatus.pure);
    });
  }

  Stream<CoreFeedbacksState> _payStatusEvent(
      _PayStatusCoreFeedbacksEvent event) async* {
    try {
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) =>
              _state.copyWith(status: FormzStatus.submissionInProgress));
      final subscribe =
          await remoteCompany.addStatusSubscribeCompany(event.sum.toString());

      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) => _state.copyWith(
              subscribe: subscribe, status: FormzStatus.submissionSuccess));
    } catch (_) {
      yield state.maybeMap(
          orElse: () => state,
          loaded: (_state) =>
              _state.copyWith(status: FormzStatus.submissionFailure));
    }
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHE_FAILURE_MESSAGE;
      default:
        return 'Unexpected error';
    }
  }
}

@freezed
abstract class CoreFeedbacksEvent with _$CoreFeedbacksEvent {
  const factory CoreFeedbacksEvent.getStatusSubscribe() =
      _GetStatusSubscribeCoreFeedbacksEvent;

  const factory CoreFeedbacksEvent.payStatus({required final int sum}) =
      _PayStatusCoreFeedbacksEvent;


}

@freezed
abstract class CoreFeedbacksState with _$CoreFeedbacksState {
  const factory CoreFeedbacksState.empty() = EmptyCoreFeedbacksState;

  const factory CoreFeedbacksState.loading() = LoadingCoreFeedbacksState;

  const factory CoreFeedbacksState.loaded(
      {required final Tariffs subscribe,
      required final FormzStatus status}) = LoadedCoreFeedbacksState;

  const factory CoreFeedbacksState.error({required final String error}) =
      ErrorCoreFeedbacksState;
}
