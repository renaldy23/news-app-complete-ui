import 'package:flutter/material.dart';
import 'package:news_app/theme.dart';

class LanguageOption extends StatefulWidget {
  @override
  _LanguageOptionState createState() => _LanguageOptionState();
}

class _LanguageOptionState extends State<LanguageOption> {
  List language = ["English", "Turkish", "German", "Spanish"];

  int index = 0;

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
                "Language",
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
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: language
                    .map(
                      (el) => GestureDetector(
                        onTap: () {
                          setState(() {
                            index = language.indexOf(el);
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                            bottom: 16,
                          ),
                          height: 56,
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                          ),
                          decoration: BoxDecoration(
                            color: language.indexOf(el) == index
                                ? primaryColor
                                : Color(0xFFF3F4F6),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                el,
                                style: primaryTextStyle.copyWith(
                                  fontSize: 16,
                                  color: language.indexOf(el) == index
                                      ? Colors.white
                                      : Color(0xFF666C8E),
                                ),
                              ),
                              language.indexOf(el) == index
                                  ? Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    )
                                  : SizedBox()
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
