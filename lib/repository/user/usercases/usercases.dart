import 'package:either_dart/src/either.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/models/profile_user/profile.dart';

import '../user_repository.dart';

class GetProfileUser implements UseCase<TypeProfileUser, NoParams> {
  final UserRepositoryBase repository;

  GetProfileUser(this.repository);

  @override
  Future<Either<Failure, TypeProfileUser>> call(NoParams params) async {
    return await repository.getProfileUser();
  }
}
