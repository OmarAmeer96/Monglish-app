import 'package:appointment_app/core/theming/colors_manager.dart';
import 'package:appointment_app/core/theming/font_family_helper.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSectionHeader extends StatelessWidget {
  const CustomSectionHeader({
    super.key,
    required this.title,
    required this.seeAllOnTap,
  });

  final String title;
  final void Function() seeAllOnTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Styles.font18BlackBold.copyWith(
            fontSize: 18.sp,
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: seeAllOnTap,
          child: Text(
            'See All',
            style: Styles.font18BlackBold.copyWith(
              fontSize: 13.sp,
              color: ColorsManager.mainBlue,
              fontFamily: FontFamilyHelper.regular,
            ),
          ),
        ),
      ],
    );
  }
}
