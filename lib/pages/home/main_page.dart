import 'package:flutter/material.dart';
import 'package:news_app/pages/home/apps_page.dart';
import 'package:news_app/pages/home/bookmark_page.dart';
import 'package:news_app/pages/home/home_page.dart';
import 'package:news_app/pages/home/user_page.dart';
import 'package:news_app/theme.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  Widget body() {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return AppsPage();
      case 2:
        return BookmarkPage();
      case 3:
        return UserPage();
      default:
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.only(
                  top: 15,
                ),
                child: Image.asset(
                  "assets/home.png",
                  width: 24,
                  color: currentIndex == 0 ? primaryColor : Color(0xFFACAFC3),
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.only(
                top: 15,
              ),
              child: Image.asset(
                "assets/apps.png",
                width: 24,
                color: currentIndex == 1 ? primaryColor : Color(0xFFACAFC3),
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.only(
                top: 15,
              ),
              child: Image.asset(
                "assets/bookmark.png",
                width: 24,
                color: currentIndex == 2 ? primaryColor : Color(0xFFACAFC3),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.only(
                top: 15,
              ),
              child: Image.asset(
                "assets/user.png",
                width: 24,
                color: currentIndex == 3 ? primaryColor : Color(0xFFACAFC3),
              ),
            ),
            label: '',
          ),
        ],
      ),
      body: body(),
    );
  }
}
