

import 'package:either_dart/either.dart';
import 'package:sap_work/data_source/user/cache_data.dart';
import 'package:sap_work/data_source/user/remote_data.dart';
import 'package:sap_work/models/category/category.dart';
import 'package:sap_work/models/contact_user/contact.dart';
import 'package:sap_work/models/profile_user/profile.dart';
import 'package:sap_work/models/resume/resume.dart';
import 'package:sap_work/repository/exceptions_failures.dart';
import 'package:sap_work/repository/user/user_repository.dart';

import '../../network_info.dart';

class UserRepository implements UserRepositoryBase{
  final UserRemoteDataBase remoteDataSource;
  final UserCacheDataBase localDataSource;
  final NetworkInfo networkInfo;

  UserRepository({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });
  
  
  @override
  Future<Either<Failure, TypeProfileUser>> getProfileUser() async{
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await remoteDataSource.getProfileUser();
        localDataSource.cacheProfileUser(remoteData);
        return Right(remoteData);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localData = await localDataSource.getProfileUser();
        return Right(localData);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<ContactUser>>> getContactsUser() async{
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await remoteDataSource.getContactsUser();
        return Right(remoteData);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localData = await localDataSource.getContactsUser();
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
  Future<Either<Failure, List<Resume>>> getResumesUser() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await remoteDataSource.getResumesUser();
        return Right(remoteData);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localData = await localDataSource.getResumesUser();
        return Right(localData);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, Resume>> getResumeUser(int id) async{
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await remoteDataSource.getResumeUser(id);
        localDataSource.cacheResumeUser(remoteData);
        return Right(remoteData);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localData = await localDataSource.getResumeUser();
        return Right(localData);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }


}