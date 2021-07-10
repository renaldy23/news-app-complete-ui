import 'package:flutter/material.dart';

import '../../theme.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 28,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 18,
            ),
            Text(
              "Profile",
              style: primaryTextStyle.copyWith(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/user_photo.png",
                  width: 72,
                ),
                SizedBox(
                  width: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Andrey Turkman",
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "turkman@mail.com",
                      style: secondaryTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              height: 56,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF3F4F6),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Notifications",
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      color: Color(0xFF666C8E),
                    ),
                  ),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                    activeTrackColor: primaryColor,
                    activeColor: Colors.white,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/language");
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF3F4F6),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Language",
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        color: Color(0xFF666C8E),
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/user-change-pass");
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF3F4F6),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Change Password",
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        color: Color(0xFF666C8E),
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              height: 56,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF3F4F6),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Privacy",
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      color: Color(0xFF666C8E),
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/terms-condition");
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF3F4F6),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Terms & Condition",
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        color: Color(0xFF666C8E),
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/sign-in", (route) => false);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF3F4F6),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sign Out",
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        color: Color(0xFF666C8E),
                      ),
                    ),
                    Icon(
                      Icons.login,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
