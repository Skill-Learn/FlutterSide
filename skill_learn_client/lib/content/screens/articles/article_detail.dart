import 'package:flutter/material.dart';
import 'package:skill_learn_client/content/bloc/article_bloc.dart';
import 'package:skill_learn_client/content/bloc/article_event.dart';
import 'package:skill_learn_client/content/models/article.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'article_route.dart';
import 'article_list.dart';

class ArticleDetail extends StatelessWidget {
  static const routeName = 'articleDetail';
  final Article article;

  ArticleDetail({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Article"),
      ),
      body: Card(
        child: Column(
          children: [
            ListTile(
              title: Text(this.article.title),
              subtitle: Text(this.article.description),
            ),
            Text(
              "Article by: ${this.article.creator}",
              style: TextStyle(color: Colors.black26),
            ),
            Text(
              this.article.content
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              " Date: ${this.article.date}",
            ),
          ],
        ),
      ),
    );
  }
}
