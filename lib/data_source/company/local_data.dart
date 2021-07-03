import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import '../data_source.dart';

abstract class CompanyLocalDataBase {
  Future<List<LocalVacancyData>> getLocalVacanciesCompany();

  Future<void> cacheLocalVacanciesCompany(List<LocalVacancyData> vacancies);

  Future<LocalVacancyData> getVacancyCompany();

  Future<void> cacheVacancyCompany(LocalVacancyData vacancy);
}

class CompanyLocalData implements CompanyLocalDataBase {
  final SharedPreferences sharedPreferences;

  CompanyLocalData({required this.sharedPreferences});

  @override
  Future<List<LocalVacancyData>> getLocalVacanciesCompany() {
    final jsonString =
        sharedPreferences.getString(LOCAL_VACANCIES_COMPANY);
    if (jsonString != null) {
      return Future.value(LocalVacancyData.decode(jsonString));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheLocalVacanciesCompany(List<LocalVacancyData> vacancies) {
    return sharedPreferences.setString(
        LOCAL_VACANCIES_COMPANY, LocalVacancyData.encode(vacancies));
  }

  @override
  Future<LocalVacancyData> getVacancyCompany() {
    final jsonString = sharedPreferences.getString(LOCAL_VACANCY_COMPANY);
    if (jsonString != null) {
      return Future.value(LocalVacancyData.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheVacancyCompany(LocalVacancyData vacancy) {
    return sharedPreferences.setString(
        LOCAL_VACANCY_COMPANY, json.encode(vacancy));
  }
}
