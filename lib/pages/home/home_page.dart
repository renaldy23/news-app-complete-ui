import 'package:flutter/material.dart';
import 'package:news_app/values/category_values.dart';
import 'package:news_app/values/main_news_value.dart';
import 'package:news_app/values/recomended_news_value.dart';
import 'package:news_app/widget/news_tile.dart';
import 'package:news_app/widget/recomended_news.dart';

import '../../theme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CategoryValues categories = CategoryValues();
  MainNewsValue newsMain = MainNewsValue();
  RecomendedNewsValue recomendNews = RecomendedNewsValue();

  int index = 0;

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
              "Browse",
              style: primaryTextStyle.copyWith(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Discover things of this world",
              style: secondaryTextStyle.copyWith(
                fontSize: 16,
                color: Color(0xFF7C82A1),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            TextFormField(
              style: thirdTextStyle.copyWith(
                fontSize: 16,
                color: Color(0xFF7C82A1),
              ),
              cursorColor: Color(0xFF7C82A1),
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: thirdTextStyle.copyWith(
                  fontSize: 16,
                  color: Color(0xFF7C82A1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Color(0xFFF3F4F6),
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xFF7C82A1),
                ),
                suffixIcon: Icon(
                  Icons.mic_none_outlined,
                  color: Color(0xFF7C82A1),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categories.data
                    .map((item) => GestureDetector(
                          onTap: () {
                            setState(() {
                              index = categories.data.indexOf(item);
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 16),
                            width: 81,
                            height: 32,
                            decoration: BoxDecoration(
                              color: index == categories.data.indexOf(item)
                                  ? primaryColor
                                  : Color(0xFFF3F4F6),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                item.category,
                                style: primaryTextStyle.copyWith(
                                  color: index == categories.data.indexOf(item)
                                      ? Colors.white
                                      : Color(0xFF7C82A1),
                                ),
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: newsMain.main
                    .map(
                      (item) => NewsTile(
                        mainNews: item,
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recomended for you",
                  style: primaryTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
                Text(
                  "See All",
                  style: secondaryTextStyle.copyWith(
                    fontSize: 14,
                    color: Color(0xFF7C82A1),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: recomendNews.value
                  .map((news) => RecomendedNews(
                        news: news,
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
