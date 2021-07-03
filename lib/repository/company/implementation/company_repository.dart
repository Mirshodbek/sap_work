import 'package:either_dart/either.dart';
import 'package:sap_work/data_source/company/cache_data.dart';
import 'package:sap_work/data_source/company/remote_data.dart';
import 'package:sap_work/models/category/category.dart';
import 'package:sap_work/models/profile_company/profile.dart';
import 'package:sap_work/models/vacancy/vacancy.dart';
import 'package:sap_work/models/vacancy_company/vacancy.dart';

import '../../exceptions_failures.dart';
import '../../network_info.dart';
import '../company_repository.dart';


class CompanyRepository implements CompanyRepositoryBase {
  final CompanyRemoteDataBase remoteDataSource;
  final CompanyCacheDataBase localDataSource;
  final NetworkInfo networkInfo;

  CompanyRepository({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, TypeProfileCompany>> getProfileCompany() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await remoteDataSource.getProfileCompany();
        localDataSource.cacheProfileCompany(remoteData);
        return Right(remoteData);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localData = await localDataSource.getProfileCompany();
        return Right(localData);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<VacancyCompany>>> getVacanciesCompany() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await remoteDataSource.getVacanciesCompany();
        return Right(remoteData);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localData = await localDataSource.getVacanciesCompany();
        return Right(localData);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<Category>>> getCategories() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await remoteDataSource.getCategories();
        return Right(remoteData);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localData = await localDataSource.getCategories();
        return Right(localData);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, Vacancy>> getVacancyCompany(
      int id) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await remoteDataSource.getVacancyCompany(id);
        localDataSource.cacheVacancyCompany(remoteData);
        return Right(remoteData);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localData = await localDataSource.getVacancyCompany();
        return Right(localData);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
