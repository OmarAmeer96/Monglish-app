import 'package:flutter/material.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/styles.dart';
import 'package:monglish_app/features/home/data/models/students_model/students.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_colored_container_icon_and_text_item.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_view_colored_container.dart';

class HomeCurrentLevelSection extends StatelessWidget {
  const HomeCurrentLevelSection({
    super.key,
    required this.studentsResponse,
  });

  final Students studentsResponse;

  @override
  Widget build(BuildContext context) {
    return HomeViewColoredContainer(
      color: const Color(0x66C9A8E2),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Current Level",
                style: Styles.font16BlackBold.copyWith(
                  color: const Color(0xFF434050),
                ),
              ),
            ],
          ),
          verticalSpace(12),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: HomeColoredContainerIconAndTextItem(
                      icon: 'assets/svgs/current_level_icon.svg',
                      title: "${studentsResponse.data!.level!.name}",
                    ),
                  ),
                  Expanded(
                    child: HomeColoredContainerIconAndTextItem(
                      icon: 'assets/svgs/remaining_levels_icon.svg',
                      title:
                          "${studentsResponse.data!.remainingLevels} Remaining Levels",
                    ),
                  )
                ],
              ),
              verticalSpace(12),
              Row(
                children: [
                  Expanded(
                    child: HomeColoredContainerIconAndTextItem(
                      icon: 'assets/svgs/status_icon.svg',
                      title: "${studentsResponse.data!.statusType!.name}",
                    ),
                  ),
                  Expanded(
                    child: HomeColoredContainerIconAndTextItem(
                      icon: 'assets/svgs/expire_date_icon.svg',
                      title: studentsResponse.data!.isPackageExpired!
                          ? "Expired"
                          : "Expires on ${studentsResponse.data!.packageExpireAt!.toLocal().toString().split(' ')[0]}",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
