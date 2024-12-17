import 'package:flutter/material.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/colors_manager.dart';
import 'package:monglish_app/core/theming/styles.dart';
import 'package:monglish_app/features/home/data/models/students_model/students.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_rewards_section_item.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_view_colored_container.dart';

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
                // Native Progress Bar with Tween Animation
                const Expanded(
                  child: CustomLinearProgressIndicator(
                    progress: 0.60,
                    duration: Duration(milliseconds: 10000),
                    backgroundColor: Color(0x3F999999),
                    progressColor: ColorsManager.mainBlue,
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

class CustomLinearProgressIndicator extends StatefulWidget {
  final double progress;
  final Duration duration;
  final Color backgroundColor;
  final Color progressColor;

  const CustomLinearProgressIndicator({
    super.key,
    required this.progress,
    required this.duration,
    this.backgroundColor = const Color(0x3F999999),
    this.progressColor = Colors.blue,
  });

  @override
  State<CustomLinearProgressIndicator> createState() =>
      _CustomLinearProgressIndicatorState();
}

class _CustomLinearProgressIndicatorState
    extends State<CustomLinearProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize Animation Controller
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    // Define Tween for animation
    _animation = Tween<double>(begin: 0.0, end: widget.progress).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Start Animation
    _controller.forward();
  }

  @override
  void didUpdateWidget(covariant CustomLinearProgressIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.progress != widget.progress) {
      _animation = Tween<double>(begin: _animation.value, end: widget.progress)
          .animate(
              CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
      _controller.reset();
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            height: 7.0,
            color: widget.backgroundColor,
            alignment: Alignment.centerLeft,
            child: FractionallySizedBox(
              widthFactor: _animation.value,
              child: Container(
                decoration: BoxDecoration(
                  color: widget.progressColor,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
