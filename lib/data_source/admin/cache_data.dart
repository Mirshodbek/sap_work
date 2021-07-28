import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sap_work/models/feature/feature.dart';
import 'package:sap_work/repository/exceptions_failures.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AdminCacheDataBase{
  Future<List<Feature>> getCategories();

  Future<List<Feature>> getSpheres();

  Future<File> cacheObject(String object, String path);

  Future<FileSystemEntity> deleteObject(String path);
}

class AdminCacheData implements AdminCacheDataBase{
  final SharedPreferences sharedPreferences;


  AdminCacheData({required this.sharedPreferences});

  @override
  Future<List<Feature>> getCategories() async {
    var cacheDir = await getApplicationDocumentsDirectory();
    final file = File(cacheDir.path + "/" + CACHED_CATEGORIES + ".json");
    if (file.existsSync()) {
      var jsonData = file.readAsStringSync();
      return Future.value((json.decode(jsonData) as List)
          .map((item) => Feature.fromJson(item))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<List<Feature>> getSpheres() async {
    var cacheDir = await getApplicationDocumentsDirectory();
    final file = File(cacheDir.path + "/" + CACHED_SPHERES + ".json");
    if (file.existsSync()) {
      var jsonData = file.readAsStringSync();
      return Future.value((json.decode(jsonData) as List)
          .map((item) => Feature.fromJson(item))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<File> cacheObject(String object, String path) async {
    var cacheDir = await getApplicationDocumentsDirectory();
    File file = File(cacheDir.path + "/" + path + ".json");
    return await Future.delayed(Duration(milliseconds: 500), () async {
      return await file.writeAsString(object,
          flush: true, mode: FileMode.write);
    });
  }

  @override
  Future<FileSystemEntity> deleteObject(String path) async {
    var cacheDir = await getApplicationDocumentsDirectory();
    if (File(cacheDir.path + "/" + path + ".json").existsSync()) {
      return await Future.delayed(Duration(milliseconds: 500), () async {
        return await cacheDir.delete(recursive: true);
      });
    } else {
      return File(cacheDir.path + "/" + path + ".json");
    }
  }

}