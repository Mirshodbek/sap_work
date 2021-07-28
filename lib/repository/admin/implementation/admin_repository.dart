import 'package:either_dart/either.dart';
import 'package:sap_work/data_source/admin/cache_data.dart';
import 'package:sap_work/data_source/admin/remote_data.dart';
import 'package:sap_work/models/feature/feature.dart';
import 'package:sap_work/repository/admin/admin_repository.dart';
import 'package:sap_work/repository/exceptions_failures.dart';

import '../../network_info.dart';

class AdminRepository implements AdminRepositoryBase {
  final AdminRemoteDataBase remoteDataSource;
  final AdminCacheDataBase localDataSource;
  final NetworkInfo networkInfo;

  AdminRepository({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

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
}
