import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monglish_app/features/home/data/repos/students_repo.dart';
import 'package:monglish_app/features/home/logic/students_cubit/students_state.dart';

class StudentsCubit extends Cubit<StudentsState> {
  final ProductsRepo _productsRepo;
  int _skip = 0;
  final int _limit = 10;
  bool hasReachedEnd = false;
  String currentQuery = '';

  final formKey = GlobalKey<FormState>();
  final addProductFormKey = GlobalKey<FormState>();
  TextEditingController productNameController = TextEditingController();
  TextEditingController productPriceController = TextEditingController();
  TextEditingController productDescriptionController = TextEditingController();

  TextEditingController addProductNameController = TextEditingController();
  TextEditingController addProductDescriptionController =
      TextEditingController();
  TextEditingController addProductPriceController = TextEditingController();

  StudentsCubit(this._productsRepo) : super(const StudentsState.initial());

  void getProducts() async {
    if (hasReachedEnd || state is! Success && state is! Initial) {
      return;
    }
    if (state is! Success) {
      emit(const StudentsState.loading());
    }
    final response = await _productsRepo.getProducts(_limit, _skip);
    response.when(
      success: (productsModelResponse) {
        _skip += _limit;
        if (productsModelResponse.products!.length < _limit) {
          hasReachedEnd = true;
        }
        if (state is Success) {
          final oldProducts = (state as Success).data.products;
          final newProducts = oldProducts + productsModelResponse.products!;
          emit(StudentsState.success(
              productsModelResponse.copyWith(products: newProducts)));
        } else {
          emit(StudentsState.success(productsModelResponse));
        }
      },
      failure: (error) {
        emit(
          StudentsState.error(
              error: error.apiErrorModel.message ?? 'Something went wrong!'),
        );
      },
    );
  }
}
