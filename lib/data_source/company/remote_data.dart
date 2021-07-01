import 'dart:convert';

import 'package:sap_work/models/category/category.dart';
import 'package:sap_work/models/profile_company/profile.dart';
import 'package:http/http.dart' as http;
import 'package:sap_work/models/vacancy/vacancy.dart';
import 'package:sap_work/models/vacancy_company/vacancy.dart';
import 'package:sap_work/repository/exceptions_failures.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class CompanyRemoteDataBase {
  Future<TypeProfileCompany> getProfileCompany();

  Future<List<VacancyCompany>> getVacanciesCompany();

  Future<http.Response> postVacancyCompany(
      {required String name,
      required String city,
      required String grade,
      required String stage,
      required String schedule,
      required int category,
      required String body,
      required String minsalary,
      required String maxsalary,
      required String type,
      required String abilities});

  Future<Vacancy> getVacancyCompany(int id);

  Future<List<Category>> getCategories();
}

class CompanyRemoteData implements CompanyRemoteDataBase {
  static const String _baseApi = 'http://194.58.98.181:16498';
  static const String _profile = '/api/profile';
  static const String _vacancies = '/api/vacancies';
  static const String _categories = '/api/categories';
  static const String _createVacancy = '/api/vacancy/create';
  static const String _vacancy = '/api/vacancy?vacancy=';
  static const String _updateAvatar = '/api/updateAvatar';

  final http.Client client;

  CompanyRemoteData({required this.client});

  @override
  Future<TypeProfileCompany> getProfileCompany() async {
    final result = await _callPostApi(_profile, json.encode({}));
    return TypeProfileCompany.fromJson(json.decode(result.body));
  }

  @override
  Future<List<VacancyCompany>> getVacanciesCompany() async {
    final result = await _callPostApi(_vacancies, json.encode({}));
    return (json.decode(result.body) as List<dynamic>)
        .map((item) => VacancyCompany.fromJson(item))
        .toList();
  }

  @override
  Future<http.Response> postVacancyCompany(
      {required String name,
      required String city,
      required String grade,
      required String stage,
      required String schedule,
      required int category,
      required String body,
      required String minsalary,
      required String maxsalary,
      required String type,
      required String abilities}) async {
    final result = await _callPostApi(
        _createVacancy,
        json.encode({
          "name": name,
          "city": city,
          "grade": grade,
          "stage": stage,
          "schedule": schedule,
          "category": category,
          "body": body,
          "minsalary": minsalary,
          "maxsalary": maxsalary,
          "type": type,
          "abilities": abilities
        }));
    print(result.statusCode);
    return result;
  }

  @override
  Future<List<Category>> getCategories() async {
    final result = await _callPostApi(_categories, json.encode({}));
    return (json.decode(result.body) as List<dynamic>)
        .map((item) => Category.fromJson(item))
        .toList();
  }

  @override
  Future<Vacancy> getVacancyCompany(int id) async {
    final result =
        await _callPostApi(_vacancy + id.toString(), json.encode({}));
    return Vacancy.fromJson(json.decode(result.body));
  }

  Future<String> updateAvatar(int id, String filename) async {
    final prefs = await SharedPreferences.getInstance();
    final uri = Uri.parse(_baseApi + _updateAvatar);
    var request = http.MultipartRequest('POST', uri);
    request.headers.addAll({
      "Accept": "application/json",
      "Authorization": "Bearer ${prefs.getString("tokenEmployer")}"
    });
    request.files.add(await http.MultipartFile.fromPath('avatar', filename));
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
              "Authorization": "Bearer ${prefs.getString("tokenEmployer")}"
            },
            body: params)
        .catchError((e) {
      print(e);
    });
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response;
    } else {
      throw ServerException();
    }
  }
}
