import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  final Dio _dio;
  ApiService(this._dio);


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
