import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
    return Container(
      padding: const EdgeInsets.all(3),
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
    );
  }
}
