import 'package:flutter/material.dart';
import 'package:news_app/models/recomended_news_model.dart';
import 'package:news_app/theme.dart';

class RecomendNewsDetail extends StatelessWidget {
  RecomendedNewsModel recNews;
  RecomendNewsDetail({required this.recNews});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 42,
              bottom: 24,
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
                        "assets/back_grey.png",
                        width: 24,
                      ),
                    ),
                    Image.asset(
                      "assets/forward_grey.png",
                      width: 24,
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  width: double.infinity,
                  height: 192,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        recNews.image,
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                SizedBox(
                  height: 24,
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
                      recNews.category,
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
                    recNews.title,
                    style: primaryTextStyle.copyWith(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                            color: Colors.black,
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
                ),
                SizedBox(
                  height: 32,
                ),
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
                  recNews.body,
                  style: secondaryTextStyle.copyWith(
                      fontSize: 16,
                      color: Color(
                        0xFF666C8E,
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
