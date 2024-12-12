import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monglish_app/core/di/dependency_injection.dart';
import 'package:monglish_app/core/routing/routes.dart';
import 'package:monglish_app/features/home/ui/home_view.dart';
import 'package:monglish_app/features/login/logic/login_cubit/login_cubit.dart';
import 'package:monglish_app/features/login/ui/login_view.dart';

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
      case Routes.loginView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginView(),
          ),
        );
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
      case Routes.homeView:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
        );
      default:
        return null;
    }
  }
}
