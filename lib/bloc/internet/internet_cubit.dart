import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internet_cubit.freezed.dart';

enum ConnectionType { Wifi, Mobile }

class InternetCubit extends Cubit<InternetState> {
  final Connectivity connectivity;
  late final StreamSubscription connectivityStreamSubscription;

  InternetCubit({required this.connectivity})
      : super(const InternetState.loading()) {
    monitorInternetConnection();
  }

  StreamSubscription<ConnectivityResult> monitorInternetConnection() {
    return connectivityStreamSubscription =
        connectivity.onConnectivityChanged.listen((connectivityResult) {
      if (connectivityResult == ConnectivityResult.wifi) {
        emitInternetConnected(ConnectionType.Wifi);
      } else if (connectivityResult == ConnectivityResult.mobile) {
        emitInternetConnected(ConnectionType.Mobile);
      } else if (connectivityResult == ConnectivityResult.none) {
        emitInternetDisconnected();
      }
    });
  }

  void emitInternetConnected(ConnectionType _connectionType) =>
      emit(InternetState.connected(connectionType: _connectionType));

  void emitInternetDisconnected() => emit(InternetState.disconnected());

  @override
  Future<void> close() {
    connectivityStreamSubscription.cancel();
    return super.close();
  }
}

@freezed
abstract class InternetState with _$InternetState {
  const factory InternetState.loading() = LoadingInternetState;

  const factory InternetState.connected({
    required final ConnectionType connectionType,
  }) = ConnectedInternetState;

  const factory InternetState.disconnected() = DisconnectedInternetState;
}
