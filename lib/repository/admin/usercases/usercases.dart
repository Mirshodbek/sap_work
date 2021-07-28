import 'package:either_dart/either.dart';
import 'package:sap_work/models/feature/feature.dart';
import 'package:sap_work/repository/admin/admin_repository.dart';

import '../../exceptions_failures.dart';
import '../../usercases.dart';

class GetCategoriesAdmin implements UseCase<List<Feature>, NoParams> {
  final AdminRepositoryBase repository;

  GetCategoriesAdmin(this.repository);

  @override
  Future<Either<Failure, List<Feature>>> call(NoParams params) async {
    return await repository.getCategories();
  }
}

class GetSpheresAdmin implements UseCase<List<Feature>, NoParams> {
  final AdminRepositoryBase repository;

  GetSpheresAdmin(this.repository);

  @override
  Future<Either<Failure, List<Feature>>> call(NoParams params) async {
    return await repository.getSpheres();
  }
}
