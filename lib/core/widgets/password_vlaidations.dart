import 'package:flutter/material.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/colors_manager.dart';
import 'package:monglish_app/core/theming/styles.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least one lowercase letter', hasLowerCase),
        verticalSpace(2),
        buildValidationRow('At least one uppercase letter', hasUpperCase),
        verticalSpace(2),
        buildValidationRow(
            'At least one special character', hasSpecialCharacters),
        verticalSpace(2),
        buildValidationRow('At least one number', hasNumber),
        verticalSpace(2),
        buildValidationRow('At least 8 characters', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.mainGrey,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: Styles.font13GreyBold.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: ColorsManager.mainGrey,
          ),
        ),
      ],
    );
  }
}
