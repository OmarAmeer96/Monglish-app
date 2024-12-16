import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/font_family_helper.dart';
import 'package:monglish_app/core/theming/styles.dart';

class HomeColoredContainerIconAndTextItem extends StatelessWidget {
  const HomeColoredContainerIconAndTextItem({
    super.key,
    required this.icon,
    required this.title,
    this.titleStyles,
    this.isPackageClub = false,
    this.availableClubs,
    this.takenClubs,
  });

  final String icon, title;
  final TextStyle? titleStyles;
  final bool isPackageClub;
  final int? availableClubs, takenClubs;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        !isPackageClub
            ? Container(
                padding: const EdgeInsets.all(5),
                width: 25,
                height: 25,
                decoration: ShapeDecoration(
                  // ignore: deprecated_member_use
                  color: Colors.white.withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: SvgPicture.asset(icon),
              )
            : Image.asset(
                icon,
                height: 25,
              ),
        horizontalSpace(6),
        !isPackageClub
            ? Expanded(
                child: Text(
                  title,
                  style: titleStyles ??
                      Styles.font14BlackMedium.copyWith(
                        color: const Color(0xFF666666),
                      ),
                ),
              )
            : Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: titleStyles ??
                          Styles.font14BlackMedium.copyWith(
                            color: const Color(0xFF666666),
                          ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Available ",
                            style: Styles.font14BlackMedium.copyWith(
                              color: const Color(0xFF434050),
                              fontSize: 12.sp,
                            ),
                          ),
                          TextSpan(
                            text: availableClubs.toString(),
                            style: Styles.font14BlackMedium.copyWith(
                              color: const Color(0xFF434050),
                              fontSize: 12.sp,
                              fontFamily: FontFamilyHelper.quicksandBold,
                            ),
                          ),
                          TextSpan(
                            text: "  Taken ",
                            style: Styles.font14BlackMedium.copyWith(
                              color: const Color(0xFF434050),
                              fontSize: 12.sp,
                            ),
                          ),
                          TextSpan(
                            text: takenClubs.toString(),
                            style: Styles.font14BlackMedium.copyWith(
                              color: const Color(0xFF434050),
                              fontSize: 12.sp,
                              fontFamily: FontFamilyHelper.quicksandBold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
      ],
    );
  }
}
