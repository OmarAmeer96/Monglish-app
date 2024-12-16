import 'package:monglish_app/core/networking/api_error_handler.dart';
import 'package:monglish_app/core/networking/api_result.dart';
import 'package:monglish_app/core/networking/api_service.dart';
import 'package:monglish_app/features/home/data/models/students_model/students.dart';

class ProductsRepo {
  final ApiService _apiService;

  ProductsRepo(this._apiService);

  Future<ApiResult<Students>> getProducts(
    int limit,
    int skip,
  ) async {
    try {
      final response = await _apiService.getProducts();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
