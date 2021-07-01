import 'dart:convert';

import 'package:sap_work/models/vacancy_company/vacancy.dart';
import 'package:sap_work/repository/exceptions_failures.dart';
import 'package:shared_preferences/shared_preferences.dart';

const CACHED_VACANCIES_NAME = 'CACHED_VACANCIES_NAME';
const CACHED_LOCAL_VACANCIES_COMPANY = 'CACHED_LOCAL_VACANCIES_COMPANY';

abstract class CompanyLocalDataBase {
  Future<List<LocalVacancyData>> getListVacanciesNameCompany();

  Future<void> cacheListVacanciesNameCompany(List<LocalVacancyData> vacancies);

  Future<LocalVacancyData> getVacancyNameCompany();

  Future<void> cacheVacancyNameCompany(LocalVacancyData vacancy);
}

class CompanyLocalData implements CompanyLocalDataBase {
  final SharedPreferences sharedPreferences;

  CompanyLocalData({required this.sharedPreferences});

  @override
  Future<List<LocalVacancyData>> getListVacanciesNameCompany() {
    final jsonString =
        sharedPreferences.getString(CACHED_LOCAL_VACANCIES_COMPANY);
    if (jsonString != null) {
      return Future.value(LocalVacancyData.decode(jsonString));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheListVacanciesNameCompany(List<LocalVacancyData> vacancies) {
    return sharedPreferences.setString(
        CACHED_LOCAL_VACANCIES_COMPANY, LocalVacancyData.encode(vacancies));
  }

  @override
  Future<LocalVacancyData> getVacancyNameCompany() {
    final jsonString = sharedPreferences.getString(CACHED_VACANCIES_NAME);
    if (jsonString != null) {
      return Future.value(LocalVacancyData.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheVacancyNameCompany(LocalVacancyData vacancy) {
    return sharedPreferences.setString(
        CACHED_VACANCIES_NAME, json.encode(vacancy));
  }
}
