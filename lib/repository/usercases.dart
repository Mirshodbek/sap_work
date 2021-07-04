import 'package:equatable/equatable.dart';
import 'package:either_dart/either.dart';
import 'package:sap_work/models/local_vacancy_data/vacancy.dart';
import 'exceptions_failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}

const EMPTY_TITLE_VACANCY = 'Введите название вакансии';

class Params extends Equatable {
  final bool writeVacancies;
  final List<LocalVacancyData> vacancies;
  final bool writeVacancy;
  final LocalVacancyData? vacancy;
  final int id;

  Params(
      {this.writeVacancies = false,
      this.vacancies = const <LocalVacancyData>[],
      this.writeVacancy = false,
      this.vacancy,
      this.id = 0});

  @override
  List<Object?> get props => [writeVacancies, vacancies, writeVacancy, vacancy];
}

