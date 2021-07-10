import 'package:flutter/material.dart';
import 'package:news_app/models/favorite_topics_model.dart';
import 'package:news_app/values/favorite_topics_values.dart';

import '../theme.dart';

class FavoriteTopics extends StatefulWidget {
  @override
  _FavoriteTopicsState createState() => _FavoriteTopicsState();
}

class _FavoriteTopicsState extends State<FavoriteTopics> {
  FavoriteTopicsValues topics = FavoriteTopicsValues();

  int index = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
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
                  "Select your favorite topics",
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Select some of your favorite topics to let us suggest better news for you.",
                  style: secondaryTextStyle.copyWith(
                    fontSize: 16,
                    color: Color(0xFF7C82A1),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                GridView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 4.5),
                  ),
                  children: topics.data
                      .map(
                        (num) => GestureDetector(
                          onTap: () {
                            setState(() {
                              index = topics.data.indexOf(num);
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: topics.data.indexOf(num) == index
                                  ? primaryColor
                                  : Color(0xFFF3F4F6),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                num.topics,
                                style: primaryTextStyle.copyWith(
                                  color: topics.data.indexOf(num) == index
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
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
                      Navigator.pushNamed(context, "/main-page");
                    },
                    child: Text(
                      "Next",
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
      ),
    );
  }
}
