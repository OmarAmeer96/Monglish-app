import 'package:flutter/material.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/styles.dart';
import 'package:monglish_app/features/home/data/models/students_model/students.dart';
import 'package:monglish_app/features/home/presentation/widgets/feedback_item.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_view_colored_container.dart';

class HomeFeedbackSection extends StatelessWidget {
  const HomeFeedbackSection({
    super.key,
    required this.studentsResponse,
  });

  final Students studentsResponse;

  @override
  Widget build(BuildContext context) {
    return HomeViewColoredContainer(
      color: const Color(0xFFE3F2FD),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Feedback",
                  style: Styles.font16BlackBold.copyWith(
                    color: const Color(0xFF434050),
                  ),
                ),
              ],
            ),
          ),
          verticalSpace(12),
          Column(
            children: [
              const FeedbackItem(
                photo: 'assets/images/review1.png',
                name: "Mr. Mostafa Sayed",
                rate: 3,
                comment:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
                since: 1,
              ),
              verticalSpace(16),
              const FeedbackItem(
                photo: 'assets/images/review2.png',
                name: "Mr. Mostafa Sayed",
                rate: 1,
                comment:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
                since: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
