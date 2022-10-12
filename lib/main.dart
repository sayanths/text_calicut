import 'package:flutter/material.dart';
import 'package:login_test_calicut/app/splash_screen/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'logistics',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

