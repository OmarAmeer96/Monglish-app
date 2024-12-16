import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:monglish_app/core/networking/api_service.dart';
import 'package:monglish_app/core/networking/dio_factory.dart';
import 'package:monglish_app/features/home/data/repos/students_repo.dart';
import 'package:monglish_app/features/home/logic/students_cubit/students_cubit.dart';
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

  // Home
  getIt.registerLazySingleton<StudentsRepo>(() => StudentsRepo(getIt()));
  getIt.registerFactory<StudentsCubit>(() => StudentsCubit(getIt()));
}
