import 'package:flutter/material.dart';
import 'package:monglish_app/core/helpers/constants.dart';
import 'package:monglish_app/core/helpers/extensions.dart';
import 'package:monglish_app/core/helpers/shared_pref_helper.dart';

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

Future<void> printUserId() async {
  int? userId = await SharedPrefHelper.getInt(SharedPrefKeys.userId);
  debugPrint('User Id: $userId');
}

Future<void> printUserName() async {
  String? userName = await SharedPrefHelper.getString(SharedPrefKeys.userName);
  debugPrint('User Name: $userName');
}

Future<void> printUserCode() async {
  String? userCode = await SharedPrefHelper.getString(SharedPrefKeys.userCode);
  debugPrint('User Code: $userCode');
}
