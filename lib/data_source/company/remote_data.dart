import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../common_urls.dart';
import '../data_source.dart';
import 'cache_data.dart';

abstract class CompanyRemoteDataBase {
  Future<TypeProfileCompany> getProfileCompany();

  Future<List<Vacancy>> getVacanciesCompany();

  Future<http.Response> postVacancyCompany(ParamsVacancy paramsVacancy);

  Future<Vacancy> getVacancyCompany(int id);

  Future<Vacancy> changeVacancyCompany(int id, ParamsVacancy paramsVacancy);

  Future<List<Category>> getCategories();

  Future<Vacancy> activateOrDeactivateVacancy(String id);

  Future<String> updateAvatar(String filename);

  Future<List<FeedbackVacancy>> getFeedbacksVacancy(int id);

  Future<String> getStatusCompany();

  Future<String> addStatusSubscribeCompany(String sum);
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
  static const String _feedbacksVacancy = '/api/vacancy/feedbacks?vacancy=';
  static const String _statusSubscribe = '/api/subscribe/status';
  static const String _addStatusSubscribe = '/api/subscribe/add?days=';

  final http.Client client;

  CompanyRemoteData(this.localDataSource, {required this.client});

  @override
  Future<String> getStatusCompany() async {
    final result = await _callPostApi(_statusSubscribe, json.encode({}));
    print(result.body);
    return result.body;
  }

  @override
  Future<String> addStatusSubscribeCompany(String sum) async {
  final result =  await _callPostApi(_addStatusSubscribe + sum, json.encode({}));
  print(sum);
    return await getStatusCompany();
  }

  @override
  Future<List<FeedbackVacancy>> getFeedbacksVacancy(int id) async {
    final result =
        await _callPostApi(_feedbacksVacancy + id.toString(), json.encode({}));
    await localDataSource.deleteObject(CACHED_FEEDBACKS_VACANCY);
    await localDataSource.cacheObject(result.body, CACHED_FEEDBACKS_VACANCY);
    return (json.decode(result.body) as List)
        .map((item) => FeedbackVacancy.fromJson(item))
        .toList();
  }

  @override
  Future<TypeProfileCompany> getProfileCompany() async {
    final result = await _callPostApi(_profile, json.encode({}));
    return TypeProfileCompany.fromJson(json.decode(result.body));
  }

  @override
  Future<List<Vacancy>> getVacanciesCompany() async {
    final result = await _callPostApi(_vacancies, json.encode({}));
    await localDataSource.deleteObject(CACHED_VACANCIES_COMPANY);
    await localDataSource.cacheObject(result.body, CACHED_VACANCIES_COMPANY);
    return (json.decode(result.body) as List<dynamic>)
        .map((item) => Vacancy.fromJson(item))
        .toList();
  }

  @override
  Future<http.Response> postVacancyCompany(ParamsVacancy paramsVacancy) async {
    final result =
        await _callPostApi(_createVacancy, json.encode(paramsVacancy.toJson()));
    return result;
  }

  @override
  Future<Vacancy> activateOrDeactivateVacancy(String id) async {
    final result =
        await _callPostApi(_activateOrDeactivate + id, json.encode({}));
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
  Future<Vacancy> changeVacancyCompany(
      int id, ParamsVacancy paramsVacancy) async {
    await _callPostApi(
        _changeVacancy + id.toString(),
        json.encode({
          "name": paramsVacancy.name,
          "body": paramsVacancy.body,
          "city": paramsVacancy.city,
          "garde": paramsVacancy.grade,
          "stage": paramsVacancy.stage,
          "schedule": paramsVacancy.schedule,
          "category": paramsVacancy.category,
          "minsalary": paramsVacancy.minsalary,
          "maxsalary": paramsVacancy.maxsalary,
          "type": paramsVacancy.type,
          "abilities": paramsVacancy.abilities,
        }));
    return await getVacancyCompany(id);
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
