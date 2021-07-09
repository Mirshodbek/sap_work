
import 'package:equatable/equatable.dart';
import 'package:sap_work/models/local_vacancy/vacancy.dart';

class ParamsLocalVacancy extends Equatable {
  final bool writeVacancies;
  final List<LocalVacancyData> vacancies;
  final bool writeVacancy;
  final LocalVacancyData? vacancy;

  final int id;

  ParamsLocalVacancy(
      {this.writeVacancies = false,
        this.vacancies = const <LocalVacancyData>[],
        this.writeVacancy = false,
        this.vacancy,
        this.id = 0});

  @override
  List<Object?> get props => [writeVacancies, vacancies, writeVacancy, vacancy];
}

