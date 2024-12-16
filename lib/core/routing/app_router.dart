import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monglish_app/core/di/dependency_injection.dart';
import 'package:monglish_app/core/routing/routes.dart';
import 'package:monglish_app/features/home/logic/students_cubit/students_cubit.dart';
import 'package:monglish_app/features/home/presentation/home_view.dart';
import 'package:monglish_app/features/login/logic/login_cubit/login_cubit.dart';
import 'package:monglish_app/features/login/presentation/login_view.dart';
import 'package:monglish_app/features/login/presentation/main_view.dart';
import 'package:monglish_app/features/splash/presentation/splash_view.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // This arguments to be passed in any screen like this: (arguments as ClassName).
    // ignore: unused_local_variable
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splashView:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case Routes.loginView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginView(),
          ),
        );
      // case Routes.mainView:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => StudentsCubit(getIt())..getStudents(),
      //       child: const MainView(),
      //     ),
      //   );

      case Routes.mainView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<StudentsCubit>(),
            child: const MainView(),
          ),
        );

      case Routes.homeView:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
        );
      default:
        return null;
    }
  }
}
