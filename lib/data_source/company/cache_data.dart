import 'dart:convert';

import 'package:sap_work/models/category/category.dart';
import 'package:sap_work/models/profile_company/profile.dart';
import 'package:sap_work/models/vacancy/vacancy.dart';
import 'package:sap_work/models/vacancy_company/vacancy.dart';
import 'package:sap_work/repository/exceptions_failures.dart';
import 'package:shared_preferences/shared_preferences.dart';

const CACHED_PROFILE_COMPANY = 'CACHED_PROFILE_COMPANY';
const CACHED_VACANCIES_COMPANY = 'CACHED_VACANCIES_COMPANY';
const CACHED_CATEGORIES = 'CACHED_CATEGORIES';
const CACHED_VACANCY_COMPANY = 'CACHED_VACANCY_COMPANY';

abstract class CompanyCacheDataBase {
  Future<TypeProfileCompany> getProfileCompany();

  Future<void> cacheProfileCompany(TypeProfileCompany profile);

  Future<List<VacancyCompany>> getVacanciesCompany();

  Future<void> cacheVacanciesCompany(List<VacancyCompany> vacancies);

  Future<List<Category>> getCategories();

  Future<void> cacheCategories(List<Category> categories);

  Future<Vacancy> getVacancyCompany();

  Future<void> cacheVacancyCompany(Vacancy vacancy);
}

class CompanyCacheData implements CompanyCacheDataBase {
  final SharedPreferences sharedPreferences;

  CompanyCacheData({required this.sharedPreferences});

  @override
  Future<TypeProfileCompany> getProfileCompany() {
    final jsonString = sharedPreferences.getString(CACHED_PROFILE_COMPANY);
    if (jsonString != null) {
      return Future.value(TypeProfileCompany.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheProfileCompany(TypeProfileCompany profile) {
    return sharedPreferences.setString(
      CACHED_PROFILE_COMPANY,
      json.encode(profile.toJson()),
    );
  }

  @override
  Future<List<VacancyCompany>> getVacanciesCompany() {
    final jsonString = sharedPreferences.getString(CACHED_VACANCIES_COMPANY);
    if (jsonString != null) {
      return Future.value(VacancyCompany.decode(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheVacanciesCompany(List<VacancyCompany> vacancies) {
    return sharedPreferences.setString(
        CACHED_VACANCIES_COMPANY, VacancyCompany.encode(vacancies));
  }

  @override
  Future<List<Category>> getCategories() {
    final jsonString = sharedPreferences.getString(CACHED_CATEGORIES);
    if (jsonString != null) {
      return Future.value(Category.decode(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheCategories(List<Category> categories) {
    return sharedPreferences.setString(
        CACHED_CATEGORIES, Category.encode(categories));
  }


  @override
  Future<Vacancy> getVacancyCompany() {
    final jsonString = sharedPreferences.getString(CACHED_VACANCY_COMPANY);
    if (jsonString != null) {
      return Future.value(Vacancy.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheVacancyCompany(Vacancy vacancy) {
    return sharedPreferences.setString(
        CACHED_VACANCY_COMPANY, json.encode(vacancy.toJson()));
  }
}
