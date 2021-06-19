import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sap_work/models/vacancy/vacancy.dart';
import 'package:sap_work/repository/implementation/local_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RestProvider {
  static const String _baseApi = 'http://194.58.98.181:16498';
  static const String _searchVacancies = '/api/search';

  Future<List<Vacancy>> getVacancy() async {
    final response = await _callPostApi(
      _searchVacancies,
      {},
    );
    return (json.decode(response.body) as List)
        .map((e) => Vacancy.fromJson(e))
        .toList();
  }

  Future<http.Response> _callPostApi(
      String endpoint, Map<String, dynamic> params) async {
    final prefs = await SharedPreferences.getInstance();
    final uri = Uri.parse(_baseApi + endpoint);
    final response = await http.post(uri,
        headers: {
          "Accept": "application/json",
          "Authorization": "Bearer ${prefs.getString("tokenHunter")}"
        },
        body: params);
    return response;
  }
}
