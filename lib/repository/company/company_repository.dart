import 'package:either_dart/either.dart';
import 'package:sap_work/models/category/category.dart';
import 'package:sap_work/models/profile_company/profile.dart';
import 'package:sap_work/models/vacancy/vacancy.dart';
import 'package:sap_work/models/vacancy_company/vacancy.dart';

import '../exceptions_failures.dart';


abstract class CompanyRepositoryBase {
  Future<Either<Failure, TypeProfileCompany>> getProfileCompany();

  Future<Either<Failure, List<VacancyCompany>>> getVacanciesCompany();

  Future<Either<Failure, Vacancy>> getVacancyCompany(int id);

  Future<Either<Failure, List<Category>>> getCategories();
}
