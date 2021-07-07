import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sap_work/models/chat/chat.dart';
import 'package:sap_work/models/tariff/tariff.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data_source.dart';

abstract class CompanyCacheDataBase {
  Future<TypeProfileCompany> getProfileCompany();

  Future<void> cacheProfileCompany(TypeProfileCompany profile);

  Future<List<Vacancy>> getVacanciesCompany();

  Future<List<Category>> getCategories();

  Future<List<FeedbackVacancy>> getFeedbacksVacancy();
  Future<List<Chat>> getChats();

  Future<File> cacheObject(String object, String path);

  Future<FileSystemEntity> deleteObject(String path);

  Future<Vacancy> getVacancyCompany();

  Future<void> cacheVacancyCompany(Vacancy vacancy);

  Future<Tariffs> getStatusCompany();

  Future<void> cacheStatusCompany(Tariffs tariffs);
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
    final file = File(cacheDir.path + "/" + CACHED_VACANCIES_COMPANY + ".json");
    if (file.existsSync()) {
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
    final file = File(cacheDir.path + "/" + CACHED_CATEGORIES + ".json");
    if (file.existsSync()) {
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
    final file = File(cacheDir.path + "/" + CACHED_FEEDBACKS_VACANCY + ".json");
    if (file.existsSync()) {
      var jsonData = file.readAsStringSync();
      return Future.value((json.decode(jsonData) as List)
          .map((item) => FeedbackVacancy.fromJson(item))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<List<Chat>> getChats() async{
    var cacheDir = await getApplicationDocumentsDirectory();
    final file = File(cacheDir.path + "/" + CACHED_CHATS_COMPANY + ".json");
    if (file.existsSync()) {
      var jsonData = file.readAsStringSync();
      return Future.value((json.decode(jsonData) as List)
          .map((item) => Chat.fromJson(item))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<File> cacheObject(String object, String path) async {
    var cacheDir = await getApplicationDocumentsDirectory();
    File file = File(cacheDir.path + "/" + path + ".json");
    return await Future.delayed(Duration(milliseconds: 500), () async {
      return await file.writeAsString(object,
          flush: true, mode: FileMode.write);
    });
  }

  @override
  Future<FileSystemEntity> deleteObject(String path) async {
    var cacheDir = await getApplicationDocumentsDirectory();
    if (File(cacheDir.path + "/" + path + ".json").existsSync()) {
      return await Future.delayed(Duration(milliseconds: 500), () async {
        return await cacheDir.delete(recursive: true);
      });
    } else {
      return File(cacheDir.path + "/" + path + ".json");
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

  @override
  Future<Tariffs> getStatusCompany() {
    final string = sharedPreferences.getString(CACHED_STATUS_COMPANY);
    if (string != null) {
      return Future.value(Tariffs.fromJson(json.decode(string)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheStatusCompany(Tariffs tariffs) {
    print( json.encode(tariffs));
    return sharedPreferences.setString(
        CACHED_STATUS_COMPANY, json.encode(tariffs));
  }
}
