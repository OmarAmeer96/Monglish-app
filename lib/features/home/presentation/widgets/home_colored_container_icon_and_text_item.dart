import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/styles.dart';

class HomeColoredContainerIconAndTextItem extends StatelessWidget {
  const HomeColoredContainerIconAndTextItem({
    super.key,
    required this.icon,
    required this.text,
  });

  final String icon, text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          width: 25,
          height: 25,
          decoration: ShapeDecoration(
            // ignore: deprecated_member_use
            color: Colors.white.withOpacity(0.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          child: SvgPicture.asset(icon),
        ),
        horizontalSpace(6),
        Expanded(
          child: Text(
            text,
            style: Styles.font14BlackMedium.copyWith(
              color: const Color(0xFF666666),
            ),
          ),
        ),
      ],
    );
  }
}
