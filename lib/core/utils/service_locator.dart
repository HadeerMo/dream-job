import 'package:dio/dio.dart';
import 'package:dream_jop/core/utils/api_service.dart';
import 'package:dream_jop/features/home_page/data/repos/home_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(Dio()),
  );
  getIt.registerSingleton<HomeRepo>(
    HomeRepo(
      getIt.get<ApiService>(),
    ),
  );
}