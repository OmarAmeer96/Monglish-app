import 'package:flutter/material.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/styles.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_colored_container_icon_and_text_item.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_view_colored_container.dart';

class HomeCurrentLevelSection extends StatelessWidget {
  const HomeCurrentLevelSection({
    super.key,
  });

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
          verticalSpace(19),
          Column(
            children: [
              const Row(
                children: [
                  Expanded(
                    child: HomeColoredContainerIconAndTextItem(
                      icon: 'assets/svgs/current_level_icon.svg',
                      text: "LG Kids - Juniors - Level 2",
                    ),
                  ),
                  Expanded(
                    child: HomeColoredContainerIconAndTextItem(
                      icon: 'assets/svgs/remaining_levels_icon.svg',
                      text: "2 Remaining Levels",
                    ),
                  )
                ],
              ),
              verticalSpace(12),
              const Row(
                children: [
                  Expanded(
                    child: HomeColoredContainerIconAndTextItem(
                      icon: 'assets/svgs/status_icon.svg',
                      text: "Active",
                    ),
                  ),
                  Expanded(
                    child: HomeColoredContainerIconAndTextItem(
                      icon: 'assets/svgs/expire_date_icon.svg',
                      text: "Old Package expires on 16/12/2024",
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
