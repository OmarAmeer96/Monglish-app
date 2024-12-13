import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/widgets/app_bar_container.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_personal_info.dart';
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
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 16.h,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const HomePersonalInfo(),
                        verticalSpace(16),
                        const HomePersonalInfo(),
                        verticalSpace(16),
                        const HomePersonalInfo(),
                        verticalSpace(16),
                        const HomePersonalInfo(),
                        verticalSpace(16),
                        const HomePersonalInfo(),
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
