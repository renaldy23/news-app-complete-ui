import 'package:flutter/material.dart';
import 'package:news_app/provider/bookmark_provider.dart';
import 'package:news_app/values/recomended_news_value.dart';
import 'package:news_app/widget/bookmark_tile.dart';
import 'package:provider/provider.dart';

import '../../theme.dart';

class BookmarkPage extends StatelessWidget {
  RecomendedNewsValue newsVal = RecomendedNewsValue();

  @override
  Widget build(BuildContext context) {
    BookmarkProvider bookmark = Provider.of<BookmarkProvider>(context);
    Widget content() {
      return Column(
        children:
            bookmark.bookmark.map((el) => BookmarkTile(news: el)).toList(),
      );
    }

    Widget empty() {
      return Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 186),
              height: 72,
              width: 72,
              decoration: BoxDecoration(
                color: Color(0xFFEEF0FB),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  "assets/book.png",
                  width: 24,
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              width: 256,
              child: Text(
                "You haven't saved any articles yet. Start reading and bookmarking them now",
                textAlign: TextAlign.center,
                style: thirdTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      );
    }

    print(bookmark.bookmark);
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
              "Bookmarks",
              style: primaryTextStyle.copyWith(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Saved articles to the library",
              style: secondaryTextStyle.copyWith(
                fontSize: 16,
                color: Color(0xFF7C82A1),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            bookmark.bookmark.length == 0 ? empty() : content(),
          ],
        ),
      ),
    );
  }
}
