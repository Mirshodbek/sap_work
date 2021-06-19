import 'dart:math';

import 'package:http/http.dart' as http;

class AuthProvider {
  static const String _baseApi = 'http://194.58.98.181:16498';
  static const String _hunterRegister = '/api/register/user';
  static const String _hunterLogin = '/api/login/user';
  static const String _hunterSend = '/api/send/user';
  static const String _employerRegister = '/api/register/company';
  static const String _employerLogin = '/api/login/company';
  static const String _employerSend = '/api/send/company';

  final http.Client _httpClient;

  AuthProvider({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  Future<http.Response> signUpHunter(String phone, String name) async {
    final result = await _callPostApi(
      _hunterRegister,
      {"Accept": "application/json"},
      {"phone": phone, "name": name},
    );
    return result;
  }

  Future<http.Response> signUpEmployer(
    String phone,
    String name,
    String bin,
    String bik,
    String inn,
    String address,
  ) async {
    final result = await _callPostApi(
      _employerRegister,
      {"Accept": "application/json"},
      {
        "phone": phone,
        "name": name,
        "bin": bin,
        "bik": bik,
        "inn": inn,
        "address": address,
        "email": "${Random.secure().nextInt(100)}"
      },
    );
    return result;
  }

  Future<http.Response> signInPhoneHunter(String phone) async {
    final result = await _callPostApi(
      _hunterSend,
      {"Accept": "application/json"},
      {"phone": phone},
    );
    return result;
  }

  Future<http.Response> signInHunter(String phone, String code) async {
    final result = await _callPostApi(
      _hunterLogin,
      {"Accept": "application/json"},
      {"phone": phone, "code": code},
    );
    return result;
  }

  Future<http.Response> signInPhoneEmployer(String phone) async {
    final result = await _callPostApi(
      _employerSend,
      {"Accept": "application/json"},
      {"phone": phone},
    );
    return result;
  }

  Future<http.Response> signInEmployer(String phone, String code) async {
    final result = await _callPostApi(
      _employerLogin,
      {"Accept": "application/json"},
      {"phone": phone, "code": code},
    );
    return result;
  }

  Future<http.Response> _callPostApi(String endpoint,
      Map<String, String> headers, Map<String, String> params) async {
    final uri = Uri.parse(_baseApi + endpoint);
    final response = await http.post(uri, headers: headers, body: params);
    return response;
  }
}
