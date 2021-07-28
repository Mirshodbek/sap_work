import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/data_source/admin/remote_data.dart';
import 'package:sap_work/repository/admin/usercases/usercases.dart';

part 'admin_bloc.freezed.dart';

class AdminBloc extends Bloc<AdminEvent, AdminState> {
  final GetSpheresCompany getSpheres;
  final GetCategoriesAdmin getCategories;
  final AdminRemoteDataBase remoteData;

  AdminBloc(this.getSpheres, this.getCategories, this.remoteData)
      : super(const AdminState.empty());

  @override
  Stream<AdminState> mapEventToState(AdminEvent event) async* {
    yield* event.map(
        getData: _getDataEvent,
        addCategory: _addCategoryEvent,
        addSphere: _addSphereEvent,
        delete: _deleteEvent,
        setPrice: _setPriceEvent);
  }

  Stream<AdminState> _getDataEvent(_GetDataAdminEvent event) async* {
    final sphere = await getSpheres(NoParams());
    final category = await getCategories(NoParams());
    yield* category.fold((failure) async* {
      yield AdminState.error(message: _mapFailureToMessage(failure));
    }, (categories) async* {
      yield* sphere.fold((failure) async* {
        yield AdminState.error(message: _mapFailureToMessage(failure));
      }, (spheres) async* {
        final price = await remoteData.getPrice();
        yield AdminState.loaded(
            price: price,
            clickSphere: false,
            clickCategory: false,
            category: categories,
            sphere: spheres,
            status: EMPTY_BLOC);
      });
    });
  }

  Stream<AdminState> _addCategoryEvent(_AddCategoryAdminEvent event) async* {
    yield state.maybeMap(
        orElse: () => state,
        loaded: (_state) =>
            _state.copyWith(clickCategory: event.click, status: EMPTY_BLOC));
    if (!event.click) {
      try {
        print("as");
        final result = await remoteData.addCategory(event.name);
        yield* _status(ADMIN_BLOC_ADD_CATEGORIES_SUCCEED);
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(category: result));
      } catch (_) {
        yield* _status(ADMIN_BLOC_ADD_CATEGORIES_FAILURE);
      }
    }
  }

  Stream<AdminState> _addSphereEvent(_AddSphereAdminEvent event) async* {
    yield state.maybeMap(
        orElse: () => state,
        loaded: (_state) =>
            _state.copyWith(clickSphere: event.click, status: EMPTY_BLOC));
    if (!event.click) {
      try {
        final result = await remoteData.addSphere(event.name);
        yield* _status(ADMIN_BLOC_ADD_SPHERES_SUCCEED);
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(sphere: result));
      } catch (_) {
        yield* _status(ADMIN_BLOC_ADD_SPHERES_FAILURE);
      }
    }
  }

  Stream<AdminState> _deleteEvent(_DeleteAdminEvent event) async* {
    try {
      if (event.category) {
        final result = await remoteData.deleteCategory(event.name);
        yield* _status(ADMIN_BLOC_DELETE_SUCCEED);
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(category: result));
      } else {
        print("as");
        final result = await remoteData.deleteSphere(event.name);
        yield* _status(ADMIN_BLOC_DELETE_SUCCEED);
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) => _state.copyWith(sphere: result));
      }
    } catch (_) {
      yield* _status(ADMIN_BLOC_DELETE_FAILURE);
    }
  }

  Stream<AdminState> _setPriceEvent(_SetPriceAdminEvent event) async* {
    try {
      final result = await remoteData.setPrice(event.price);
      yield* _status(ADMIN_BLOC_SET_PRICE_SUCCEED);
      yield state.maybeMap(
        orElse: () => state,
        loaded: (_state) => _state.copyWith(price: result),
      );
    } catch (_) {
      yield* _status(ADMIN_BLOC_SET_PRICE_FAILURE);
    }
  }

  Stream<AdminState> _status(String status) async* {
    yield state.maybeMap(
        orElse: () => state,
        loaded: (_state) => _state.copyWith(status: EMPTY_BLOC));
    yield state.maybeMap(
        orElse: () => state,
        loaded: (_state) => _state.copyWith(status: status));
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
abstract class AdminEvent with _$AdminEvent {
  const factory AdminEvent.getData() = _GetDataAdminEvent;

  const factory AdminEvent.addCategory(
      {required final bool click,
      required final String name}) = _AddCategoryAdminEvent;

  const factory AdminEvent.addSphere(
      {required final bool click,
      required final String name}) = _AddSphereAdminEvent;

  const factory AdminEvent.delete(
      {required final bool category,
      required final String name}) = _DeleteAdminEvent;

  const factory AdminEvent.setPrice({required final String price}) =
      _SetPriceAdminEvent;
}

@freezed
abstract class AdminState with _$AdminState {
  const factory AdminState.empty() = EmptyAdminState;

  const factory AdminState.loading() = LoadingAdminState;

  const factory AdminState.loaded({
    required final List<Feature> category,
    required final bool clickCategory,
    required final bool clickSphere,
    required final List<Feature> sphere,
    required final String price,
    required final String status,
  }) = LoadedAdminState;

  const factory AdminState.error({required final String message}) =
      ErrorAdminState;
}
