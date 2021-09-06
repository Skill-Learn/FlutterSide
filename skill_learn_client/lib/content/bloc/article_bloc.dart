import 'package:skill_learn_client/content/repository/article-repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'article_event.dart';
import 'article_state.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  final ArticleRepository articleRepository;

  ArticleBloc({required this.articleRepository}) : super(ArticleLoading());

  @override
  Stream<ArticleState> mapEventToState(ArticleEvent event) async* {
    if (event is ArticleLoad) {
      yield ArticleLoading();
      try {
        final articles = await articleRepository.fetchAll();
        yield ArticleOperationSuccess(articles);
      } catch (_) {
        yield ArticleOperationFailure();
      }
    }
    if (event is ArticleCreate) {
      try {
        await articleRepository.create(event.article);
        final courses = await articleRepository.fetchAll();
        yield ArticleOperationSuccess(courses);
      } catch (_) {
        yield ArticleOperationFailure();
      }
    }
    if (event is ArticleUpdate) {
      try {
        await articleRepository.update(event.article.id ?? 0, event.article);
        final courses = await articleRepository.fetchAll();
        yield ArticleOperationSuccess(courses);
      } catch (_) {
        yield ArticleOperationFailure();
      }
    }
    if (event is ArticleDelete) {
      try {
        await articleRepository.delete(event.id);
        final courses = await articleRepository.fetchAll();
        yield ArticleOperationSuccess(courses);
      } catch (_) {
        yield ArticleOperationFailure();
      }
    }
  }
}