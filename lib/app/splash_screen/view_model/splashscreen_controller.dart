import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_test_calicut/app/login_page/view/login_page.dart';
import 'package:login_test_calicut/app/routes/routes.dart';

class SplashScreenController extends ChangeNotifier {
  SplashScreenController() {
    timing();
  }

  timing() {
    Timer(
      const Duration(seconds: 2),
      () {
        Routes.push(screen: const LoginPage());
      },
    );
    notifyListeners();
  }
}
