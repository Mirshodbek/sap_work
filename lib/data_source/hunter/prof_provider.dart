import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sap_work/models/profile_user/profile.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/screens/hunter/hunter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data_source.dart';

class ProfProvider {
  static const String _baseApi = 'http://194.58.98.181:16498';
  static const String _profile = '/api/profile';
  static const String _resumes = '/api/resumes';
  static const String _resume = '/api/resume?id=';
  static const String _activatedDeactivatedResume = '/api/resume/';
  static const String _createResume = '/api/resume/create';
  static const String _addFileToResume = '/api/resume/addFiles?resume=';
  static const String _editResume = '/api/resume/change?id=';
  static const String _addStageResume = '/api/resume/stage/add?resume=';
  static const String _editStageResume = '/api/resume/stage/change?id=';
  static const String _deleteStageResume = '/api/resume/stage/delete?id=';
  static const String _addGradeResume = '/api/resume/grade/add?resume=';
  static const String _editGradeResume = '/api/resume/grade/change?id=';
  static const String _deleteGradeResume = '/api/resume/grade/delete?id=';

  ProfProvider();

  Future<http.Response> activatedDeactivatedResume(
      String endPoint, int id) async {
    final result = await _callPostApi(
        _activatedDeactivatedResume + endPoint + "?id=" + id.toString(), "");
    return result;
  }

  Future<Grade> addGradeResume(
      String universityName, String grade, String period, int resumeId) async {
    final result = await _callPostApi(
      _addGradeResume + resumeId.toString(),
      jsonEncode({
        "grade": [
          {"university_name": universityName, "grade": grade, "period": period}
        ],
      }),
    );
    return Grade.fromJson(json.decode(result.body));
  }

  Future<Grade> editGradeResume(
      String universityName, String grade, String period, int gradeId) async {
    final result = await _callPostApi(
      _editGradeResume + gradeId.toString(),
      jsonEncode({
        "university_name": universityName,
        "grade": grade,
        "period": period
      }),
    );
    return Grade.fromJson(json.decode(result.body));
  }

  Future<http.Response> deleteGradeResume(int gradeId) async {
    final result = await _callPostApi(
      _deleteGradeResume + gradeId.toString(),
      "",
    );
    return result;
  }

  Future<Stage> addStageResume(String companyName, String position,
      String description, String period, int resumeId) async {
    final result = await _callPostApi(
      _addStageResume + resumeId.toString(),
      jsonEncode({
        "stage": [
          {
            "company_name": companyName,
            "position": position,
            "description": description,
            "period": period
          }
        ],
      }),
    );
    return Stage.fromJson(json.decode(result.body));
  }

  Future<Stage> editStageResume(String companyName, String position,
      String description, String period, int stageId) async {
    final result = await _callPostApi(
      _editStageResume + stageId.toString(),
      jsonEncode({
        "company_name": companyName,
        "position": position,
        "description": description,
        "period": period
      }),
    );
    return Stage.fromJson(json.decode(result.body));
  }

  Future<http.Response> deleteStageResume(int stageId) async {
    final result = await _callPostApi(
      _deleteStageResume + stageId.toString(),
      "",
    );
    return result;
  }

  Future<http.Response> createResume({
    required String name,
    required List<Map<String, dynamic>> stages,
    required List<Map<String, dynamic>> grades,
    required String email,
    required String phone,
  }) async {

    final map = jsonEncode({
      "name": name,
      "body": "body",
      "abilities": "abilities",
      "stage": stages,
      "grade": grades,
      "email": email,
      "phone": phone
    });
    final result = await _callPostApi(_createResume, map);
    print(result.statusCode);
    return result;
  }

  Future<http.Response> editResume(int id, String name) async {
    final result = await _callPostApi(
        _editResume + id.toString(), jsonEncode({"name": name}));
    print(result.statusCode);
    return result;
  }

  Future<List<Resume>> getResumesHunter() async {
    final result = await _callPostApi(_resumes, "");
    return (json.decode(result.body) as List)
        .map((e) => Resume.fromJson(e))
        .toList();
  }

  Future<Resume> getResumeHunter(int? id) async {
    final result = await _callPostApi(_resume + id.toString(), "");
    return Resume.fromJson(json.decode(result.body));
  }

  Future<TypeProfileUser> getProfileHunter() async {
    final result = await _callPostApi(_profile, "");
    return TypeProfileUser.fromJson(json.decode(result.body));
  }

  Future<String> addFileToResume(int id, String filename) async {
    final prefs = await SharedPreferences.getInstance();
    final uri = Uri.parse(_baseApi + _addFileToResume + id.toString());
    var request = http.MultipartRequest('POST', uri);
    request.headers.addAll({
      "Accept": "application/json",
      "Authorization": "Bearer ${prefs.getString(USER_TOKEN)}"
    });
    request.files.add(await http.MultipartFile.fromPath('file_name', filename));
    var res = await request.send();
    return res.reasonPhrase!;
  }

  Future<http.Response> _callPostApi(String endPoint, String params) async {
    final prefs = await SharedPreferences.getInstance();
    final uri = Uri.parse(_baseApi + endPoint);
    final response = await http
        .post(uri,
            headers: {
              "Accept": "application/json",
              "Content-type": "application/json",
              "Authorization": "Bearer ${prefs.getString(USER_TOKEN)}"
            },
            body: params)
        .catchError((e) {
      print(e);
    });
    return response;
  }
}
