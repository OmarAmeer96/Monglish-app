import 'package:flutter/material.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/styles.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_packages_clubs_section_row.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_view_colored_container.dart';

class HomePackageClubsSection extends StatelessWidget {
  const HomePackageClubsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HomeViewColoredContainer(
      color: const Color(0xB2FFCEA3),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Package Clubs",
                style: Styles.font16BlackBold.copyWith(
                  color: const Color(0xFF434050),
                ),
              ),
            ],
          ),
          verticalSpace(12),
          Column(
            children: [
              const HomePackageClubsSectionRow(
                icon1: 'assets/images/reading_club.png',
                title1: 'Reading Club',
                icon2: 'assets/images/reading_club.png',
                title2: 'Writing Club',
              ),
              verticalSpace(10),
              const HomePackageClubsSectionRow(
                icon1: 'assets/images/reading_club.png',
                title1: 'Songs Club',
                icon2: 'assets/images/reading_club.png',
                title2: 'Debates Club',
              ),
              verticalSpace(10),
              const HomePackageClubsSectionRow(
                icon1: 'assets/images/educational_club.png',
                title1: 'Educational Club',
                icon2: 'assets/images/art_club.png',
                title2: 'Art Club',
              ),
              verticalSpace(10),
              const HomePackageClubsSectionRow(
                icon1: 'assets/images/speaking_club.png',
                title1: 'Speaking Club',
                icon2: 'assets/images/movie_club.png',
                title2: 'Movie Club',
              ),
              verticalSpace(10),
              const HomePackageClubsSectionRow(
                icon1: 'assets/images/talent_club.png',
                title1: 'Talent Club',
                icon2: 'assets/images/life_coach_club.png',
                title2: 'Life Coach Club',
              ),
            ],
          )
        ],
      ),
    );
  }
}
