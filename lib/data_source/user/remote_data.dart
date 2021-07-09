import 'dart:convert';

import 'package:sap_work/models/category/category.dart';
import 'package:sap_work/models/contact_user/contact.dart';
import 'package:sap_work/models/models.dart';
import 'package:sap_work/models/params_user/contacts/contacts.dart';
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

  Future<List<ContactUser>> getContactsUser();

  Future<List<ContactUser>> addContactUser(ParamsContacts contacts);

  Future<List<Category>> getCategories();

  Future<List<Resume>> getResumesUser();

  Future<List<Resume>> deleteResumesUser(int id);

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
}

class UserRemoteData implements UserRemoteDataBase {
  final UserCacheDataBase localDataSource;
  static const String _getUrl = '/api/profile/urls';
  static const String _addUrl = '/api/addurl';
  static const String _resumes = '/api/resumes';
  static const String _resume = '/api/resume?id=';
  static const String _createResume = '/api/resume/create';
  static const String _editResume = '/api/resume/change?id=';
  static const String _deleteResume = '/api/resume/delete?id=';
  static const String _addFileToResume = '/api/resume/addFiles?resume=';
  static const String _activatedDeactivatedResume = '/api/resume/';
  static const String _addStagesResume = '/api/resume/stage/add?resume=';
  static const String _extraBlocksResume = '/api/resume/';

  final http.Client client;

  UserRemoteData(this.localDataSource, {required this.client});

  @override
  Future<TypeProfileUser> getProfileUser() async {
    final result = await _callPostApi(GET_PROFILE, json.encode({}));
    return TypeProfileUser.fromJson(json.decode(result.body));
  }

  @override
  Future<List<ContactUser>> getContactsUser() async {
    final result = await _callPostApi(_getUrl, json.encode({}));
    await localDataSource.deleteObject(CACHED_CONTACTS_USER);
    await localDataSource.cacheObject(result.body, CACHED_CONTACTS_USER);
    return (json.decode(result.body) as List<dynamic>)
        .map((item) => ContactUser.fromJson(item))
        .toList();
  }

  @override
  Future<List<ContactUser>> addContactUser(ParamsContacts contacts) async {
    await _callPostApi(_addUrl, json.encode(contacts.toJson()));
    return await getContactsUser();
  }

  @override
  Future<List<Category>> getCategories() async {
    final result = await _callPostApi(CATEGORIES, json.encode({}));
    await localDataSource.deleteObject(CACHED_CATEGORIES);
    await localDataSource.cacheObject(result.body, CACHED_CATEGORIES);
    return (json.decode(result.body) as List<dynamic>)
        .map((item) => Category.fromJson(item))
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
    return Resume.fromJson(json.decode(result.body));
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
