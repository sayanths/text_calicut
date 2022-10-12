import 'package:flutter/material.dart';
import 'package:login_test_calicut/app/core/colors.dart';
import 'package:login_test_calicut/app/core/widget.dart';
import 'package:login_test_calicut/app/login_page/view/widget/forgot_password.dart';
import 'package:login_test_calicut/app/login_page/view/widget/textform_field.dart';
import 'package:login_test_calicut/app/login_page/view_model/login_controler.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = context.read<LoginController>();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: loginController.loginKey,
            child: Column(
              children: [
                height50,
                Center(
                  child: Image.asset(
                    "assets/login_logo.jpeg",
                    height: size.height / 6,
                    fit: BoxFit.cover,
                  ),
                ),
                height50,
                CustomTextFromField(
                  controller: loginController.emailController,
                  obsureText: false,
                  keyboardAppearnce: TextInputType.emailAddress,
                  title: 'Username',
                  icon: Icons.person,
                  validator: (value) {
                    value!.isNotEmpty ? const Text("sd") : null;
                    return null;
                  },
                ),
                height20,
                CustomTextFromField(
                  validator: (value) {
                    return null;
                  },
                  controller: loginController.passwordController,
                  obsureText: true,
                  title: 'Password',
                  icon: Icons.lock,
                ),
                height20,
                const CusstomForgotPassword(),
                height30,
                SizedBox(
                  width: size.width / 1.1,
                  height: size.height / 16,
                  child: ElevatedButton(
                    onPressed: () {
                      loginController.loginPress();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: green,
                    ),
                    child: const Text(
                      "Log in ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
