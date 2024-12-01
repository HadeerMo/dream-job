import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  final _baseUrl = 'https://jobicy.com/api/v2/';
  final Dio _dio;
  ApiService(this._dio);

//   Future<Map<String, dynamic>> get({required String endPoint}) async {
//     _dio.options.headers = {
//       // 'Content-Type': 'application/json',    // If needed by the API
//       'Accept': '*/*',
//       'User-Agent': 'PostmanRuntime/7.43.0'
//     };
// // _dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
//     print('$_baseUrl$endPoint');
//     final response = await _dio.get('$_baseUrl$endPoint');
//     print('finish');
//     print(response.data);
//     return response.data;
//   }

  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(
      Uri.parse(url),
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('There are a problem with ${response.statusCode}');
    }
  }
}
