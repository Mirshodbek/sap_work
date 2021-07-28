import 'dart:convert';

import 'package:sap_work/data_source/admin/cache_data.dart';
import 'package:sap_work/models/feature/feature.dart';
import 'package:sap_work/repository/exceptions_failures.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../common_urls.dart';

abstract class AdminRemoteDataBase {
  Future<List<Feature>> getCategories();

  Future<List<Feature>> addCategory(String name);

  Future<List<Feature>> deleteCategory(String name);

  Future<List<Feature>> addSphere(String name);

  Future<List<Feature>> deleteSphere(String name);

  Future<List<Feature>> getSpheres();

  Future<String> setPrice(String price);

  Future<String> getPrice();
}

class AdminRemoteData implements AdminRemoteDataBase {
  static const String _addCategory = '/api/category/create';
  static const String _deleteCategory = '/api/category/delete?name=';
  static const String _addSphere = '/api/sphere/create';
  static const String _deleteSphere = '/api/sphere/delete?name=';
  static const String _setPrice = '/api/price/set?price=';
  final AdminCacheDataBase localDataSource;
  final http.Client client;

  AdminRemoteData(this.localDataSource, {required this.client});

  @override
  Future<List<Feature>> deleteCategory(String name) async {
   final result = await _callPostApi(_deleteCategory + name, json.encode({}));
   print(result.statusCode);
    return await getCategories();
  }

  @override
  Future<List<Feature>> addCategory(String name) async {
    await _callPostApi(_addCategory, json.encode({"name": name}));
    return await getCategories();
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
  Future<List<Feature>> deleteSphere(String name) async {
    await _callPostApi(_deleteSphere + name, json.encode({}));

    return await getSpheres();
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
  Future<List<Feature>> addSphere(String name) async {
    await _callPostApi(_addSphere, json.encode({"name": name}));
    return await getSpheres();
  }

  @override
  Future<String> setPrice(String price) async {
    final result = await _callPostApi(_setPrice + price, json.encode({}));
    return result.body;
  }

  @override
  Future<String> getPrice() async {
    final result = await _callPostApi(GET_PRICE, json.encode({}));
    return result.body;
  }

  Future<http.Response> _callPostApi(String endPoint, String params) async {
    final prefs = await SharedPreferences.getInstance();
    final uri = Uri.parse(BASE_API + endPoint);
    final response = await http
        .post(uri,
            headers: {
              "Accept": "application/json",
              "Content-type": "application/json",
              "Authorization": "Bearer ${prefs.getString(ADMIN_TOKEN)}"
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
