import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/models/tariff/tariff.dart';

import '../company.dart';

part 'core_feedbacks_company_bloc.freezed.dart';

class CoreFeedbacksCompanyBloc extends Bloc<CoreFeedbacksCompanyEvent, CoreFeedbacksCompanyState> {
  final CompanyRemoteDataBase remoteCompany;
  final GetStatusCompany getStatus;

  CoreFeedbacksCompanyBloc(this.remoteCompany, this.getStatus)
      : super(const CoreFeedbacksCompanyState.empty());

  @override
  Stream<CoreFeedbacksCompanyState> mapEventToState(CoreFeedbacksCompanyEvent event) async* {
    yield* event.map(
        getStatusSubscribe: _getStatusSubscribe,
        payStatus: _payStatusEvent);
  }

  Stream<CoreFeedbacksCompanyState> _getStatusSubscribe(
      _GetStatusSubscribeCoreFeedbacksCompanyEvent event) async* {
    final status = await getStatus(NoParams());
    yield* status.fold((failure) async* {
      yield CoreFeedbacksCompanyState.error(error: _mapFailureToMessage(failure));
    }, (subscribe) async* {
      yield CoreFeedbacksCompanyState.loaded(
          subscribe: subscribe, status: FormzStatus.pure);
    });
  }

  Stream<CoreFeedbacksCompanyState> _payStatusEvent(
      _PayStatusCoreFeedbacksCompanyEvent event) async* {
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
abstract class CoreFeedbacksCompanyEvent with _$CoreFeedbacksCompanyEvent {
  const factory CoreFeedbacksCompanyEvent.getStatusSubscribe() =
      _GetStatusSubscribeCoreFeedbacksCompanyEvent;

  const factory CoreFeedbacksCompanyEvent.payStatus({required final int sum}) =
      _PayStatusCoreFeedbacksCompanyEvent;


}

@freezed
abstract class CoreFeedbacksCompanyState with _$CoreFeedbacksCompanyState {
  const factory CoreFeedbacksCompanyState.empty() = EmptyCoreFeedbacksCompanyState;

  const factory CoreFeedbacksCompanyState.loading() = LoadingCoreFeedbacksCompanyState;

  const factory CoreFeedbacksCompanyState.loaded(
      {required final Tariffs subscribe,
      required final FormzStatus status}) = LoadedCoreFeedbacksCompanyState;

  const factory CoreFeedbacksCompanyState.error({required final String error}) =
      ErrorCoreFeedbacksCompanyState;
}
