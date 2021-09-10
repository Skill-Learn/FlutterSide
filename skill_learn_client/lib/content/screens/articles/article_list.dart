import 'package:flutter/material.dart';
import 'package:skill_learn_client/content/bloc/article_bloc.dart';
import 'package:skill_learn_client/content/bloc/article_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'article_route.dart';
import 'article_detail.dart';

class ArticleList extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<ArticleBloc, ArticleState>(
          builder: (_, state) {
      if (state is ArticleOperationFailure) {
        return Text('Could not load articles');
      }

      if (state is ArticleOperationSuccess) {
        final articles = state.articles;

        return ListView.builder(
          itemCount: articles.length,
          itemBuilder: (_, index) => ListTile(
            title: Text('${articles.elementAt(index).title}'),
            subtitle: Text('${articles.elementAt(index).description}'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ArticleDetail(article: articles.elementAt(index)))),
          ),
        );
      }
      return CircularProgressIndicator();
    }));
  }
}
