import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_profile_picture.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        verticalSpace(16),
        Padding(
          padding: const EdgeInsets.only(
            left: 2,
            right: 16,
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/svgs/notifications_icon.svg',
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/svgs/search_icon.svg',
                ),
              ),
              const Spacer(),
              const HomeProfilePicture(),
            ],
          ),
        ),
      ],
    );
  }
}
