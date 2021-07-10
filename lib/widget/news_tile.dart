import 'package:flutter/material.dart';
import 'package:news_app/models/main_news_model.dart';
import 'package:news_app/pages/detail_news.dart';
import 'package:news_app/provider/bookmark_provider.dart';
import 'package:news_app/theme.dart';
import 'package:provider/provider.dart';

class NewsTile extends StatefulWidget {
  MainNewsModel mainNews;
  NewsTile({required this.mainNews});

  @override
  _NewsTileState createState() => _NewsTileState();
}

class _NewsTileState extends State<NewsTile> {
  @override
  Widget build(BuildContext context) {
    BookmarkProvider bookmark = Provider.of<BookmarkProvider>(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailNews(news: widget.mainNews),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          right: 16,
        ),
        padding: EdgeInsets.all(24),
        width: 256,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(
              widget.mainNews.image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    bookmark.setBookmark(widget.mainNews);
                    if (bookmark.isBookmark(widget.mainNews)) {
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
                  child: bookmark.isBookmark(widget.mainNews)
                      ? Icon(
                          Icons.bookmark,
                          color: Colors.white,
                        )
                      : Icon(
                          Icons.bookmark_add_outlined,
                          color: Colors.white,
                        ),
                )
              ],
            ),
            SizedBox(
              height: 112,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.mainNews.category,
                  style: thirdTextStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Color(
                      0xFFF3F4F6,
                    ),
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  widget.mainNews.title,
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
