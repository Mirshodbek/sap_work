import 'package:either_dart/either.dart';
import 'package:sap_work/models/chat/chat.dart';
import 'package:sap_work/models/tariff/tariff.dart';

import '../exceptions_failures.dart';
import '../repository.dart';

abstract class CompanyRepositoryBase {
  Future<Either<Failure, TypeProfileCompany>> getProfileCompany();

  Future<Either<Failure, List<Vacancy>>> getVacanciesCompany();

  Future<Either<Failure, Vacancy>> getVacancyCompany(int id);

  Future<Either<Failure, List<Category>>> getCategories();

  Future<Either<Failure, List<FeedbackVacancy>>> getFeedbacksVacancy(int id);
  Future<Either<Failure, List<Chat>>> getChats(int id);
  Future<Either<Failure,Tariffs>> getStatusCompany();
}
