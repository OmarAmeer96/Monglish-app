import 'package:dio/dio.dart';
import 'package:monglish_app/core/networking/api_constants.dart';
import 'package:monglish_app/features/home/data/models/students_model/students.dart';
import 'package:monglish_app/features/login/data/models/login_request_body.dart';
import 'package:monglish_app/features/login/data/models/login_response/login_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @GET(ApiConstants.getStudents)
  Future<Students> getStudents({
    @Path('id') required int id,
  });
}
