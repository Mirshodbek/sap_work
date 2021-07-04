import 'package:either_dart/either.dart';

import '../exceptions_failures.dart';
import '../repository.dart';

abstract class CompanyRepositoryBase {
  Future<Either<Failure, TypeProfileCompany>> getProfileCompany();

  Future<Either<Failure, List<Vacancy>>> getVacanciesCompany();

  Future<Either<Failure, Vacancy>> getVacancyCompany(int id);

  Future<Either<Failure, List<Category>>> getCategories();

  Future<Either<Failure, List<FeedbackVacancy>>> getFeedbacksVacancy(int id);
}
