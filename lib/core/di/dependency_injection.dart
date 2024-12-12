import 'package:appointment_app/core/networking/api_service.dart';
import 'package:appointment_app/core/networking/dio_factory.dart';
import 'package:appointment_app/features/home/data/apis/home_api_service.dart';
import 'package:appointment_app/features/home/data/repos/home_repo.dart';
import 'package:appointment_app/features/login/data/repos/loign_repo.dart';
import 'package:appointment_app/features/login/logic/login_cubit/login_cubit.dart';
import 'package:appointment_app/features/signup/data/repos/signup_repo.dart';
import 'package:appointment_app/features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

// TODO: If there was an error, so make it here await an make the {DioFactory} Future.

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // Signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // Home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  // There is no need to this line anymore.
  // getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
