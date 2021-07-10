import 'package:flutter/material.dart';

import '../theme.dart';

class VerificationCode extends StatefulWidget {
  @override
  _VerificationCodeState createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  final List<String> data = ["1", "2", "3", "-"];
  int index = -1;

  bool isActive = false;

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
                "Verification Code ✅",
                style: primaryTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "You need to enter 4-digit code we send to your email adress.",
                style: secondaryTextStyle.copyWith(
                  fontSize: 16,
                  color: Color(0xFF7C82A1),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 16,
                ),
                children: data
                    .map((num) => GestureDetector(
                          onTap: () {
                            setState(() {
                              index = data.indexOf(num);
                            });
                          },
                          child: Container(
                            width: 72,
                            height: 72,
                            decoration: BoxDecoration(
                              color: Color(0xFFF3F4F6),
                              borderRadius: BorderRadius.circular(12),
                              border: data.indexOf(num) == index
                                  ? Border.all(color: primaryColor)
                                  : Border(),
                            ),
                            child: Center(
                              child: Text(num),
                            ),
                          ),
                        ))
                    .toList(),
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
