import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monglish_app/core/helpers/constants.dart';
import 'package:monglish_app/core/routing/app_router.dart';
import 'package:monglish_app/core/routing/routes.dart';
import 'package:monglish_app/core/theming/colors_manager.dart';

class MonglishApp extends StatelessWidget {
  final AppRouter appRouter;
  const MonglishApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 917),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Monglish App',
        onGenerateRoute: appRouter.generateRoute,
        theme: ThemeData(
          primaryColor: ColorsManager.mainOrange,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: isUserLoggedIn ? Routes.homeView : Routes.loginView,
        // initialRoute: isUserLoggedIn ? Routes.homeView : Routes.splashView,
      ),
    );
  }
}
