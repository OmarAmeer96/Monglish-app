import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  // final HomeRepo _homeRepo;
  HomeCubit(/* this._homeRepo */) : super(const HomeState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void emitLoginState() async {
    // emit(const LoginState.loading());
    // final response = await _homeRepo.login(
    //   LoginRequestBody(
    //     email: emailController.text,
    //     password: passwordController.text,
    //   ),
    // );
    // response.when(
    //   success: (loginResponse) async {
    //     // await saveUserToken(loginResponse.userData!.token!);
    //     await saveUserToken(loginResponse.token!);
    //     emit(LoginState.success(loginResponse));
    //   },
    //   failure: (error) {
    //     emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    //   },
    // );
  }
}
