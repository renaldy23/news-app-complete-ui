import 'package:flutter/material.dart';
import 'package:news_app/models/main_news_model.dart';
import 'package:news_app/models/recomended_news_model.dart';

import '../theme.dart';

class BookmarkTile extends StatelessWidget {
  MainNewsModel news;
  BookmarkTile({required this.news});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        bottom: 16,
      ),
      child: Row(
        children: [
          Container(
            width: 96,
            height: 96,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  news.image,
                ),
              ),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  news.category,
                  style: secondaryTextStyle.copyWith(
                    fontSize: 14,
                    color: Color(0xFF7C82A1),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  news.title,
                  style: primaryTextStyle.copyWith(fontSize: 16),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
