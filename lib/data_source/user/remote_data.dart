import 'dart:convert';

import 'package:sap_work/models/feature/feature.dart';
import 'package:sap_work/models/chat/chat.dart';
import 'package:sap_work/models/feedback_resume/feedback.dart';
import 'package:sap_work/models/invite/invite.dart';
import 'package:sap_work/models/models.dart';
import 'package:sap_work/models/params_user/contacts/contacts.dart';
import 'package:sap_work/models/params_user/filter/filter.dart';
import 'package:sap_work/models/params_user/resume/resume.dart';
import 'package:sap_work/models/profile_user/profile.dart';
import 'package:http/http.dart' as http;
import 'package:sap_work/repository/exceptions_failures.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../common_urls.dart';
import 'cache_data.dart';

abstract class UserRemoteDataBase {
  Future<TypeProfileUser> getProfileUser();

  Future<String> updateAvatarUser(String filename);

  Future<TypeProfileUser> addContactUser(ParamsContacts contacts);

  Future<TypeProfileUser> deleteContactUser(int id);

  Future<List<Feature>> getCategories();

  Future<List<Feature>> getSpheres();

  Future<List<Invite>> getInvites();

  Future<List<Invite>> acceptInvites(int vacancyId, int resumeId);

  Future<List<Resume>> getResumesUser();

  Future<List<Resume>> deleteResumesUser(int id);

  Future<List<FeedbackResume>> getFeedbacksResumeUser(int id);

  Future<List<FeedbackResume>> sendFeedbacksResumeUser(
      int vacancyId, int resumeId);

  Future<Resume> getResumeUser(int id);

  Future<Resume> postResumeUser(ParamsResume resume);

  Future<Resume> changeResumeUser(int id, ParamsResume resume);

  Future<String> addFileToResume(int id, String filename);

  Future<Resume> activateOrDeactivateResume(String string, int id);

  Future<Resume> changeExtraBlocksResume({
    int? stageId,
    int? gradeId,
    required Map<String, dynamic> toMap,
    required int resumeId,
    required String typeBlock,
  });

  Future<Resume> addExtraBlocksResume(
      int id, String typeBlock, ParamsResume resume);

  Future<Resume> deleteExtraBlocksResume(
      {required String typeBlock,
      int? stageId,
      int? gradeId,
      required int resumeId});

  Future<List<Chat>> getChats(int id);

  Future<List<AllChats>> getAllChats();

  Future<List<Chat>> postChat(int id, String text);

  Future<Vacancy> getVacancyUser(int id);

  Future<PaginationVacancy> getRecommendOrPopularVacanciesUser(int page);

  Future<PaginationVacancy> searchVacanciesUser(String body);

  Future<PaginationVacancy> filterVacanciesUser(ParamsFilter params);

  Future<List<Vacancy>> getFavoriteVacanciesUser();

  Future<List<Vacancy>> postOrDeleteFavoriteVacanciesUser(int id, bool type);
}

class UserRemoteData implements UserRemoteDataBase {
  final UserCacheDataBase localDataSource;
  static const String _resumes = '/api/resumes';
  static const String _resume = '/api/resume?id=';
  static const String _getInvites = '/api/resume/answers';
  static const String _sendFeedbacksVacancy = '/api/feedback';
  static const String _createResume = '/api/resume/create';
  static const String _editResume = '/api/resume/change?id=';
  static const String _deleteResume = '/api/resume/delete?id=';
  static const String _addFileToResume = '/api/resume/addFiles?resume=';
  static const String _activatedDeactivatedResume = '/api/resume/';
  static const String _feedbacksResume = '/api/resume/feedbacks?resume=';
  static const String _extraBlocksResume = '/api/resume/';
  static const String _getVacancyUser = '/api/vacancy?vacancy=';
  static const String _searchVacanciesUser = '/api/search';
  static const String _favoriteVacanciesUser = '/api/favourites';
  static const String _getRecommendVacanciesUser = '/api/recommended/vacancies';
  static const String _getPopularVacanciesUser = '/api/vacancy/popular';
  static const String _acceptInvites = '/api/feedback/accept';

  final http.Client client;

  UserRemoteData(this.localDataSource, {required this.client});

  @override
  Future<PaginationVacancy> filterVacanciesUser(ParamsFilter params) async {
    final result = await _callPostApi(
        _searchVacanciesUser,
        json.encode({
          "schedule": params.schedule,
          "city": params.city,
          "stage": params.stage,
          "category": params.category,
          "type": params.type,
          "page": params.page
        }));
    return PaginationVacancy.fromJson(json.decode(result.body));
  }

  @override
  Future<PaginationVacancy> searchVacanciesUser(String body) async {
    final result = await _callPostApi(
        _searchVacanciesUser + "?body=" + body, json.encode({}));
    return PaginationVacancy.fromJson(json.decode(result.body));
  }

  @override
  Future<PaginationVacancy> getRecommendOrPopularVacanciesUser(int page) async {
    final result =
        await _callPostApi(_getRecommendVacanciesUser, json.encode({}));
    if (json.decode(result.body)['message'] == "No resumes") {
      final result = await _callPostApi(
          _getPopularVacanciesUser, json.encode({"page": page}));
      return PaginationVacancy.fromJson(json.decode(result.body));
    }
    return PaginationVacancy.fromJson(json.decode(result.body));
  }

  @override
  Future<List<Vacancy>> postOrDeleteFavoriteVacanciesUser(
      int id, bool type) async {
    if (type) {
      await _callPostApi(
          _favoriteVacanciesUser + "/add?vacancy=" + id.toString(),
          json.encode({}));

      return await getFavoriteVacanciesUser();
    } else {
      await _callPostApi(
          _favoriteVacanciesUser + "/delete?vacancy=" + id.toString(),
          json.encode({}));
      return await getFavoriteVacanciesUser();
    }
  }

  @override
  Future<List<Vacancy>> getFavoriteVacanciesUser() async {
    final result = await _callPostApi(_favoriteVacanciesUser, json.encode({}));
    await localDataSource.deleteObject(CACHED_FAVORITES_VACANCIES_USER);
    await localDataSource.cacheObject(
        result.body, CACHED_FAVORITES_VACANCIES_USER);
    return (json.decode(result.body) as List)
        .map((item) => Vacancy.fromJson(item))
        .toList();
  }

  @override
  Future<List<FeedbackResume>> sendFeedbacksResumeUser(
      int vacancyId, int resumeId) async {
    final result = await _callPostApi(_sendFeedbacksVacancy,
        json.encode({"vacancy": vacancyId, "resume": resumeId}));
    print(result.body);
    return await getFeedbacksResumeUser(resumeId);
  }

  @override
  Future<List<FeedbackResume>> getFeedbacksResumeUser(int id) async {
    final result =
        await _callPostApi(_feedbacksResume + id.toString(), json.encode({}));
    await localDataSource.deleteObject(CACHED_FEEDBACKS_RESUME);
    await localDataSource.cacheObject(result.body, CACHED_FEEDBACKS_RESUME);
    return (json.decode(result.body) as List)
        .map((item) => FeedbackResume.fromJson(item))
        .toList();
  }

  @override
  Future<Vacancy> getVacancyUser(int id) async {
    final result =
        await _callPostApi(_getVacancyUser + id.toString(), json.encode({}));
    return Vacancy.fromJson(json.decode(result.body));
  }

  @override
  Future<List<AllChats>> getAllChats() async {
    final result = await _callPostApi(GET_ALL_CHATS, json.encode({}));
    await localDataSource.deleteObject(CACHED_ALL_CHATS_USER);
    await localDataSource.cacheObject(result.body, CACHED_ALL_CHATS_USER);
    return (json.decode(result.body) as List<dynamic>)
        .map((item) => AllChats.fromJson(item))
        .toList();
  }

  @override
  Future<List<Chat>> getChats(int id) async {
    final result =
        await _callPostApi(GET_CHATS + id.toString(), json.encode({}));
    await localDataSource.deleteObject(CACHED_CHATS_USER);
    await localDataSource.cacheObject(result.body, CACHED_CHATS_USER);
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
  Future<TypeProfileUser> getProfileUser() async {
    final result = await _callPostApi(GET_PROFILE, json.encode({}));
    return TypeProfileUser.fromJson(json.decode(result.body));
  }

  @override
  Future<TypeProfileUser> deleteContactUser(int id) async {
    await _callPostApi(DELETE_URL + id.toString(), json.encode({}));
    return await getProfileUser();
  }

  @override
  Future<TypeProfileUser> addContactUser(ParamsContacts contacts) async {
    await _callPostApi(ADD_URL, json.encode(contacts.toJson()));
    return await getProfileUser();
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
  Future<List<Feature>> getCategories() async {
    final result = await _callPostApi(CATEGORIES, json.encode({}));
    await localDataSource.deleteObject(CACHED_CATEGORIES);
    await localDataSource.cacheObject(result.body, CACHED_CATEGORIES);
    return (json.decode(result.body) as List<dynamic>)
        .map((item) => Feature.fromJson(item))
        .toList();
  }

  @override
  Future<List<Resume>> getResumesUser() async {
    final result = await _callPostApi(_resumes, json.encode({}));
    await localDataSource.deleteObject(CACHED_RESUMES_USER);
    await localDataSource.cacheObject(result.body, CACHED_RESUMES_USER);
    return (json.decode(result.body) as List<dynamic>)
        .map((item) => Resume.fromJson(item))
        .toList();
  }

  @override
  Future<List<Resume>> deleteResumesUser(int id) async {
    await _callPostApi(_deleteResume + id.toString(), json.encode({}));
    return await getResumesUser();
  }

  @override
  Future<Resume> getResumeUser(int id) async {
    final result = await _callPostApi(_resume + id.toString(), json.encode({}));
    final resume = Resume.fromJson(json.decode(result.body));
    print(resume);

    return resume;
  }

  @override
  Future<Resume> postResumeUser(ParamsResume resume) async {
    final result =
        await _callPostApi(_createResume, json.encode(resume.toJson()));
    return await getResumeUser(json.decode(result.body)['id']);
  }

  @override
  Future<Resume> changeResumeUser(int id, ParamsResume resume) async {
    await _callPostApi(
        _editResume + id.toString(),
        json.encode({
          "name": resume.name,
          "body": resume.body,
          "abilities": resume.abilities,
          "category": resume.category,
          "sphere": resume.sphere,
          "city": resume.city,
          "phone": resume.phone,
          "email": resume.email,
        }));

    return await getResumeUser(id);
  }

  @override
  Future<Resume> changeExtraBlocksResume({
    int? stageId,
    int? gradeId,
    required Map<String, dynamic> toMap,
    required int resumeId,
    required String typeBlock,
  }) async {
    if (typeBlock == STAGES) {
      await _callPostApi(
          _extraBlocksResume + "stage/change?id=" + stageId.toString(),
          jsonEncode(toMap));
    }
    if (typeBlock == GRADES) {
      await _callPostApi(
          _extraBlocksResume + "grade/change?id=" + gradeId.toString(),
          jsonEncode(toMap));
    }
    return await getResumeUser(resumeId);
  }

  @override
  Future<Resume> addExtraBlocksResume(
      int id, String typeBlock, ParamsResume resume) async {
    if (typeBlock == STAGES) {
      await _callPostApi(
          _extraBlocksResume + "stage/add?resume=" + id.toString(),
          json.encode({"stages": resume.stages}));
    }
    if (typeBlock == GRADES) {
      await _callPostApi(
          _extraBlocksResume + "grade/add?resume=" + id.toString(),
          json.encode({"grades": resume.grades}));
    }
    return await getResumeUser(id);
  }

  @override
  Future<Resume> deleteExtraBlocksResume(
      {required String typeBlock,
      int? stageId,
      int? gradeId,
      required int resumeId}) async {
    if (typeBlock == STAGES) {
      await _callPostApi(
          _extraBlocksResume + "stage/delete?id=" + stageId.toString(),
          json.encode({}));
    }
    if (typeBlock == GRADES) {
      await _callPostApi(
          _extraBlocksResume + "grade/delete?id=" + gradeId.toString(),
          json.encode({}));
    }
    return await getResumeUser(resumeId);
  }

  @override
  Future<Resume> activateOrDeactivateResume(String string, int id) async {
    await _callPostApi(_activatedDeactivatedResume + string, json.encode({}));
    return await getResumeUser(id);
  }

  @override
  Future<List<Invite>> getInvites() async {
    final result = await _callPostApi(_getInvites, json.encode({}));
    await localDataSource.deleteObject(CACHED_INVITES_VACANCIES_USER);
    await localDataSource.cacheObject(
        result.body, CACHED_INVITES_VACANCIES_USER);
    return (json.decode(result.body) as List<dynamic>)
        .map((item) => Invite.fromJson(item))
        .toList();
  }

  @override
  Future<List<Invite>> acceptInvites(int vacancyId, int resumeId) async {
    await _callPostApi(_acceptInvites,
        json.encode({"vacancy": vacancyId, "resume": resumeId}));
    return await getInvites();
  }

  @override
  Future<String> addFileToResume(int id, String filename) async {
    final prefs = await SharedPreferences.getInstance();
    final uri = Uri.parse(BASE_API + _addFileToResume + id.toString());
    var request = http.MultipartRequest('POST', uri);
    request.headers.addAll({
      "Accept": "application/json",
      "Authorization": "Bearer ${prefs.getString(USER_TOKEN)}"
    });
    request.files.add(await http.MultipartFile.fromPath('file_name', filename));
    var res = await request.send();
    return res.reasonPhrase!;
  }

  @override
  Future<String> updateAvatarUser(String filename) async {
    final prefs = await SharedPreferences.getInstance();
    final uri = Uri.parse(BASE_API + UPLOAD_AVATAR);
    var request = http.MultipartRequest('POST', uri);
    request.headers.addAll({
      "Accept": "application/json",
      "Authorization": "Bearer ${prefs.getString(USER_TOKEN)}"
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
              "Authorization": "Bearer ${prefs.getString(USER_TOKEN)}"
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
