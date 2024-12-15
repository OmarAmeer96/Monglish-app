import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/font_family_helper.dart';
import 'package:monglish_app/core/theming/styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    this.onTap,
    required this.icon,
    required this.title,
  });

  final void Function()? onTap;
  final String icon, title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
          ),
          horizontalSpace(10),
          Text(
            title,
            style: Styles.font15WhiteBold.copyWith(
              fontFamily: FontFamilyHelper.quicksandMedium,
            ),
          ),
        ],
      ),
    );
  }
}
