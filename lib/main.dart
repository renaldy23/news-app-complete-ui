import 'package:flutter/material.dart';
import 'package:news_app/pages/favorite_topics.dart';
import 'package:news_app/pages/forgot_password.dart';
import 'package:news_app/pages/home/main_page.dart';
import 'package:news_app/pages/language_option.dart';
import 'package:news_app/pages/new_password.dart';
import 'package:news_app/pages/sign_in_page.dart';
import 'package:news_app/pages/sign_up_page.dart';
import 'package:news_app/pages/splash_pages.dart';
import 'package:news_app/pages/terms_condition.dart';
import 'package:news_app/pages/user_change_password.dart';
import 'package:news_app/pages/verification_code.dart';
import 'package:news_app/pages/welcome_page.dart';
import 'package:news_app/provider/bookmark_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BookmarkProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/welcome': (context) => WelcomePage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/forgot-password-email': (context) => ForgotPassword(),
          '/verify-code': (context) => VerificationCode(),
          '/new-password': (context) => NewPassword(),
          '/favorite-topics': (context) => FavoriteTopics(),
          '/main-page': (context) => MainPage(),
          '/language': (context) => LanguageOption(),
          '/user-change-pass': (context) => UserChangePassword(),
          '/terms-condition': (context) => TermsCondition(),
        },
      ),
    );
  }
}
