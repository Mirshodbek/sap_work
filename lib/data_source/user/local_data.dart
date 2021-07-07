import 'package:shared_preferences/shared_preferences.dart';

abstract class UserLocalDataBase {}

class UserLocalData implements UserLocalDataBase{
  final SharedPreferences sharedPreferences;

  UserLocalData({required this.sharedPreferences});
}