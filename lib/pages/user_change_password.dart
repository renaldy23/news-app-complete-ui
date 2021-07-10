import 'package:flutter/material.dart';
import 'package:news_app/widget/text_field.dart';

import '../theme.dart';

class UserChangePassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Color(0xFF7C82A1),
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              centerTitle: true,
              title: Text(
                "Change Password",
                style: primaryTextStyle.copyWith(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  Forms(
                    iconName: Icons.lock_outline,
                    hint: "Current Password",
                    isObscure: true,
                  ),
                  SizedBox(
                    height: 16,
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
                    hint: "Repeat New Password",
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
                        Navigator.pushNamed(context, "/favorite-topics");
                      },
                      child: Text(
                        "Change Password",
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
          ],
        ),
      ),
    );
  }
}
