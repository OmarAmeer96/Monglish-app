import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monglish_app/core/helpers/constants.dart';
import 'package:monglish_app/core/helpers/shared_pref_helper.dart';
import 'package:monglish_app/features/home/data/repos/students_repo.dart';
import 'package:monglish_app/features/home/logic/students_cubit/students_state.dart';

class StudentsCubit extends Cubit<StudentsState> {
  final StudentsRepo _productsRepo;

  StudentsCubit(this._productsRepo) : super(const StudentsState.initial());

  void getStudents() async {
    emit(const StudentsState.loading());
    final response = await _productsRepo.getStudents(
      await SharedPrefHelper.getInt(SharedPrefKeys.userId),
    );
    response.when(
      success: (studentsResponse) {
        emit(StudentsState.success(studentsResponse));
      },
      failure: (error) {
        emit(
          StudentsState.error(
            error: error.apiErrorModel.message ?? 'Something went wrong!',
          ),
        );
      },
    );
  }

  Future<String> getUserName() async {
    final userName = await SharedPrefHelper.getString(SharedPrefKeys.userName);
    return userName;
  }
}
