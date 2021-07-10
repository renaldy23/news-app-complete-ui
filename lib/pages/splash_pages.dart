import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () => {
        Navigator.pushNamedAndRemoveUntil(
          context,
          "/welcome",
          (route) => false,
        )
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo.png",
              width: 50,
            ),
            SizedBox(
              height: 24,
            ),
            Image.asset(
              "assets/logo-text.png",
              width: 120,
            )
          ],
        ),
      ),
    );
  }
}
