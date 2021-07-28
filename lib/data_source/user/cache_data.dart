import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sap_work/models/feature/feature.dart';
import 'package:sap_work/models/chat/chat.dart';
import 'package:sap_work/models/feedback_resume/feedback.dart';
import 'package:sap_work/models/invite/invite.dart';
import 'package:sap_work/models/profile_user/profile.dart';
import 'package:sap_work/models/resume/resume.dart';
import 'package:sap_work/models/vacancy/vacancy.dart';
import 'package:sap_work/repository/exceptions_failures.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class UserCacheDataBase {
  Future<TypeProfileUser> getProfileUser();

  Future<void> cacheProfileUser(TypeProfileUser profile);

  Future<Resume> getResumeUser();

  Future<void> cacheResumeUser(Resume resume);

  Future<Vacancy> getVacancyUser();

  Future<void> cacheVacancyUser(Vacancy vacancy);

  Future<PaginationVacancy> getRecommendOrPopularVacanciesUser();
  Future<void> cacheRecommendOrPopularVacanciesUser(PaginationVacancy vacancy);


  Future<List<Feature>> getCategories();
  Future<List<Feature>> getSpheres();
  Future<List<Invite>> getInvites();

  Future<List<Resume>> getResumesUser();

  Future<List<FeedbackResume>> getFeedbacksResume();

  Future<List<Chat>> getChats();
  Future<List<AllChats>> getAllChats();

  Future<List<Vacancy>> getFavoriteVacanciesUser();

  Future<File> cacheObject(String object, String path);

  Future<FileSystemEntity> deleteObject(String path);
}

class UserCacheData implements UserCacheDataBase {
  final SharedPreferences sharedPreferences;

  UserCacheData({required this.sharedPreferences});

  @override
  Future<TypeProfileUser> getProfileUser() {
    final jsonString = sharedPreferences.getString(CACHED_PROFILE_USER);
    if (jsonString != null) {
      return Future.value(TypeProfileUser.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheProfileUser(TypeProfileUser profile) {
    return sharedPreferences.setString(
      CACHED_PROFILE_USER,
      json.encode(profile.toJson()),
    );
  }

  @override
  Future<Resume> getResumeUser() {
    final jsonString = sharedPreferences.getString(CACHED_RESUME_USER);
    if (jsonString != null) {
      return Future.value(Resume.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheResumeUser(Resume resume) {
    return sharedPreferences.setString(
        CACHED_RESUME_USER, json.encode(resume.toJson()));
  }

  @override
  Future<Vacancy> getVacancyUser() {
    final jsonString = sharedPreferences.getString(CACHED_VACANCY_USER);
    if (jsonString != null) {
      return Future.value(Vacancy.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheVacancyUser(Vacancy vacancy) {
    return sharedPreferences.setString(
        CACHED_VACANCY_USER, json.encode(vacancy.toJson()));
  }

  @override
  Future<PaginationVacancy> getRecommendOrPopularVacanciesUser() async {
    final jsonString = sharedPreferences.getString(CACHED_VACANCIES_USER);
    if (jsonString != null) {
      return Future.value(PaginationVacancy.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheRecommendOrPopularVacanciesUser(PaginationVacancy vacancy) {
    return sharedPreferences.setString(
        CACHED_VACANCIES_USER, json.encode(vacancy.toJson()));
  }

  @override
  Future<List<FeedbackResume>> getFeedbacksResume() async {
    var cacheDir = await getApplicationDocumentsDirectory();
    final file = File(cacheDir.path + "/" + CACHED_FEEDBACKS_RESUME + ".json");
    if (file.existsSync()) {
      var jsonData = file.readAsStringSync();
      return Future.value((json.decode(jsonData) as List)
          .map((item) => FeedbackResume.fromJson(item))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<List<AllChats>> getAllChats() async{
    var cacheDir = await getApplicationDocumentsDirectory();
    final file = File(cacheDir.path + "/" + CACHED_ALL_CHATS_USER + ".json");
    if (file.existsSync()) {
      var jsonData = file.readAsStringSync();
      return Future.value((json.decode(jsonData) as List)
          .map((item) => AllChats.fromJson(item))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<List<Chat>> getChats() async {
    var cacheDir = await getApplicationDocumentsDirectory();
    final file = File(cacheDir.path + "/" + CACHED_CHATS_USER + ".json");
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
  Future<List<Feature>> getCategories() async {
    var cacheDir = await getApplicationDocumentsDirectory();
    final file = File(cacheDir.path + "/" + CACHED_CATEGORIES + ".json");
    if (file.existsSync()) {
      var jsonData = file.readAsStringSync();
      return Future.value((json.decode(jsonData) as List)
          .map((item) => Feature.fromJson(item))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<List<Feature>> getSpheres() async{
    var cacheDir = await getApplicationDocumentsDirectory();
    final file = File(cacheDir.path + "/" + CACHED_SPHERES + ".json");
    if (file.existsSync()) {
      var jsonData = file.readAsStringSync();
      return Future.value((json.decode(jsonData) as List)
          .map((item) => Feature.fromJson(item))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<List<Resume>> getResumesUser() async {
    var cacheDir = await getApplicationDocumentsDirectory();
    final file = File(cacheDir.path + "/" + CACHED_RESUMES_USER + ".json");
    if (file.existsSync()) {
      var jsonData = file.readAsStringSync();
      return Future.value((json.decode(jsonData) as List)
          .map((item) => Resume.fromJson(item))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<List<Vacancy>> getFavoriteVacanciesUser() async {
    var cacheDir = await getApplicationDocumentsDirectory();
    final file =
        File(cacheDir.path + "/" + CACHED_FAVORITES_VACANCIES_USER + ".json");
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
  Future<List<Invite>> getInvites() async{
    var cacheDir = await getApplicationDocumentsDirectory();
    final file =
    File(cacheDir.path + "/" + CACHED_INVITES_VACANCIES_USER + ".json");
    if (file.existsSync()) {
      var jsonData = file.readAsStringSync();
      return Future.value((json.decode(jsonData) as List)
          .map((item) => Invite.fromJson(item))
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
}
