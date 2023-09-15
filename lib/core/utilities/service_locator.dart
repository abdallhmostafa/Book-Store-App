import 'package:booka/core/utilities/api_service.dart';
import 'package:booka/features/home/data/repos/home_repo_implement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));

  getIt.registerSingleton<HomeRepoImplement>(
      HomeRepoImplement(apiServices: getIt.get<ApiServices>()));
// Alternatively you could write it if you don't like global variables
//   GetIt.I.registerSingleton<BookModel>();
}
