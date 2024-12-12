import 'package:flutter/material.dart';
import 'package:monglish_app/core/routing/routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // This arguments to be passed in any screen like this: (arguments as ClassName).
    // ignore: unused_local_variable
    final arguments = settings.arguments;

    switch (settings.name) {
      // case Routes.onBoardingView:
      //   return MaterialPageRoute(
      //     builder: (_) => const OnboardingView(),
      //   );
      // case Routes.loginView:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => getIt<LoginCubit>(),
      //       child: const LoginView(),
      //     ),
      //   );
      // case Routes.signUpScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => getIt<SignupCubit>(),
      //       child: const SignUpView(),
      //     ),
      //   );
      // case Routes.homeView:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => HomeCubit(getIt())..getAllSpecializations(),
      //       child: const HomeView(),
      //     ),
      //   );
      default:
        return null;
    }
  }
}
