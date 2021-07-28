import 'package:equatable/equatable.dart';
import 'package:either_dart/either.dart';
import 'exceptions_failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
