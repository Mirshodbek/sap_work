import 'dart:convert';

import 'package:sap_work/models/local_resume/resume.dart';
import 'package:sap_work/repository/exceptions_failures.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class UserLocalDataBase {
  Future<List<LocalResumeData>> getLocalResumes();

  Future<void> localResumes(List<LocalResumeData> resumes);

  Future<LocalResumeData> getLocalResume();

  Future<void> localResume(LocalResumeData vacancy);
}

class UserLocalData implements UserLocalDataBase {
  final SharedPreferences sharedPreferences;

  UserLocalData({required this.sharedPreferences});

  @override
  Future<List<LocalResumeData>> getLocalResumes() {
    final jsonString = sharedPreferences.getString(LOCAL_RESUMES_USER);
    if (jsonString != null) {
      return Future.value(LocalResumeData.decode(jsonString));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> localResumes(List<LocalResumeData> resumes) {
    return sharedPreferences.setString(
        LOCAL_RESUMES_USER, LocalResumeData.encode(resumes));
  }

  @override
  Future<LocalResumeData> getLocalResume() {
    final jsonString = sharedPreferences.getString(LOCAL_RESUME_USER);
    if (jsonString != null) {
      return Future.value(LocalResumeData.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> localResume(LocalResumeData vacancy) {
    return sharedPreferences.setString(LOCAL_RESUME_USER, json.encode(vacancy));
  }
}
