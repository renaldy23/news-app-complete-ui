import 'package:flutter/material.dart';

import '../theme.dart';

class Forms extends StatelessWidget {
  IconData? iconName;
  String hint;
  bool isObscure = false;
  Forms({required this.iconName, required this.hint, required this.isObscure});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: thirdTextStyle.copyWith(
        fontSize: 16,
        color: Color(0xFF7C82A1),
      ),
      cursorColor: Color(0xFF7C82A1),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: thirdTextStyle.copyWith(
          fontSize: 16,
          color: Color(0xFF7C82A1),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        filled: true,
        fillColor: Color(0xFFF3F4F6),
        prefixIcon: Icon(
          iconName,
          color: Color(0xFF7C82A1),
        ),
      ),
      obscureText: isObscure == true ? true : false,
    );
  }
}
