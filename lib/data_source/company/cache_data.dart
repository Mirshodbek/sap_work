import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data_source.dart';

abstract class CompanyCacheDataBase {
  Future<TypeProfileCompany> getProfileCompany();

  Future<void> cacheProfileCompany(TypeProfileCompany profile);

  Future<List<Vacancy>> getVacanciesCompany();

  Future<List<Category>> getCategories();

  Future<List<FeedbackVacancy>> getFeedbacksVacancy();

  Future<File> cacheObject(String object, String path);

  Future<FileSystemEntity> deleteObject(String path);

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
  Future<List<Vacancy>> getVacanciesCompany() async {
    var cacheDir = await getApplicationDocumentsDirectory();
    final file = File(cacheDir.path + "/" + CACHED_VACANCIES_COMPANY);
    if (await file.exists()) {
      var jsonData = file.readAsStringSync();
      return Future.value((json.decode(jsonData) as List)
          .map((item) => Vacancy.fromJson(item))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<List<Category>> getCategories() async {
    var cacheDir = await getApplicationDocumentsDirectory();
    final file = File(cacheDir.path + "/" + CACHED_CATEGORIES);
    if (await file.exists()) {
      var jsonData = file.readAsStringSync();
      return Future.value((json.decode(jsonData) as List)
          .map((item) => Category.fromJson(item))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<List<FeedbackVacancy>> getFeedbacksVacancy() async {
    var cacheDir = await getApplicationDocumentsDirectory();
    final file = File(cacheDir.path + "/" + CACHED_FEEDBACKS_VACANCY);
    if ( file.existsSync()) {
      var jsonData = file.readAsStringSync();
      return Future.value((json.decode(jsonData) as List)
          .map((item) => FeedbackVacancy.fromJson(item))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<File> cacheObject(String object, String path) async {
    var cacheDir = await getApplicationDocumentsDirectory();
    File file = File(cacheDir.path + "/" + path);
    return await file.writeAsString(object, flush: true, mode: FileMode.write);
  }

  @override
  Future<FileSystemEntity> deleteObject(String path) async {
    var cacheDir = await getApplicationDocumentsDirectory();
    if (await File(cacheDir.path + "/" + path).existsSync()) {
      return await cacheDir.delete(recursive: true);
    } else {
      return File(cacheDir.path + "/" + path);
    }
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
