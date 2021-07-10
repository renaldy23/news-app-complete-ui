import 'package:flutter/material.dart';
import 'package:news_app/pages/favorite_topics.dart';
import 'package:news_app/values/favorite_topics_values.dart';

import '../../theme.dart';

class AppsPage extends StatelessWidget {
  FavoriteTopicsValues favTopics = FavoriteTopicsValues();
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
              "Categories",
              style: primaryTextStyle.copyWith(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Thousands of articles in each category",
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
              children: favTopics.data
                  .map(
                    (el) => GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Color(0xFFF3F4F6),
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            el.topics,
                            style: primaryTextStyle.copyWith(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
