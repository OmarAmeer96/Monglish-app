import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monglish_app/core/theming/styles.dart';

class CustomBottomNavBarIcon extends StatelessWidget {
  const CustomBottomNavBarIcon({
    super.key,
    required this.icon,
    required this.text,
    required this.isActiveIcon,
  });

  final String icon, text;
  final bool isActiveIcon;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: SvgPicture.asset(
                icon,
                colorFilter: isActiveIcon
                    ? const ColorFilter.mode(Color(0xFFFE7700), BlendMode.srcIn)
                    : const ColorFilter.mode(
                        Color(0xFF999999), BlendMode.srcIn),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                text,
                style: Styles.font14BoldBottomNav.copyWith(
                  color: isActiveIcon
                      ? const Color(0xFFFE7700)
                      : const Color(0xFF999999),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
