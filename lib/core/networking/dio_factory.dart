import 'package:dio/dio.dart';
import 'package:monglish_app/core/helpers/constants.dart';
import 'package:monglish_app/core/helpers/shared_pref_helper.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class.
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeaders();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeaders() async {
    dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization':
          'Bearer ${await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken)}',
    };
  }

  // This is to solve a problem that the [DioFactory] initializes with no token in the begginning, and after the login the token should be refreshed in the [DioFactory], the other part is in the [LoginCubit] file line 40.
  static void setTokenAfterLogin(String token) {
    dio?.options.headers = {
      'Authorization': 'Bearer $token',
    };
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
