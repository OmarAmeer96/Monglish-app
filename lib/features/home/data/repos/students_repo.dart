import 'package:monglish_app/core/networking/api_error_handler.dart';
import 'package:monglish_app/core/networking/api_result.dart';
import 'package:monglish_app/core/networking/api_service.dart';
import 'package:monglish_app/features/home/data/models/students_model/students.dart';

class StudentsRepo {
  final ApiService _apiService;

  StudentsRepo(this._apiService);

  Future<ApiResult<Students>> getStudents(
    int id,
  ) async {
    try {
      final response = await _apiService.getStudents(id: id);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
