import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
final  TextInputType keyboardAppearnce;
final String? Function(String?)? validator;
final String title;
final IconData icon;


  const CustomTextFromField({
    Key? key, required this.keyboardAppearnce, this.validator, required this.title, required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        keyboardType:keyboardAppearnce ,
        validator:validator ,
        decoration: InputDecoration(
          label:  Text(title),
            prefixIcon:  Icon(icon),
          focusedBorder:OutlineInputBorder() ,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )),
            
      ),
    );
  }
}
