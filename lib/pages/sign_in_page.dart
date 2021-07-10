import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widget/text_field.dart';

import '../theme.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isObscure = false;

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
                  "Welcome Back 👋",
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "I am happy to see you again. You can continue where you left off by logging in",
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
                TextFormField(
                  obscureText: isObscure ? false : true,
                  style: thirdTextStyle.copyWith(
                    fontSize: 16,
                    color: Color(0xFF7C82A1),
                  ),
                  cursorColor: Color(0xFF7C82A1),
                  decoration: InputDecoration(
                    hintText: "Password",
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
                      Icons.lock_outline,
                      color: Color(0xFF7C82A1),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye_sharp,
                        color: Color(0xFF7C82A1),
                      ),
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/forgot-password-email");
                      },
                      child: Text(
                        "Forgot Password ?",
                        style: thirdTextStyle.copyWith(
                          fontSize: 16,
                          color: Color(
                            0xFF7C82A1,
                          ),
                        ),
                      ),
                    ),
                  ],
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
                    onPressed: () {},
                    child: Text(
                      "Sign In",
                      style: primaryTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
                Center(
                  child: Text(
                    "or",
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      color: Color(0xFF7C82A1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
                Container(
                  padding: EdgeInsets.only(left: 16),
                  width: double.infinity,
                  height: 56,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(
                          color: Color(0xFFF3F4F6),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/google.png",
                          width: 24,
                        ),
                        SizedBox(
                          width: 52,
                        ),
                        Text(
                          "Sign in WIth Google",
                          style: primaryTextStyle.copyWith(
                            fontSize: 16,
                            color: Color(0xFF7C82A1),
                          ),
                        )
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  padding: EdgeInsets.only(left: 16),
                  width: double.infinity,
                  height: 56,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(
                          color: Color(0xFFF3F4F6),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/facebook.png",
                          width: 24,
                        ),
                        SizedBox(
                          width: 52,
                        ),
                        Text(
                          "Sign in WIth Facebook",
                          style: primaryTextStyle.copyWith(
                            fontSize: 16,
                            color: Color(0xFF7C82A1),
                          ),
                        )
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Text.rich(
                    TextSpan(
                      text: "Doesnt have account ? ",
                      style: thirdTextStyle.copyWith(
                        color: Color(0xFF7C82A1),
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: "Sign Up",
                          style: primaryTextStyle.copyWith(
                            color: Color(0xFF7C82A1),
                            fontSize: 16,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, "/sign-up");
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
