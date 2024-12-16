import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monglish_app/core/di/dependency_injection.dart';
import 'package:monglish_app/core/helpers/check_if_user_is_logged_in.dart';
import 'package:monglish_app/core/helpers/simple_bloc_observer.dart';
import 'package:monglish_app/core/routing/app_router.dart';
import 'package:monglish_app/moonglish_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupGetIt();

  Bloc.observer = SimpleBlocObserver();

  await ScreenUtil.ensureScreenSize();

  await checkIfUserIsLoggedIn();
  // await printUserId();

  runApp(
    MonglishApp(
      appRouter: AppRouter(),
    ),
  );
}
