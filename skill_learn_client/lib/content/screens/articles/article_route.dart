import 'package:flutter/material.dart';
import 'package:skill_learn_client/content/models/article.dart';


import 'article_detail.dart';
import 'article_list.dart';

class ArticleAppRoute {
  static Route generateRoute(RouteSettings settings) {
    if (settings.name == '/'){
      return MaterialPageRoute(builder: (context) => ArticleList());
    }
    if (settings.name == ArticleDetail.routeName) {
      Article article = settings.arguments as Article;
      return MaterialPageRoute(
        builder: (context) => ArticleDetail(
          article: article,)
      );
    }

    return MaterialPageRoute(builder: (context) => ArticleList());
  }
}

