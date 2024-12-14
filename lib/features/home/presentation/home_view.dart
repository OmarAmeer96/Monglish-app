import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/widgets/app_bar_container.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_current_level_section.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_level_section.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_package_clubs_section.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_personal_info_section.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_view_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            const Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AppBarContainer(
                child: Center(
                  child: HomeViewAppBar(),
                ),
              ),
            ),
            Positioned(
              top: 130.h,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xfff1f5ff),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 16,
                  ),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const HomePersonalInfoSection(),
                        verticalSpace(16),
                        const HomeCurrentLevelSection(),
                        verticalSpace(16),
                        const HomePackageClubsSection(),
                        verticalSpace(16),
                        // Here is the Calendar Section-----------------
                        verticalSpace(16),
                        const HomeLevelSection(),
                        verticalSpace(16),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
