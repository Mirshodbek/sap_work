import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/models/vacancy/vacancy.dart';
import 'package:sap_work/repository/company/usercases/profile/usercases.dart';
import 'package:sap_work/repository/usercases.dart';

part 'vacancy_company_bloc.freezed.dart';

class VacancyCompanyBloc
    extends Bloc<VacancyCompanyEvent, VacancyCompanyState> {
  final GetVacancyCompany getVacancy;
  final GetLocalVacancyCompany getLocalVacancy;

  VacancyCompanyBloc(this.getVacancy, this.getLocalVacancy)
      : super(const VacancyCompanyState.empty());

  @override
  Stream<VacancyCompanyState> mapEventToState(
      VacancyCompanyEvent event) async* {
    yield* event.map(getVacancy: _getVacancyEvent);
  }

  Stream<VacancyCompanyState> _getVacancyEvent(
      _GetVacancyCompanyEvent event) async* {
    yield const VacancyCompanyState.loading();
    final localVacancy =
        await getLocalVacancy.localData.getVacancyNameCompany();
    final vacancyCompany = await getVacancy(Params(id: localVacancy.id));
    yield* vacancyCompany.fold((failure) async* {
      yield const VacancyCompanyState.noVacancy();
    }, (data) async* {
      yield VacancyCompanyState.loaded(vacancy: data);
    });
  }
}

@freezed
abstract class VacancyCompanyEvent with _$VacancyCompanyEvent {
  const factory VacancyCompanyEvent.getVacancy() = _GetVacancyCompanyEvent;
}

@freezed
abstract class VacancyCompanyState with _$VacancyCompanyState {
  const factory VacancyCompanyState.empty() = EmptyVacancyCompanyState;

  const factory VacancyCompanyState.loading() = LoadingVacancyCompanyState;

  const factory VacancyCompanyState.loaded({required final Vacancy vacancy}) =
      LoadedVacancyCompanyState;

  const factory VacancyCompanyState.noVacancy() = NoVacancyCompanyState;
}