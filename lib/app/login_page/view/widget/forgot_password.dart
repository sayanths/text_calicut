import 'package:flutter/material.dart';
import 'package:login_test_calicut/app/core/colors.dart';

class CusstomForgotPassword extends StatelessWidget {
  const CusstomForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Forgot Password?",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: grey),
          )),
    );
  }
}
