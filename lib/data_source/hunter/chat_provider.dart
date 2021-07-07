import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/screens/hunter/hunter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data_source.dart';

class ChatProvider {
  static const String _baseApi = 'http://194.58.98.181:16498';
  static const String _postMessage = '/api/text?to=';
  static const String _getMessage = '/api/chat?id=';
  static const String _feedback = '/api/resume/feedbacks?resume=';

  Future<List<Chat>> getMessages(int id) async {
    final result = await _callPostApi(
      _getMessage + id.toString(),
      {},
    );
    if (result.statusCode == 200 || result.statusCode == 201) {
      return (jsonDecode(result.body) as List)
          .map((e) => Chat.fromJson(e))
          .toList();
    }
    return [];
  }

  Future<http.Response> postMessage(int id, String text) async {
    final result = await _callPostApi(
      _postMessage + id.toString(),
      {"text": text},
    );
    return result;
  }

  Future<List<FeedbackResume>> getFeedbacksHunter(int id) async {
    final result =
        await _callPostApi(_feedback + id.toString(),  {});
    if (result.statusCode == 200 || result.statusCode == 201) {
      final list = (json.decode(result.body) as List)
          .map((e) => FeedbackResume.fromJson(e))
          .toList();
      return list;
    }
    return [];
  }

  Future<http.Response> _callPostApi(
      String endPoint,Map<String, dynamic> params) async {
    final prefs = await SharedPreferences.getInstance();
    final uri = Uri.parse(_baseApi + endPoint);
    final response = await http
        .post(uri,
            headers: {
              "Accept": "application/json",
              "Authorization": "Bearer ${prefs.getString(USER_TOKEN)}"
            },
            body: params)
        .catchError((onError) {
      print(onError);
    });
    return response;
  }
}
