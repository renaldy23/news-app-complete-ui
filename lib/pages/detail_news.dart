import 'package:flutter/material.dart';
import 'package:news_app/models/main_news_model.dart';
import 'package:news_app/provider/bookmark_provider.dart';
import 'package:news_app/theme.dart';
import 'package:news_app/values/main_news_value.dart';
import 'package:provider/provider.dart';

class DetailNews extends StatelessWidget {
  MainNewsModel news;
  DetailNews({required this.news});
  @override
  Widget build(BuildContext context) {
    BookmarkProvider bookmark = Provider.of<BookmarkProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 62,
                bottom: 24,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(news.image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          "assets/back.png",
                          width: 24,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          bookmark.setBookmark(news);
                          if (bookmark.isBookmark(news)) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: primaryColor,
                                content: Text(
                                  'News has been added to bookmark',
                                  textAlign: TextAlign.center,
                                ),
                                duration: Duration(seconds: 2),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: Color(0xFFED6363),
                                content: Text(
                                  'News has been remove from bookmark',
                                  textAlign: TextAlign.center,
                                ),
                                duration: Duration(seconds: 2),
                              ),
                            );
                          }
                        },
                        child: bookmark.isBookmark(news)
                            ? Icon(
                                Icons.bookmark,
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.bookmark_add_outlined,
                                color: Colors.white,
                              ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        "assets/forward.png",
                        width: 24,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 96,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    width: 100,
                    height: 32,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        news.category,
                        style: primaryTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: 336,
                    child: Text(
                      news.title,
                      style: primaryTextStyle.copyWith(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/user_photo.png",
                        width: 48,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "John Doe",
                            style: primaryTextStyle.copyWith(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Designer",
                            style: secondaryTextStyle.copyWith(
                              fontSize: 14,
                              color: Color(0xFFACAFC3),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(24),
                ),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Results",
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    news.body,
                    style: secondaryTextStyle.copyWith(
                        fontSize: 16,
                        color: Color(
                          0xFF666C8E,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
