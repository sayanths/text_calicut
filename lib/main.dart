import 'package:flutter/material.dart';
import 'package:login_test_calicut/app/routes/routes.dart';
import 'package:login_test_calicut/app/splash_screen/view/splash_screen.dart';
import 'package:login_test_calicut/app/splash_screen/view_model/splashscreen_controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<SplashScreenController>(
        create: ((context) => SplashScreenController()))
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: Routes.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'logistics',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
