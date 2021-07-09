import 'package:either_dart/either.dart';
import 'package:sap_work/models/chat/chat.dart';
import 'package:sap_work/models/params_company/local_vacancies/vacancies.dart';
import 'package:sap_work/models/tariff/tariff.dart';

import '../../exceptions_failures.dart';
import '../../repository.dart';
import '../../usercases.dart';
import '../company_repository.dart';

class GetProfileCompany implements UseCase<TypeProfileCompany, NoParams> {
  final CompanyRepositoryBase repository;

  GetProfileCompany(this.repository);

  @override
  Future<Either<Failure, TypeProfileCompany>> call(NoParams params) async {
    return await repository.getProfileCompany();
  }
}

class GetVacanciesCompany implements UseCase<List<Vacancy>, NoParams> {
  final CompanyRepositoryBase repository;

  GetVacanciesCompany(this.repository);

  @override
  Future<Either<Failure, List<Vacancy>>> call(NoParams params) async {
    return await repository.getVacanciesCompany();
  }
}

class GetCategoriesCompany implements UseCase<List<Category>, NoParams> {
  final CompanyRepositoryBase repository;

  GetCategoriesCompany(this.repository);

  @override
  Future<Either<Failure, List<Category>>> call(NoParams params) async {
    return await repository.getCategories();
  }
}

class GetLocalVacanciesCompany
    implements UseCase<List<LocalVacancyData>, ParamsLocalVacancy> {
  final CompanyLocalDataBase localData;

  GetLocalVacanciesCompany(this.localData);

  @override
  Future<Either<Failure, List<LocalVacancyData>>> call(ParamsLocalVacancy params) async {
    if (params.writeVacancies) {
      await localData.localVacanciesCompany(params.vacancies);
    }
    try {
      return Right(await localData.getLocalVacanciesCompany());
    } on CacheException {
      return Left(CacheFailure());
    }
  }
}

class GetLocalVacancyCompany implements UseCase<LocalVacancyData, ParamsLocalVacancy> {
  final CompanyLocalDataBase localData;

  GetLocalVacancyCompany(this.localData);

  @override
  Future<Either<Failure, LocalVacancyData>> call(ParamsLocalVacancy params) async {
    if (params.writeVacancy) {
      await localData.localVacancyCompany(params.vacancy!);
    }
    try {
      return Right(await localData.getLocalVacancyCompany());
    } on CacheException {
      return Left(CacheFailure());
    }
  }
}

class GetVacancyCompany implements UseCase<Vacancy, int> {
  final CompanyRepositoryBase repository;

  GetVacancyCompany(this.repository);

  @override
  Future<Either<Failure, Vacancy>> call(int id) async {
    return await repository.getVacancyCompany(id);
  }
}

class GetFeedbacksVacancy implements UseCase<List<FeedbackVacancy>, int> {
  final CompanyRepositoryBase repository;

  GetFeedbacksVacancy(this.repository);

  @override
  Future<Either<Failure, List<FeedbackVacancy>>> call(int id) async {
    return await repository.getFeedbacksVacancy(id);
  }
}

class GetStatusCompany implements UseCase<Tariffs, NoParams> {
  final CompanyRepositoryBase repository;

  GetStatusCompany(this.repository);

  @override
  Future<Either<Failure, Tariffs>> call(NoParams params) async {
    return await repository.getStatusCompany();
  }
}

class GetChatsCompany implements UseCase<List<Chat>, int> {
  final CompanyRepositoryBase repository;

  GetChatsCompany(this.repository);

  @override
  Future<Either<Failure, List<Chat>>> call(int id) async {
    return await repository.getChats(id);
  }
}
