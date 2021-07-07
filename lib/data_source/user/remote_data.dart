import 'dart:convert';

import 'package:sap_work/models/profile_user/profile.dart';
import 'package:http/http.dart' as http;
import 'package:sap_work/repository/exceptions_failures.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../common_urls.dart';
import 'cache_data.dart';

abstract class UserRemoteDataBase {
  Future<TypeProfileUser> getProfileUser();
}

class UserRemoteData implements UserRemoteDataBase {
  final UserCacheDataBase localDataSource;

  final http.Client client;

  UserRemoteData(this.localDataSource, {required this.client});

  @override
  Future<TypeProfileUser> getProfileUser() async {
    final result = await _callPostApi(GET_PROFILE, json.encode({}));
    return TypeProfileUser.fromJson(json.decode(result.body));
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
