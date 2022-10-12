import 'package:flutter/material.dart';
import 'package:login_test_calicut/app/core/colors.dart';
import 'package:login_test_calicut/app/core/widget.dart';
import 'package:login_test_calicut/app/login_page/view/widget/textform_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/login_logo.jpeg",
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
            const CustomTextFromField(
              obsureText: false,
              keyboardAppearnce: TextInputType.emailAddress,
              title: 'Username',
              icon: Icons.person,
            ),
            height10,
            const CustomTextFromField(
              obsureText: true,
              title: 'Password',
              icon: Icons.lock,
            ),
            Text("Forgot Password"),
            ElevatedButton(onPressed: (){}, child: Text("Log in "),style: ElevatedButton.styleFrom(
              backgroundColor: green,
            ),)
          ],
        ),
      ),
    );
  }
}
