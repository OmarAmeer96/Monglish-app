import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monglish_app/core/theming/styles.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_colored_container_icon_and_text_item.dart';

class HomePackageClubsSectionRow extends StatelessWidget {
  const HomePackageClubsSectionRow({
    super.key,
    required this.icon1,
    required this.title1,
    required this.icon2,
    required this.title2,
    this.availableClubs1,
    this.takenClubs1,
    this.availableClubs2,
    this.takenClubs2,
  });

  final String icon1, title1, icon2, title2;
  final int? availableClubs1, takenClubs1, availableClubs2, takenClubs2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: HomeColoredContainerIconAndTextItem(
            availableClubs: availableClubs1 ?? 0,
            takenClubs: takenClubs1 ?? 0,
            icon: icon1,
            title: title1,
            titleStyles: Styles.font16BlackBold.copyWith(
              color: const Color(0xFF434050),
              fontSize: 14.sp,
            ),
            isPackageClub: true,
          ),
        ),
        Expanded(
          child: HomeColoredContainerIconAndTextItem(
            availableClubs: availableClubs2 ?? 0,
            takenClubs: takenClubs2 ?? 0,
            icon: icon2,
            title: title2,
            titleStyles: Styles.font16BlackBold.copyWith(
              color: const Color(0xFF434050),
              fontSize: 14.sp,
            ),
            isPackageClub: true,
          ),
        )
      ],
    );
  }
}
