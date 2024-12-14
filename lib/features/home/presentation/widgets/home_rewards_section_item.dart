import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/styles.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_rewards_section_item_icon.dart';

class HomeRewardsSectionItem extends StatelessWidget {
  const HomeRewardsSectionItem({
    super.key,
    required this.titile,
    required this.icon,
    required this.name,
    required this.date,
    required this.count,
  });

  final String titile, icon, name, date, count;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titile,
            style: Styles.font14BlackMedium.copyWith(
              color: const Color(0xFF434050),
            ),
          ),
          verticalSpace(14),
          Row(
            children: [
              HomeRewardsSectionItemIcon(
                icon: icon,
                titile: titile,
                name: name,
                date: date,
                count: count,
              ),
              horizontalSpace(8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: Styles.font14BlackMedium.copyWith(
                        color: const Color(0xFF434050),
                        fontSize: 11.sp,
                      ),
                    ),
                    verticalSpace(4),
                    Text(
                      date,
                      style: Styles.font14BlackMedium.copyWith(
                        color: const Color(0xFF434050),
                        fontSize: 11.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
