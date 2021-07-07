import 'dart:convert';

import 'package:sap_work/models/profile_user/profile.dart';
import 'package:sap_work/repository/exceptions_failures.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class UserCacheDataBase {
  Future<TypeProfileUser> getProfileUser();

  Future<void> cacheProfileUser(TypeProfileUser profile);
}

class UserCacheData implements UserCacheDataBase {
  final SharedPreferences sharedPreferences;

  UserCacheData({required this.sharedPreferences});

  @override
  Future<TypeProfileUser> getProfileUser() {
    final jsonString = sharedPreferences.getString(CACHED_PROFILE_USER);
    if (jsonString != null) {
      return Future.value(TypeProfileUser.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheProfileUser(TypeProfileUser profile) {
    return sharedPreferences.setString(
      CACHED_PROFILE_USER,
      json.encode(profile.toJson()),
    );
  }
}
