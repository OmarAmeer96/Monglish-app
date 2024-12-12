import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:monglish_app/core/networking/api_service.dart';
import 'package:monglish_app/core/networking/dio_factory.dart';
import 'package:monglish_app/features/login/data/repos/loign_repo.dart';
import 'package:monglish_app/features/login/logic/login_cubit/login_cubit.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // // Signup
  // getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  // getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // // Home
  // getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  // getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
}
