import 'package:flutter/material.dart';

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text("Username"),
                    prefixIcon: const Icon(Icons.person),
                  
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                    
              ),
            ),
          ],
        ),
      ),
    );
  }
}
