
import 'package:http/http.dart' as http;

import 'common_urls.dart';
import 'data_source.dart';

class AuthProvider {
  static const String _userRegister = '/api/register/user';
  static const String _userLogin = '/api/login/user';
  static const String _userSend = '/api/send/user';
  static const String _companyRegister = '/api/register/company';
  static const String _companyLogin = '/api/login/company';
  static const String _companySend = '/api/send/company';

  final http.Client _httpClient;

  AuthProvider({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  Future<http.Response> signUpUser(String phone, String name) async {
    final result = await _callPostApi(
      _userRegister,
      {"Accept": "application/json"},
      {"phone": phone, "name": name},
    );
    return result;
  }

  Future<http.Response> signUpCompany(
    String phone,
    String name,
    String bin,
    String bik,
    String inn,
    String address,
  ) async {
    final result = await _callPostApi(
      _companyRegister,
      {"Accept": "application/json"},
      {
        "phone": phone,
        "name": name,
        "bin": bin,
        "bik": bik,
        "inn": inn,
        "address": address,
      },
    );
    return result;
  }

  Future<http.Response> signInPhoneUser(String phone) async {
    final result = await _callPostApi(
      _userSend,
      {"Accept": "application/json"},
      {"phone": phone},
    );
    return result;
  }

  Future<http.Response> signInUser(String phone, String code) async {
    final result = await _callPostApi(
      _userLogin,
      {"Accept": "application/json"},
      {"phone": phone, "code": code},
    );
    return result;
  }

  Future<http.Response> signInPhoneCompany(String phone) async {
    final result = await _callPostApi(
      _companySend,
      {"Accept": "application/json"},
      {"phone": phone},
    );
    return result;
  }

  Future<http.Response> signInCompany(String phone, String code) async {
    final result = await _callPostApi(
      _companyLogin,
      {"Accept": "application/json"},
      {"phone": phone, "code": code},
    );
    return result;
  }

  Future<http.Response> _callPostApi(String endpoint,
      Map<String, String> headers, Map<String, String> params) async {
    final uri = Uri.parse(BASE_API + endpoint);
    final response = await http.post(uri, headers: headers, body: params);
    return response;
  }
}
