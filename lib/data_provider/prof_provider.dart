import 'dart:convert';

import 'package:sap_work/models/feedback/feedback.dart';
import 'package:sap_work/models/profile/profile.dart';
import 'package:http/http.dart' as http;
import 'package:sap_work/models/resume/resume.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfProvider {
  static const String _baseApi = 'http://194.58.98.181:16498';
  static const String _profile = '/api/profile';
  static const String _feedback = '/api/resume/feedbacks?resume=';
  static const String _resumes = '/api/resumes';
  static const String _resume = '/api/resume?id=';
  static const String _createResume = '/api/resume/create';

  ProfProvider();

  Future<http.Response> createResume(String body) async {
    final result = await _callPostApi(_createResume, "tokenHunter", {
      "body": body,
      "grade": "grade",
      "stage": "stage",
      "abilities":"abilities",
    });
    return result;
  }

  Future<List<Resume>> resumesHunter() async {
    final result = await _callPostApi(_resumes, "tokenHunter", {});
    return (json.decode(result.body) as List)
        .map((e) => Resume.fromJson(e))
        .toList();
  }

  Future<Resume> resumeHunter(int id) async {
    final result =
        await _callPostApi(_resume + id.toString(), "tokenHunter", {});
    if (result.statusCode == 200) {
      return Resume.fromJson(json.decode(result.body));
    }
    return Resume(id, 2, "grade", "stage", "Введите название резюме", 1,
        "updated_at", "created_at");
  }

  Future<List<FeedbackResume>> feedbackHunter({int id = 1}) async {
    final result =
        await _callPostApi(_feedback + id.toString(), "tokenHunter", {});
    if (result.statusCode == 200) {
      return (json.decode(result.body) as List)
          .map((e) => FeedbackResume.fromJson(e))
          .toList();
    }
    return [];
  }

  Future<ProfileHunter> profileHunter() async {
    final result = await _callPostApi(_profile, "tokenHunter", {});
    return ProfileHunter.fromJson(json.decode(result.body));
  }

  Future<ProfileEmployer> profileEmployer() async {
    final result = await _callPostApi(_profile, "tokenEmployer", {});
    return ProfileEmployer.fromJson(json.decode(result.body));
  }

  Future<http.Response> _callPostApi(
      String endPoint, String token, Map<String, dynamic> params) async {
    final prefs = await SharedPreferences.getInstance();
    final uri = Uri.parse(_baseApi + endPoint);
    final response = await http.post(uri,
        headers: {
          "Accept": "application/json",
          "Authorization": "Bearer ${prefs.getString(token)}"
        },
        body: params);
    return response;
  }
}
