import 'package:flutter/cupertino.dart';
import 'package:news_app/models/main_news_model.dart';

class BookmarkProvider with ChangeNotifier {
  List<MainNewsModel> _bookmark = [];

  List<MainNewsModel> get bookmark => _bookmark;

  set bookmark(List<MainNewsModel> news) {
    _bookmark = news;
    notifyListeners();
  }

  setBookmark(MainNewsModel news) {
    if (!isBookmark(news)) {
      _bookmark.add(news);
    } else {
      _bookmark.removeWhere((element) => element.id == news.id);
    }
    notifyListeners();
  }

  isBookmark(MainNewsModel news) {
    if (_bookmark.indexWhere((element) => news.id == element.id) == -1) {
      return false;
    } else {
      return true;
    }
  }
}
