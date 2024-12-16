import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monglish_app/core/theming/colors_manager.dart';
import 'package:monglish_app/core/theming/font_family_helper.dart';

class Styles {
  static TextStyle font25WhiteBold = TextStyle(
    color: Colors.white,
    fontSize: 25.sp,
    fontFamily: FontFamilyHelper.quicksandBold,
  );

  static TextStyle font30OrangeBold = TextStyle(
    color: ColorsManager.mainOrange,
    fontSize: 30.sp,
    fontFamily: FontFamilyHelper.quicksandBold,
  );

  static TextStyle font14BlackMedium = TextStyle(
    color: Colors.black,
    fontSize: 14.sp,
    fontFamily: FontFamilyHelper.quicksandMedium,
  );

  static TextStyle font14BlackRegular = TextStyle(
    color: Colors.black,
    fontSize: 14.sp,
    fontFamily: FontFamilyHelper.quicksandRegular,
  );

  static TextStyle font14OrangeMedium = TextStyle(
    color: ColorsManager.mainOrange,
    fontSize: 14.sp,
    fontFamily: FontFamilyHelper.montserratMedium,
  );

  static TextStyle font20WhiteBold = TextStyle(
    fontSize: 20.sp,
    color: Colors.white,
    fontFamily: FontFamilyHelper.quicksandBold,
  );

  static TextStyle font16BlackBold = TextStyle(
    fontSize: 16.sp,
    color: Colors.black,
    fontFamily: FontFamilyHelper.quicksandBold,
  );

  static TextStyle font12BlackRegular = TextStyle(
    fontSize: 12.sp,
    color: Colors.black,
    fontFamily: FontFamilyHelper.quicksandRegular,
  );

  static TextStyle font14BoldBottomNav = const TextStyle(
    color: Color(0xFF999999),
    fontSize: 14,
    fontFamily: FontFamilyHelper.quicksandBold,
  );

  static TextStyle font15WhiteBold = TextStyle(
    color: Colors.white,
    fontSize: 15.sp,
    fontFamily: FontFamilyHelper.montserratBold,
  );

  static TextStyle font13BlackMedium = const TextStyle(
    color: Color(0xFF434050),
    fontSize: 14,
    fontFamily: FontFamilyHelper.quicksandMedium,
  );

  static TextStyle font32BlueBold = TextStyle(
      // fontSize: 32.sp,
      // color: ColorsManager.mainBlue,
      // fontFamily: FontFamilyHelper.bold,
      );

  static TextStyle font18BlackBold = TextStyle(
      // fontSize: 20.sp,
      // color: ColorsManager.mainBlack,
      // fontFamily: FontFamilyHelper.bold,
      );

  static TextStyle font13GreyBold = TextStyle(
      // fontSize: 13.sp,
      // color: ColorsManager.mainGrey,
      // fontFamily: FontFamilyHelper.regular,
      );

  static TextStyle enabledTextFieldsLabelText = TextStyle(
      // color: ColorsManager.mainGrey,
      // fontSize: 14.sp,
      // fontFamily: FontFamilyHelper.medium,
      );
  static TextStyle focusedTextFieldsLabelText = TextStyle(
      // color: ColorsManager.mainBlack,
      // fontSize: 14.sp,
      // fontFamily: FontFamilyHelper.medium,
      );
}
