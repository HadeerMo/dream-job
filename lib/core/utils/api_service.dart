import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://jobicy.com/api/v2/remote-jobs';
  final Dio _dio;
  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
