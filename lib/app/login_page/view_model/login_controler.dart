import 'package:flutter/cupertino.dart';
import 'package:login_test_calicut/app/home_page/view/home_page.dart';
import 'package:login_test_calicut/app/routes/routes.dart';

class LoginController extends ChangeNotifier {
  final loginKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  loginPress() {
    if (loginKey.currentState!.validate()) {
      return Routes.push(screen: const HomePage());
    }
  }
}
