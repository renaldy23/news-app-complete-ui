import 'package:flutter/material.dart';
import 'package:news_app/theme.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 50),
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 140,
              ),
              Image.asset("assets/hands.png"),
              SizedBox(
                height: 100,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/logo-text-black.png",
                        width: 120,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        width: 216,
                        child: Text(
                          "All news in one place, be the first to know last news",
                          textAlign: TextAlign.center,
                          style: secondaryTextStyle.copyWith(
                            fontSize: 16,
                            color: Color(0xFF7C82A1),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 64,
                      ),
                      Container(
                        width: double.infinity,
                        height: 56,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, "/sign-in");
                          },
                          child: Text(
                            "Get Started",
                            style: primaryTextStyle.copyWith(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      )
                    ],
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
