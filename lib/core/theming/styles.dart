import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monglish_app/core/theming/colors_manager.dart';
import 'package:monglish_app/core/theming/font_family_helper.dart';

class Styles {
  static TextStyle font25WhiteBold = TextStyle(
    color: Colors.white,
    fontSize: 25.sp,
    fontFamily: FontFamilyHelper.bold,
  );
  static TextStyle font30OrangeBold = TextStyle(
    color: ColorsManager.mainOrange,
    fontSize: 30.sp,
    fontFamily: FontFamilyHelper.bold,
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

  static TextStyle font18White600 = TextStyle(
    fontSize: 18.sp,
    color: Colors.white,
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
