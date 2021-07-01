import 'package:either_dart/either.dart';
import 'package:sap_work/data_source/company/cache_data.dart';
import 'package:sap_work/data_source/company/local_data.dart';
import 'package:sap_work/models/category/category.dart';
import 'package:sap_work/models/profile_company/profile.dart';
import 'package:sap_work/models/vacancy/vacancy.dart';
import 'package:sap_work/models/vacancy_company/vacancy.dart';
import 'package:sap_work/repository/company/company_repository.dart';
import 'package:sap_work/repository/exceptions_failures.dart';
import 'package:sap_work/repository/usercases.dart';

class GetProfileCompany implements UseCase<TypeProfileCompany, NoParams> {
  final CompanyRepositoryBase repository;

  GetProfileCompany(this.repository);

  @override
  Future<Either<Failure, TypeProfileCompany>> call(NoParams params) async {
    return await repository.getProfileCompany();
  }
}

class GetVacanciesCompany implements UseCase<List<VacancyCompany>, NoParams> {
  final CompanyRepositoryBase repository;

  GetVacanciesCompany(this.repository);

  @override
  Future<Either<Failure, List<VacancyCompany>>> call(NoParams params) async {
    return await repository.getVacanciesCompany();
  }
}

class GetCategories implements UseCase<List<Category>, NoParams> {
  final CompanyRepositoryBase repository;

  GetCategories(this.repository);

  @override
  Future<Either<Failure, List<Category>>> call(NoParams params) async {
    return await repository.getCategories();
  }
}

class GetLocalVacanciesCompany implements UseCase<List<LocalVacancyData>, Params> {
  final CompanyLocalDataBase localData;

  GetLocalVacanciesCompany(this.localData);

  @override
  Future<Either<Failure, List<LocalVacancyData>>> call(Params params) async {
    if (params.writeVacancies) {
      await localData.cacheListVacanciesNameCompany(params.vacancies);
    }
    try {
      return Right(await localData.getListVacanciesNameCompany());
    } on CacheException {
      return Left(CacheFailure());
    }
  }
}

class GetLocalVacancyCompany implements UseCase<LocalVacancyData, Params> {
  final CompanyLocalDataBase localData;

  GetLocalVacancyCompany(this.localData);

  @override
  Future<Either<Failure, LocalVacancyData>> call(Params params) async {
    if (params.writeVacancy) {
      await localData.cacheVacancyNameCompany(params.vacancy!);
    }
    try {
      return Right(await localData.getVacancyNameCompany());
    } on CacheException {
      return Left(CacheFailure());
    }
  }
}

class GetVacancyCompany implements UseCase<Vacancy, Params> {
  final CompanyRepositoryBase repository;
  final CompanyCacheDataBase cacheData;

  GetVacancyCompany(this.repository, this.cacheData);

  @override
  Future<Either<Failure, Vacancy>> call(Params params) async {
    return await repository.getVacancyCompany(params.id);
  }
}