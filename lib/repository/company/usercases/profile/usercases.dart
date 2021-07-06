import 'package:either_dart/either.dart';

import '../../../exceptions_failures.dart';
import '../../../repository.dart';
import '../../../usercases.dart';
import '../../company_repository.dart';

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

class GetCategories implements UseCase<List<Category>, NoParams> {
  final CompanyRepositoryBase repository;

  GetCategories(this.repository);

  @override
  Future<Either<Failure, List<Category>>> call(NoParams params) async {
    return await repository.getCategories();
  }
}

class GetLocalVacanciesCompany
    implements UseCase<List<LocalVacancyData>, Params> {
  final CompanyLocalDataBase localData;

  GetLocalVacanciesCompany(this.localData);

  @override
  Future<Either<Failure, List<LocalVacancyData>>> call(Params params) async {
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

class GetLocalVacancyCompany implements UseCase<LocalVacancyData, Params> {
  final CompanyLocalDataBase localData;

  GetLocalVacancyCompany(this.localData);

  @override
  Future<Either<Failure, LocalVacancyData>> call(Params params) async {
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

class GetStatusCompany implements UseCase<String, NoParams> {
  final CompanyRepositoryBase repository;

  GetStatusCompany(this.repository);

  @override
  Future<Either<Failure, String>> call(NoParams params) async {
    return await repository.getStatusCompany();
  }
}
