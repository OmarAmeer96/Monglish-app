import 'package:flutter/material.dart';
import 'package:monglish_app/core/helpers/constants.dart';
import 'package:monglish_app/core/helpers/extensions.dart';
import 'package:monglish_app/core/routing/routes.dart';
import 'package:monglish_app/features/splash/presentation/widgets/fading_logo.dart';
import 'package:monglish_app/features/splash/presentation/widgets/sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<double> opacityAnimation;

  @override
  void initState() {
    super.initState();
    initAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, 1.00),
          end: Alignment(0, -1),
          colors: [
            Color(0xFF001741),
            Color(0xFF2B4BAB),
            Color(0xFF001741),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FadingLogo(
            opacityAnimation: opacityAnimation,
            image: 'assets/svgs/splash_app_logo.svg',
            height: 70,
          ),
          FadingLogo(
            opacityAnimation: opacityAnimation,
            image: 'assets/images/splash_boy.png',
            height: 400,
          ),
          SlidingText(
            slidingAnimation: slidingAnimation,
            opacityAnimation: opacityAnimation,
          ),
        ],
      ),
    );
  }

  void initAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    // Sliding Animation
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);

    // Opacity Animation
    opacityAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.5, 1.0),
      ),
    );
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        isUserLoggedIn
            // ignore: use_build_context_synchronously
            ? context.pushReplacementNamed(Routes.homeView)
            // ignore: use_build_context_synchronously
            : context.pushReplacementNamed(Routes.loginView);
      },
    );
  }
}
