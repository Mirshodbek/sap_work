import 'dart:convert';

import 'package:sap_work/models/local_vacancy_data/vacancy.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data_source.dart';

abstract class CompanyLocalDataBase {
  Future<List<LocalVacancyData>> getLocalVacanciesCompany();

  Future<void> localVacanciesCompany(List<LocalVacancyData> vacancies);

  Future<LocalVacancyData> getLocalVacancyCompany();

  Future<void> localVacancyCompany(LocalVacancyData vacancy);
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
  Future<void> localVacanciesCompany(List<LocalVacancyData> vacancies) {
    return sharedPreferences.setString(
        LOCAL_VACANCIES_COMPANY, LocalVacancyData.encode(vacancies));
  }

  @override
  Future<LocalVacancyData> getLocalVacancyCompany() {
    final jsonString = sharedPreferences.getString(LOCAL_VACANCY_COMPANY);
    if (jsonString != null) {
      return Future.value(LocalVacancyData.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> localVacancyCompany(LocalVacancyData vacancy) {
    return sharedPreferences.setString(
        LOCAL_VACANCY_COMPANY, json.encode(vacancy));
  }
}
