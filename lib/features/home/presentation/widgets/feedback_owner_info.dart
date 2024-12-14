import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/styles.dart';

class FeedbackItemOwnerInfo extends StatelessWidget {
  const FeedbackItemOwnerInfo({
    super.key,
    required this.rate,
    required this.since,
    required this.photo,
    required this.name,
  });

  final int rate, since;
  final String photo, name;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Container(
              width: 35,
              height: 35,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage(photo),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            horizontalSpace(8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: Styles.font14BlackMedium.copyWith(
                        color: const Color(0xFF434050),
                      ),
                    ),
                  ],
                ),
                verticalSpace(4),
                // rating
                Row(
                  children: [
                    Row(
                      children: List.generate(
                        5,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 2),
                          child: SvgPicture.asset(
                            index < rate
                                ? "assets/svgs/start_on.svg"
                                : "assets/svgs/start_off.svg",
                            width: 14,
                          ),
                        ),
                      ),
                    ),
                    horizontalSpace(30),
                    Text(
                      rate.toDouble().toString(),
                      style: Styles.font14BlackMedium.copyWith(
                        color: const Color(0xFF434050),
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Text(
            "$since day ago",
            style: Styles.font14BlackMedium.copyWith(
              color: const Color(0xFF434050),
              fontSize: 12.sp,
            ),
          ),
        ),
      ],
    );
  }
}
