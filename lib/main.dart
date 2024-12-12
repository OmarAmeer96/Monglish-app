import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupGetIt();

  await ScreenUtil.ensureScreenSize();

  // await checkIfUserIsLoggedIn();

  runApp(
    MoonglishApp(
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
