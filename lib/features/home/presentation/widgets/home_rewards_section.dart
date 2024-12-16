import 'package:flutter/material.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/colors_manager.dart';
import 'package:monglish_app/core/theming/styles.dart';
import 'package:monglish_app/features/home/data/models/students_model/students.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_rewards_section_item.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_view_colored_container.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeRewardsSection extends StatelessWidget {
  const HomeRewardsSection({
    super.key,
    required this.studentsResponse,
  });

  final Students studentsResponse;

  @override
  Widget build(BuildContext context) {
    return HomeViewColoredContainer(
      color: const Color(0x3FFFD700),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Rewards",
                  style: Styles.font16BlackBold.copyWith(
                    color: const Color(0xFF434050),
                  ),
                ),
                horizontalSpace(20),
                // Progress Bar
                Expanded(
                  child: LinearPercentIndicator(
                    lineHeight: 7.0,
                    percent: 0.60,
                    animation: true,
                    animationDuration: 8000,
                    backgroundColor: const Color(0x3F999999),
                    progressColor: ColorsManager.mainBlue,
                    barRadius: const Radius.circular(50),
                  ),
                ),
              ],
            ),
          ),
          verticalSpace(12),
          Row(
            children: [
              const Expanded(
                child: HomeRewardsSectionItem(
                  titile: "Helping Others",
                  icon: "assets/svgs/help_reward.svg",
                  name: "Mr. Ahmed Omar",
                  date: "12/4/2024",
                  count: "1",
                ),
              ),
              horizontalSpace(16),
              const Expanded(
                child: HomeRewardsSectionItem(
                  titile: "Teamwork",
                  icon: "assets/svgs/teamwork_reward.svg",
                  name: "Mr. Ahmed Omar",
                  date: "12/4/2024",
                  count: "3",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
