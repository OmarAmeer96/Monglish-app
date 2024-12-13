import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/styles.dart';
import 'package:monglish_app/core/widgets/app_bar_container.dart';
import 'package:monglish_app/core/widgets/custom_main_button.dart';
import 'package:monglish_app/features/login/logic/login_cubit/login_cubit.dart';
import 'package:monglish_app/features/login/presentation/widgets/login_bloc_listener.dart';
import 'package:monglish_app/features/login/presentation/widgets/login_email_and_password_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AppBarContainer(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      verticalSpace(16),
                      SvgPicture.asset(
                        'assets/svgs/login_app_logo.svg',
                        height: 55.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 130.h,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xfff1f5ff),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        verticalSpace(100),
                        Text(
                          "Hi, Welcome Back!",
                          style: Styles.font30OrangeBold,
                        ),
                        verticalSpace(80),
                        const LoginEmailAndPasswordWidget(),
                        verticalSpace(20),
                        Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              'Forgot password?',
                              style: Styles.font14OrangeMedium,
                            ),
                          ),
                        ),
                        verticalSpace(42),
                        CustomMainButton(
                          onPressed: () {
                            validateThenLogin(context);
                          },
                          buttonText: 'Login',
                        ),
                        verticalSpace(60),
                        const LoginBlocListener(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();
    }
  }
}
