import 'dart:html';

import 'package:skill_learn_client/content/models/article.dart';
import 'package:equatable/equatable.dart';


abstract class ArticleEvent extends Equatable {
  const ArticleEvent();
}

class ArticleLoad extends ArticleEvent {
  const ArticleLoad(); 

  @override
  List<Object> get props => [];
}

class ArticleCreate extends ArticleEvent {
  final Article article; 
   
  const ArticleCreate(this.article);

  @override
  List<Object?> get props => [article];

  @override
  String toString() => 'Article Created {article: $article}';
}

class ArticleUpdate extends ArticleEvent {
  final Article article;

  const ArticleUpdate(this.article);

  @override
  List<Object?> get props => [article];

  @override
  String toString() => 'Article Updated {article: $article}';

}
class ArticleDelete extends ArticleEvent {
  final int id;

  const ArticleDelete(this.id);

  @override
  List<Object?> get props => [id];

  @override
  String toString() => 'Article Deleted {article: $id}';

}