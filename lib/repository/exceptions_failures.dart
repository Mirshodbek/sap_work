import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

// General failures
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}



class ServerException implements Exception {}

class CacheException implements Exception {}

const String SERVER_FAILURE_MESSAGE = 'Ошибка Сервер';
const String CACHE_FAILURE_MESSAGE = 'Ошибка Кеш';