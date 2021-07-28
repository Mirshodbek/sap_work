import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:sap_work/models/chat/chat.dart';
import 'package:sap_work/models/params_company/feedback/feedback.dart';
import 'package:sap_work/models/params_user/contacts/contacts.dart';
import 'package:sap_work/models/params_user/filter/filter.dart';
import 'package:sap_work/models/resume/resume.dart';
import 'package:sap_work/models/tariff/tariff.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../common_urls.dart';
import '../data_source.dart';
import 'cache_data.dart';

abstract class CompanyRemoteDataBase {
  Future<TypeProfileCompany> getProfileCompany();

  Future<List<Vacancy>> getVacanciesCompany();

  Future<Vacancy> postVacancyCompany(ParamsVacancy paramsVacancy);

  Future<Vacancy> getVacancyCompany(int id);

  Future<Vacancy> changeVacancyCompany(int id, ParamsVacancy paramsVacancy);

  Future<List<Feature>> getCategories();

  Future<List<Feature>> getSpheres();

  Future<TypeProfileCompany> addContactCompany(ParamsContacts contacts);

  Future<TypeProfileCompany> deleteContactCompany(int id);

  Future<Vacancy> activateOrDeactivateVacancy(String id);

  Future<String> updateAvatarCompany(String filename);

  Future<List<dynamic>> getFeedbacksVacancy(int id);


  Future<List<dynamic>> postInviteFeedback(ParamsFeedback params);

  Future<List<Chat>> getChats(int id);

  Future<List<Chat>> postChat(int id, String text);

  Future<PaginationResume> getRecommendResumesCompany(int page);

  Future<PaginationResume> searchResumesCompany(String body);

  Future<PaginationResume> filterResumesCompany(ParamsFilter params);

  Future<Tariffs> getStatusCompany();

  Future<Tariffs> addStatusSubscribeCompany(String sum);
}

class CompanyRemoteData implements CompanyRemoteDataBase {
  final CompanyCacheDataBase localDataSource;
  static const String _vacancies = '/api/vacancies';
  static const String _createVacancy = '/api/vacancy/create';
  static const String _vacancy = '/api/vacancy?vacancy=';
  static const String _changeVacancy = '/api/vacancy/change?id=';
  static const String _activateOrDeactivate = '/api/vacancy/';
  static const String _feedbacksVacancy = '/api/vacancy/feedbacks?vacancy=';
  static const String _statusSubscribe = '/api/subscribe/status';
  static const String _priceSubscribe = '/api/price';
  static const String _addStatusSubscribe = '/api/subscribe/add?days=';
  static const String _inviteFeedback = '/api/invite';
  static const String _recommendedResumes = '/api/recommended/resumes';
  static const String _searchResumes = '/api/resumes/search';

  final http.Client client;

  CompanyRemoteData(this.localDataSource, {required this.client});

  @override
  Future<PaginationResume> getRecommendResumesCompany(int page) async {
    final result = await _callPostApi(
        _recommendedResumes + "?page=" + page.toString(), json.encode({}));
    if (json.decode(result.body)['message'] == "No resumes") {
      final result = await _callPostApi(_searchResumes, json.encode({}));
      return PaginationResume.fromJson(json.decode(result.body));
    }
    return PaginationResume.fromJson(json.decode(result.body));
  }

  @override
  Future<PaginationResume> searchResumesCompany(String body) async {
    final result =
        await _callPostApi(_searchResumes, json.encode({"body": body}));
    return PaginationResume.fromJson(json.decode(result.body));
  }

  @override
  Future<PaginationResume> filterResumesCompany(ParamsFilter params) async {
    final result = await _callPostApi(
        _searchResumes,
        json.encode({
          "abilities": params.abilities,
          "city": params.city,
          "category": params.category,
        }));
    return PaginationResume.fromJson(json.decode(result.body));
  }

  @override
  Future<Tariffs> getStatusCompany() async {
    final subscribe = await _callPostApi(_statusSubscribe, json.encode({}));
    final price = await _callPostApi(_priceSubscribe, json.encode({}));
    return Tariffs(subscribe.body, price.body);
  }

  @override
  Future<Tariffs> addStatusSubscribeCompany(String sum) async {
    await _callPostApi(_addStatusSubscribe + sum, json.encode({}));
    return await getStatusCompany();
  }

  @override
  Future<List<dynamic>> postInviteFeedback(ParamsFeedback params) async {
    print(params.toJson());
    final result =
        await _callPostApi(_inviteFeedback, json.encode(params.toJson()));
    print(result.statusCode);
    return await getFeedbacksVacancy(params.vacancy);
  }

  @override
  Future<List<dynamic>> getFeedbacksVacancy(int id) async {
    final result =
        await _callPostApi(_feedbacksVacancy + id.toString(), json.encode({}));
    await localDataSource.deleteObject(CACHED_FEEDBACKS_VACANCY);
    await localDataSource.cacheObject(result.body, CACHED_FEEDBACKS_VACANCY);
    if ((json.decode(result.body) as List).any((it) => it['user'] is String)) {
      return (json.decode(result.body) as List)
          .map((item) => FeedbackVacancyNoSubscribe.fromJson(item))
          .toList();
    } else {
      return (json.decode(result.body) as List)
          .map((item) => FeedbackVacancy.fromJson(item))
          .toList();
    }
  }

  @override
  Future<List<Chat>> getChats(int id) async {
    final result =
        await _callPostApi(GET_CHATS + id.toString(), json.encode({}));
    await localDataSource.deleteObject(CACHED_CHATS_COMPANY);
    await localDataSource.cacheObject(result.body, CACHED_CHATS_COMPANY);
    return (json.decode(result.body) as List<dynamic>)
        .map((item) => Chat.fromJson(item))
        .toList();
  }

  @override
  Future<List<Chat>> postChat(int id, String text) async {
    await _callPostApi(SEND_CHAT + id.toString(), json.encode({"text": text}));
    return await getChats(id);
  }

  @override
  Future<TypeProfileCompany> getProfileCompany() async {
    final result = await _callPostApi(GET_PROFILE, json.encode({}));
    return TypeProfileCompany.fromJson(json.decode(result.body));
  }

  @override
  Future<TypeProfileCompany> deleteContactCompany(int id) async {
    await _callPostApi(DELETE_URL + id.toString(), json.encode({}));
    return await getProfileCompany();
  }

  @override
  Future<TypeProfileCompany> addContactCompany(ParamsContacts contacts) async {
    await _callPostApi(ADD_URL, json.encode(contacts.toJson()));
    return await getProfileCompany();
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
  Future<Vacancy> postVacancyCompany(ParamsVacancy paramsVacancy) async {
    final result =
        await _callPostApi(_createVacancy, json.encode(paramsVacancy.toJson()));
    return await getVacancyCompany(json.decode(result.body)["id"]);
  }

  @override
  Future<Vacancy> activateOrDeactivateVacancy(String id) async {
    final result =
        await _callPostApi(_activateOrDeactivate + id, json.encode({}));
    return Vacancy.fromJson(json.decode(result.body));
  }

  @override
  Future<List<Feature>> getCategories() async {
    final result = await _callPostApi(CATEGORIES, json.encode({}));
    await localDataSource.deleteObject(CACHED_CATEGORIES);
    await localDataSource.cacheObject(result.body, CACHED_CATEGORIES);
    return (json.decode(result.body) as List<dynamic>)
        .map((item) => Feature.fromJson(item))
        .toList();
  }

  @override
  Future<List<Feature>> getSpheres() async {
    final result = await _callPostApi(SPHERES, json.encode({}));
    await localDataSource.deleteObject(CACHED_SPHERES);
    await localDataSource.cacheObject(result.body, CACHED_SPHERES);
    return (json.decode(result.body) as List<dynamic>)
        .map((item) => Feature.fromJson(item))
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
          "grade": paramsVacancy.grade,
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
  Future<String> updateAvatarCompany(String filename) async {
    final prefs = await SharedPreferences.getInstance();
    final uri = Uri.parse(BASE_API + UPLOAD_AVATAR);
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
