import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMsg;

  Failure(this.errorMsg);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMsg);
  factory ServerFailure.fromDioException(DioException dioExp) {
    switch (dioExp.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('badCertificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioExp.response!.statusCode!, dioExp.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to Api server was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');
      case DioExceptionType.unknown:
        return ServerFailure('UnExpected Error, Please try again!');

      default:
        return ServerFailure('Opps there was an error, please try again later');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, please try again later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try again later!');
    } else {
      return ServerFailure('Opps there was an error, please try again later');
    }
  }
}
