import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/screens/hunter/hunter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data_source.dart';

class VacProvider {
  static const String _baseApi = 'http://194.58.98.181:16498';
  static const String _searchVacancies = '/api/search';
  static const String _favoriteVacancies = '/api/favourites';
  static const String _postFeedback = '/api/feedback';

  Future<List<Vacancy>> favoriteVacancies() async {
    final result = await _callPostApi(_favoriteVacancies, {});
    return (json.decode(result.body) as List)
        .map((e) => Vacancy.fromJson(e))
        .toList();
  }

  Future<http.Response> favoriteVacancy(String endPoint, int id) async {
    final result = await _callPostApi(
        _favoriteVacancies + endPoint + id.toString(),  {});
    return result;
  }

  Future<http.Response> postFeedback(int resumeId, int vacancyId) async {
    final result = await _callPostApi(
        "$_postFeedback?resume=$resumeId&vacancy=$vacancyId",
         {});

    return result;
  }

  Future<List<Vacancy>> getVacancy(
      {String grade = '',
      String stage = '',
      String city = '',
      String lang = '',
      String schedule = '',
      String category = '',
      String type = '',
      String minsalary = '',
      String maxsalary = ''}) async {
    final response = await _callPostApi(
      _searchVacancies,
      {
        "garde": grade,
        "stage": stage,
        "city": city,
        "schedule": schedule,
        // "category": category,
        "type": type,
        "minsalary": minsalary,
        "maxsalary": maxsalary
      },
    );
    return (json.decode(response.body) as List)
        .map((e) => Vacancy.fromJson(e))
        .toList();
  }

  Future<http.Response> _callPostApi(
      String endpoint,  Map<String, dynamic> params) async {
    final prefs = await SharedPreferences.getInstance();
    final uri = Uri.parse(_baseApi + endpoint);
    final response = await http.post(uri,
        headers: {
          "Accept": "application/json",
          "Authorization": "Bearer ${prefs.getString(USER_TOKEN)}"
        },
        body: params);

    return response;
  }
}
