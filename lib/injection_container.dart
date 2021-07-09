import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:sap_work/data_source/company/cache_data.dart';
import 'package:sap_work/data_source/company/remote_data.dart';
import 'package:sap_work/repository/company/company_repository.dart';
import 'package:sap_work/repository/company/implementation/company_repository.dart';
import 'package:sap_work/repository/company/usercases/usercases.dart';
import 'package:sap_work/repository/network_info.dart';
import 'package:sap_work/repository/user/implementation/user_repository.dart';
import 'package:sap_work/repository/user/user_repository.dart';
import 'package:sap_work/repository/user/usercases/usercases.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import 'data_source/company/local_data.dart';
import 'data_source/user/cache_data.dart';
import 'data_source/user/local_data.dart';
import 'data_source/user/remote_data.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => GetProfileCompany(sl()));
  sl.registerLazySingleton(() => GetVacanciesCompany(sl()));
  sl.registerLazySingleton(() => GetLocalVacanciesCompany(sl()));
  sl.registerLazySingleton(() => GetLocalVacancyCompany(sl()));
  sl.registerLazySingleton(() => GetVacancyCompany(sl()));
  sl.registerLazySingleton(() => GetCategoriesCompany(sl()));
  sl.registerLazySingleton(() => GetFeedbacksVacancy(sl()));
  sl.registerLazySingleton(() => GetStatusCompany(sl()));
  sl.registerLazySingleton(() => GetChatsCompany(sl()));
  sl.registerLazySingleton(() => GetProfileUser(sl()));
  sl.registerLazySingleton(() => GetContactsUser(sl()));
  sl.registerLazySingleton(() => GetLocalResumes(sl()));
  sl.registerLazySingleton(() => GetLocalResume(sl()));
  sl.registerLazySingleton(() => GetCategoriesUser(sl()));
  sl.registerLazySingleton(() => GetResumesUser(sl()));
  sl.registerLazySingleton(() => GetResumeUser(sl()));
  sl.registerLazySingleton<CompanyRepositoryBase>(
    () => CompanyRepository(
      localDataSource: sl(),
      networkInfo: sl(),
      remoteDataSource: sl(),
    ),
  );
  sl.registerLazySingleton<UserRepositoryBase>(
    () => UserRepository(
      localDataSource: sl(),
      networkInfo: sl(),
      remoteDataSource: sl(),
    ),
  );

  // Data sources
  sl.registerLazySingleton<CompanyRemoteDataBase>(
      () => CompanyRemoteData(sl(), client: sl()));

  sl.registerLazySingleton<CompanyCacheDataBase>(
      () => CompanyCacheData(sharedPreferences: sl()));

  sl.registerLazySingleton<CompanyLocalDataBase>(
      () => CompanyLocalData(sharedPreferences: sl()));

  sl.registerLazySingleton<UserRemoteDataBase>(
      () => UserRemoteData(sl(), client: sl()));

  sl.registerLazySingleton<UserCacheDataBase>(
      () => UserCacheData(sharedPreferences: sl()));

  sl.registerLazySingleton<UserLocalDataBase>(
      () => UserLocalData(sharedPreferences: sl()));

  //! Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
