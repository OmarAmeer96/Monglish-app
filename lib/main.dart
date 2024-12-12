import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monglish_app/core/di/dependency_injection.dart';
import 'package:monglish_app/core/helpers/constants.dart';
import 'package:monglish_app/core/helpers/extensions.dart';
import 'package:monglish_app/core/helpers/shared_pref_helper.dart';
import 'package:monglish_app/core/routing/app_router.dart';
import 'package:monglish_app/moonglish_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupGetIt();

  await ScreenUtil.ensureScreenSize();

  // await checkIfUserIsLoggedIn();

  runApp(
    MonglishApp(
      appRouter: AppRouter(),
    ),
  );
}

Future<void> checkIfUserIsLoggedIn() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  debugPrint('User Token: $userToken');
  if (userToken.isNullOrEmpty()) {
    isUserLoggedIn = false;
  } else {
    isUserLoggedIn = true;
  }
  debugPrint('Is User Logged In: $isUserLoggedIn');
}
