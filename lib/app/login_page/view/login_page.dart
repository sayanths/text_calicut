import 'package:flutter/material.dart';
import 'package:login_test_calicut/app/core/colors.dart';
import 'package:login_test_calicut/app/core/widget.dart';
import 'package:login_test_calicut/app/login_page/view/widget/textform_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: grey),
                    )),
              ),
              SizedBox(
                width: size.width / 1.1,
                height: size.height / 16,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: green,
                  ),
                  child: const Text(
                    "Log in ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
