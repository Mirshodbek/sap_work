

import 'package:either_dart/either.dart';
import 'package:sap_work/models/profile_user/profile.dart';

import '../exceptions_failures.dart';

abstract class UserRepositoryBase{
  Future<Either<Failure, TypeProfileUser>> getProfileUser();

}