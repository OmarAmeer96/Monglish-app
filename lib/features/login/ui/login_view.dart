import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/colors_manager.dart';
import 'package:monglish_app/core/theming/styles.dart';
import 'package:monglish_app/core/widgets/custom_main_button.dart';
import 'package:monglish_app/core/widgets/terms_and_conditions_text.dart';
import 'package:monglish_app/features/login/logic/login_cubit/login_cubit.dart';
import 'package:monglish_app/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:monglish_app/features/login/ui/widgets/login_email_and_password_widget.dart';
import 'package:monglish_app/features/login/ui/widgets/login_view_welcome_texts.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsets.only(
              top: 50.h,
              left: 24.w,
              right: 24.w,
              bottom: 24.h,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const LoginViewWelcomeTexts(),
                  verticalSpace(32),
                  Column(
                    children: [
                      const LoginEmailAndPasswordWidget(),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Forgot password?',
                            style: Styles.font13GreyBold.copyWith(
                              color: ColorsManager.mainBlue,
                            ),
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
                      verticalSpace(18),
                      const TermsAndConditionsText(),
                      verticalSpace(60),
                      const LoginBlocListener(),
                    ],
                  ),
                ],
              ),
            ),
          ),
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
