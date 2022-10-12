import 'package:flutter/material.dart';
import 'package:login_test_calicut/app/splash_screen/view_model/splashscreen_controller.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SplashScreenController>(
      builder: (context, value, _) => Scaffold(
          body: Center(
              child: Image.asset(
        "assets/splash.jpg",
        fit: BoxFit.cover,
      ))),
    );
  }
}
