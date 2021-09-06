import 'package:skill_learn_client/content/models/article.dart';
import 'package:equatable/equatable.dart';

abstract class ArticleState extends Equatable{
  const ArticleState();

  @override
  List<Object> get props => [];

}

class ArticleLoading extends ArticleState{}

class ArticleOperationSuccess extends ArticleState{
  final Iterable<Article> articles;

  ArticleOperationSuccess([this.articles = const[]]);

  @override
  List<Object> get props => [articles];
}

class ArticleOperationFailure extends ArticleState {}