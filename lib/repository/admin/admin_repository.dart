import 'package:either_dart/either.dart';
import 'package:sap_work/models/feature/feature.dart';

import '../exceptions_failures.dart';

abstract class AdminRepositoryBase {


  Future<Either<Failure, List<Feature>>> getCategories();
  Future<Either<Failure, List<Feature>>> getSpheres();
}
