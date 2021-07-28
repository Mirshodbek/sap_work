import 'package:either_dart/either.dart';
import 'package:sap_work/data_source/user/cache_data.dart';
import 'package:sap_work/data_source/user/remote_data.dart';
import 'package:sap_work/models/feature/feature.dart';
import 'package:sap_work/models/chat/chat.dart';
import 'package:sap_work/models/feedback_resume/feedback.dart';
import 'package:sap_work/models/invite/invite.dart';
import 'package:sap_work/models/profile_user/profile.dart';
import 'package:sap_work/models/resume/resume.dart';
import 'package:sap_work/models/vacancy/vacancy.dart';
import 'package:sap_work/repository/exceptions_failures.dart';
import 'package:sap_work/repository/user/user_repository.dart';

import '../../network_info.dart';

class UserRepository implements UserRepositoryBase {
  final UserRemoteDataBase remoteDataSource;
  final UserCacheDataBase localDataSource;
  final NetworkInfo networkInfo;

  UserRepository({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, TypeProfileUser>> getProfileUser() async {
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
  Future<Either<Failure, List<Feature>>> getCategories() async {
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
  Future<Either<Failure, Resume>> getResumeUser(int id) async {
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

  @override
  Future<Either<Failure, List<FeedbackResume>>> getFeedbacksResume(
      int id) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await remoteDataSource.getFeedbacksResumeUser(id);
        return Right(remoteData);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localData = await localDataSource.getFeedbacksResume();
        return Right(localData);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<Chat>>> getChats(int id) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await remoteDataSource.getChats(id);
        return Right(remoteData);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localData = await localDataSource.getChats();
        return Right(localData);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, Vacancy>> getVacancyUser(int id) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await remoteDataSource.getVacancyUser(id);
        localDataSource.cacheVacancyUser(remoteData);
        return Right(remoteData);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localData = await localDataSource.getVacancyUser();
        return Right(localData);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, PaginationVacancy>> getRecommendOrPopularVacanciesUser(
      int page) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteData =
            await remoteDataSource.getRecommendOrPopularVacanciesUser(page);
        localDataSource.cacheRecommendOrPopularVacanciesUser(remoteData);
        return Right(remoteData);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localData =
            await localDataSource.getRecommendOrPopularVacanciesUser();
        return Right(localData);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<Vacancy>>> getFavoriteVacanciesUser() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await remoteDataSource.getFavoriteVacanciesUser();
        return Right(remoteData);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localData = await localDataSource.getFavoriteVacanciesUser();
        return Right(localData);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<Feature>>> getSpheres() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await remoteDataSource.getSpheres();
        return Right(remoteData);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localData = await localDataSource.getSpheres();
        return Right(localData);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<Invite>>> getInvitesUser() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await remoteDataSource.getInvites();
        return Right(remoteData);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localData = await localDataSource.getInvites();
        return Right(localData);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<AllChats>>> getAllChats() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await remoteDataSource.getAllChats();
        return Right(remoteData);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localData = await localDataSource.getAllChats();
        return Right(localData);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
