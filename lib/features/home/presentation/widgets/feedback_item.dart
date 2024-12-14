import 'package:flutter/material.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/styles.dart';
import 'package:monglish_app/features/home/presentation/widgets/feedback_owner_info.dart';

class FeedbackItem extends StatelessWidget {
  const FeedbackItem({
    super.key,
    required this.photo,
    required this.name,
    required this.comment,
    required this.rate,
    required this.since,
  });

  final String photo, name, comment;
  final int rate, since;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FeedbackItemOwnerInfo(
            photo: photo,
            name: name,
            rate: rate,
            since: since,
          ),
          verticalSpace(12),
          Text(
            comment,
            style: Styles.font14BlackMedium.copyWith(),
          ),
        ],
      ),
    );
  }
}
