import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widget/text_field.dart';

import '../theme.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                  "Welcome to Nuntium 👋",
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Hello, I guess you are new around here. You can start using the application after sign up.",
                  style: secondaryTextStyle.copyWith(
                    fontSize: 16,
                    color: Color(0xFF7C82A1),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Forms(
                  iconName: Icons.account_circle,
                  hint: "Username",
                  isObscure: false,
                ),
                SizedBox(
                  height: 16,
                ),
                Forms(
                  iconName: Icons.email_outlined,
                  hint: "Email Address",
                  isObscure: false,
                ),
                SizedBox(
                  height: 16,
                ),
                Forms(
                  iconName: Icons.lock_outline,
                  hint: "Password",
                  isObscure: true,
                ),
                SizedBox(
                  height: 16,
                ),
                Forms(
                  iconName: Icons.lock_outline,
                  hint: "Re-Type Password",
                  isObscure: true,
                ),
                SizedBox(
                  height: 24,
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
                      "Sign Up",
                      style: primaryTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                Center(
                  child: Text.rich(
                    TextSpan(
                      text: "Already have an account ? ",
                      style: thirdTextStyle.copyWith(
                        color: Color(0xFF7C82A1),
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: "Sign In",
                          style: primaryTextStyle.copyWith(
                            color: Color(0xFF7C82A1),
                            fontSize: 16,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, "/sign-in");
                            },
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
