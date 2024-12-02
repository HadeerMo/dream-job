import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dream_jop/core/errors/failure.dart';
import 'package:dream_jop/core/models/jobs/jobs.dart';
import 'package:dream_jop/core/utils/api_service.dart';

class HomeRepo {
  final ApiService apiService;
  HomeRepo(this.apiService);

  Future<Either<Failure, List<Jobs>>> fetchJobs() async {
    try {
      var data = await apiService.get(
          url: 'https://www.themuse.com/api/public/jobs?page=1');
      List<Jobs> jobs = [];
      for (var item in data['results']) {
        jobs.add(Jobs.fromJson(item));
      }
      return right(jobs);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      } else {
        return left(
          ServerFailure('An error occurred, please try again!'),
        );
      }
    }
  }
}
