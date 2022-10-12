import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  final TextInputType? keyboardAppearnce;
  final String? Function(String?)? validator;
  final String title;
  final IconData icon;
  final bool obsureText;

  const CustomTextFromField({
    Key? key,
   
    this.validator,
    required this.title,
    required this.icon, required this.obsureText,
      this.keyboardAppearnce,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        obscureText: obsureText,
        keyboardType: keyboardAppearnce,
        validator: validator,
        decoration: InputDecoration(
            label: Text(title),
            prefixIcon: Icon(icon),
            focusedBorder: const OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }
}
