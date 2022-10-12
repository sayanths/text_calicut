import 'package:flutter/cupertino.dart';

class LoginController extends ChangeNotifier {
  final loginKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  loginPress() {
    if (loginKey.currentState!.validate()) {
      return Text("sdssds");
    }
  }
}
