import 'package:flutter/material.dart';
import 'package:news_app/widget/text_field.dart';

import '../theme.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 18,
              ),
              Text(
                "Forgot Password 🤔",
                style: primaryTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "We need your email adress so we can send you the password reset code.",
                style: secondaryTextStyle.copyWith(
                  fontSize: 16,
                  color: Color(0xFF7C82A1),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Forms(
                iconName: Icons.email_outlined,
                hint: "Email Address",
                isObscure: false,
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/verify-code");
                  },
                  child: Text(
                    "Next",
                    style: primaryTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
