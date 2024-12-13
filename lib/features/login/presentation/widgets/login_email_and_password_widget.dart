import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monglish_app/core/helpers/app_regex.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/styles.dart';
import 'package:monglish_app/core/widgets/custom_main_text_form_field.dart';
import 'package:monglish_app/features/login/logic/login_cubit/login_cubit.dart';

class LoginEmailAndPasswordWidget extends StatefulWidget {
  const LoginEmailAndPasswordWidget({super.key});

  @override
  State<LoginEmailAndPasswordWidget> createState() =>
      _LoginEmailAndPasswordWidgetState();
}

class _LoginEmailAndPasswordWidgetState
    extends State<LoginEmailAndPasswordWidget> {
  bool isObscureText = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  @override
  void initState() {
    passwordController = context.read<LoginCubit>().passwordController;
    super.initState();
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Email or username",
              style: Styles.font14BlackMedium.copyWith(
                color: const Color(0xFF434050),
              ),
            ),
          ),
          verticalSpace(16),
          CustomMainTextFormFiels(
            fillColor: Colors.white,
            hintText: 'Email or username',
            labelStyle: Styles.enabledTextFieldsLabelText,
            isObscureText: false,
            style: Styles.focusedTextFieldsLabelText,
            controller: context.read<LoginCubit>().emailController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your email';
              } else if (!AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            // prefixIcon: const Icon(Icons.email_outlined),
            focusNode: emailFocusNode,
            nextFocusNode: passwordFocusNode,
          ),
          verticalSpace(40),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Password",
              style: Styles.font14BlackMedium.copyWith(
                color: const Color(0xFF434050),
              ),
            ),
          ),
          verticalSpace(16),
          CustomMainTextFormFiels(
            fillColor: Colors.white,
            hintText: 'Password',
            labelStyle: Styles.enabledTextFieldsLabelText,
            isObscureText: isObscureText,
            style: Styles.focusedTextFieldsLabelText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            // prefixIcon: const Icon(Icons.password_rounded),
            controller: context.read<LoginCubit>().passwordController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
            },
            focusNode: passwordFocusNode,
          ),
          // verticalSpace(18),
          // PasswordValidations(
          //   hasLowerCase: hasLowerCase,
          //   hasUpperCase: hasUpperCase,
          //   hasSpecialCharacters: hasSpecialCharacters,
          //   hasNumber: hasNumber,
          //   hasMinLength: hasMinLength,
          // ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }
}
