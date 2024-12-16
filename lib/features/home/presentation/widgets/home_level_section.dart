import 'package:flutter/material.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/styles.dart';
import 'package:monglish_app/features/home/data/models/students_model/students.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_colored_container_icon_and_text_item.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_view_colored_container.dart';

class HomeLevelSection extends StatelessWidget {
  const HomeLevelSection({
    super.key,
    required this.studentsResponse,
  });

  final Students studentsResponse;

  @override
  Widget build(BuildContext context) {
    return HomeViewColoredContainer(
      color: const Color(0x7FC1FFC1),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  studentsResponse.data!.level!.name!,
                  style: Styles.font16BlackBold.copyWith(
                    color: const Color(0xFF434050),
                  ),
                ),
                verticalSpace(3),
                Text(
                  studentsResponse.data!.level!.notes!,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.font12BlackRegular.copyWith(
                    color: const Color(0xFF666666),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          verticalSpace(12),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: HomeColoredContainerIconAndTextItem(
                      icon: 'assets/svgs/level_calender.svg',
                      title: studentsResponse.data!.level!.createdAt!
                          .toLocal()
                          .toString()
                          .split(' ')[0],
                    ),
                  ),
                  Expanded(
                    child: HomeColoredContainerIconAndTextItem(
                      icon: 'assets/svgs/level_student.svg',
                      title: studentsResponse.data!.level!.order!.toString(),
                    ),
                  )
                ],
              ),
              verticalSpace(12),
              Row(
                children: [
                  const Expanded(
                    child: HomeColoredContainerIconAndTextItem(
                      icon: 'assets/svgs/level_student.svg',
                      title: 'Tasnim Ashraf',
                    ),
                  ),
                  Expanded(
                    child: HomeColoredContainerIconAndTextItem(
                      icon: 'assets/svgs/level_status.svg',
                      title: studentsResponse.data!.statusType!.name!,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
