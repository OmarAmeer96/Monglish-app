import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: Styles.enabledTextFieldsLabelText.copyWith(
              color: const Color(0xFF9E9E9E),
              fontSize: 13.sp,
            ),
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: Styles.enabledTextFieldsLabelText.copyWith(
              color: Colors.black,
              fontSize: 13.sp,
            ),
          ),
          TextSpan(
            text: ' and',
            style: Styles.enabledTextFieldsLabelText.copyWith(
              color: const Color(0xFF9E9E9E),
              fontSize: 13.sp,
              height: 1.5,
            ),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: Styles.enabledTextFieldsLabelText.copyWith(
              color: Colors.black,
              fontSize: 13.sp,
            ),
          ),
        ],
      ),
    );
  }
}
