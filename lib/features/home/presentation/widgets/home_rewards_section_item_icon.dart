import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monglish_app/core/theming/styles.dart';

class HomeRewardsSectionItemIcon extends StatelessWidget {
  const HomeRewardsSectionItemIcon({
    super.key,
    required this.icon,
    required this.titile,
    required this.name,
    required this.date,
    required this.count,
  });

  final String titile, icon, name, date, count;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          width: 55,
          height: 55,
          decoration: ShapeDecoration(
            color: const Color(0xFFB68E2C),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          child: Center(
            child: SvgPicture.asset(
              icon,
            ),
          ),
        ),
        Positioned(
          top: -10,
          right: -10,
          child: Container(
            width: 20,
            height: 20,
            decoration: const ShapeDecoration(
              color: Color(0xFF08C552),
              shape: OvalBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Colors.white,
                ),
              ),
            ),
            child: Center(
              child: Text(
                count,
                style: Styles.font14BlackMedium.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
