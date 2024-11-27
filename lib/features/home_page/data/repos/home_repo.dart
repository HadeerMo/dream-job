import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dream_jop/core/errors/failure.dart';
import 'package:dream_jop/core/models/jobs.dart';
import 'package:dream_jop/core/utils/api_service.dart';

class HomeRepo {
  final ApiService apiService;
  HomeRepo(this.apiService);

  Future<Either<Failure, List<Jobs>>> fetchJobs() async {
    try {
      var data = await apiService.get(
          endPoint:
              '');
      List<Jobs> jobs = [];
      for (var item in data['jobs']) {
        jobs.add(Jobs.fromJson(item));
      }
      return right(jobs);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
