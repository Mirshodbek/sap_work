import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../common_urls.dart';
import '../data_source.dart';
import 'cache_data.dart';

abstract class CompanyRemoteDataBase {
  Future<TypeProfileCompany> getProfileCompany();

  Future<List<VacancyCompany>> getVacanciesCompany();

  Future<http.Response> postVacancyCompany(ParamsVacancy paramsVacancy);

  Future<Vacancy> getVacancyCompany(int id);

  Future<Vacancy> changeVacancyCompany(int id);

  Future<List<Category>> getCategories();

  Future<Vacancy> activateOrDeactivateVacancy(String id);

  Future<String> updateAvatar(String filename);
}

class CompanyRemoteData implements CompanyRemoteDataBase {
  final CompanyCacheDataBase localDataSource;
  static const String _profile = '/api/profile';
  static const String _vacancies = '/api/vacancies';
  static const String _categories = '/api/categories';
  static const String _createVacancy = '/api/vacancy/create';
  static const String _vacancy = '/api/vacancy?vacancy=';
  static const String _changeVacancy = '/api/vacancy/change?id=';
  static const String _updateAvatar = '/api/updateAvatar';
  static const String _activateOrDeactivate = '/api/vacancy/';

  final http.Client client;

  CompanyRemoteData(this.localDataSource, {required this.client});

  @override
  Future<TypeProfileCompany> getProfileCompany() async {
    final result = await _callPostApi(_profile, json.encode({}));
    return TypeProfileCompany.fromJson(json.decode(result.body));
  }

  @override
  Future<List<VacancyCompany>> getVacanciesCompany() async {
    final result = await _callPostApi(_vacancies, json.encode({}));
    await localDataSource.deleteObject(CACHED_VACANCIES_COMPANY);
    await localDataSource.cacheObject(result.body, CACHED_VACANCIES_COMPANY);
    return (json.decode(result.body) as List<dynamic>)
        .map((item) => VacancyCompany.fromJson(item))
        .toList();
  }

  @override
  Future<http.Response> postVacancyCompany(ParamsVacancy paramsVacancy) async {
    final result = await _callPostApi(
        _createVacancy,
        json.encode({
          // "name": name,
          // "city": city,
          // "grade": grade,
          // "stage": stage,
          // "schedule": schedule,
          // "category": category,
          // "body": body,
          // "minsalary": minsalary,
          // "maxsalary": maxsalary,
          // "type": type,
          // "abilities": abilities
        }));
    return result;
  }

  @override
  Future<Vacancy> activateOrDeactivateVacancy(String id) async {
    final result =
        await _callPostApi(_activateOrDeactivate + id, json.encode({}));
    await localDataSource.cacheVacancyCompany(json.decode(result.body));
    return Vacancy.fromJson(json.decode(result.body));
  }

  @override
  Future<List<Category>> getCategories() async {
    final result = await _callPostApi(_categories, json.encode({}));
    await localDataSource.deleteObject(CACHED_CATEGORIES);
    await localDataSource.cacheObject(result.body, CACHED_CATEGORIES);
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

  @override
  Future<Vacancy> changeVacancyCompany(int id) async {
    final result = await _callPostApi(_changeVacancy, json.encode({}));
    return Vacancy.fromJson(json.decode(result.body));
  }

  @override
  Future<String> updateAvatar(String filename) async {
    final prefs = await SharedPreferences.getInstance();
    final uri = Uri.parse(BASE_API + _updateAvatar);
    var request = http.MultipartRequest('POST', uri);
    request.headers.addAll({
      "Accept": "application/json",
      "Authorization": "Bearer ${prefs.getString(COMPANY_TOKEN)}"
    });
    request.files.add(await http.MultipartFile.fromPath('avatar', filename));
    var res = await request.send();
    return res.reasonPhrase!;
  }

  Future<http.Response> _callPostApi(String endPoint, String params) async {
    final prefs = await SharedPreferences.getInstance();
    final uri = Uri.parse(BASE_API + endPoint);
    final response = await http
        .post(uri,
            headers: {
              "Accept": "application/json",
              "Content-type": "application/json",
              "Authorization": "Bearer ${prefs.getString(COMPANY_TOKEN)}"
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
