import 'package:either_dart/either.dart';
import 'package:sap_work/models/chat/chat.dart';
import 'package:sap_work/models/models.dart';
import 'package:sap_work/models/tariff/tariff.dart';

import '../exceptions_failures.dart';
import '../repository.dart';

abstract class CompanyRepositoryBase {
  Future<Either<Failure, TypeProfileCompany>> getProfileCompany();

  Future<Either<Failure, List<Vacancy>>> getVacanciesCompany();

  Future<Either<Failure, Vacancy>> getVacancyCompany(int id);

  Future<Either<Failure, List<Feature>>> getCategories();
  Future<Either<Failure, List<Feature>>> getSpheres();

  Future<Either<Failure, List<dynamic>>> getFeedbacksVacancy(int id);
  Future<Either<Failure, List<Chat>>> getChats(int id);
  Future<Either<Failure,Tariffs>> getStatusCompany();
  Future<Either<Failure, PaginationResume>> getRecommendResumesCompany(int page);

}
