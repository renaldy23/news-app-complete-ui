import 'package:flutter/material.dart';
import 'package:news_app/widget/text_field.dart';

import '../theme.dart';

class NewPassword extends StatelessWidget {
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
                "Create New Password 🔒",
                style: primaryTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "You can create a new password, please dont forget it too.",
                style: secondaryTextStyle.copyWith(
                  fontSize: 16,
                  color: Color(0xFF7C82A1),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Forms(
                iconName: Icons.lock_outline,
                hint: "New Password",
                isObscure: true,
              ),
              SizedBox(
                height: 16,
              ),
              Forms(
                iconName: Icons.lock_outline,
                hint: "Repeat Password",
                isObscure: true,
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
                    Navigator.pushNamed(context, "/new-password");
                  },
                  child: Text(
                    "Confirm",
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
