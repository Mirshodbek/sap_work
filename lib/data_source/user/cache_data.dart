import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sap_work/models/category/category.dart';
import 'package:sap_work/models/contact_user/contact.dart';
import 'package:sap_work/models/profile_user/profile.dart';
import 'package:sap_work/models/resume/resume.dart';
import 'package:sap_work/repository/exceptions_failures.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class UserCacheDataBase {
  Future<TypeProfileUser> getProfileUser();

  Future<void> cacheProfileUser(TypeProfileUser profile);


  Future<Resume> getResumeUser();

  Future<void> cacheResumeUser(Resume resume);

  Future<List<ContactUser>> getContactsUser();

  Future<List<Category>> getCategories();
  Future<List<Resume>> getResumesUser();


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
  Future<List<ContactUser>> getContactsUser() async {
    var cacheDir = await getApplicationDocumentsDirectory();
    final file = File(cacheDir.path + "/" + CACHED_CONTACTS_USER + ".json");
    if (file.existsSync()) {
      var jsonData = file.readAsStringSync();
      return Future.value((json.decode(jsonData) as List)
          .map((item) => ContactUser.fromJson(item))
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
