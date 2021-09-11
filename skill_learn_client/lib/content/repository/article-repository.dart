import 'package:skill_learn_client/content/models/article.dart';
import 'package:skill_learn_client/content/data_provider/article-data-provider.dart';

class ArticleRepository {
  final ArticleDataProvider dataProvider;
  ArticleRepository(this.dataProvider);

  Future<Article> create(Article article) async {
    return this.dataProvider.create(article);
  }

  Future<Article> update(int id, Article article) async {
    return this.dataProvider.update(id, article);
  }
  Future<List<Article>> fetchAll() async {
    // print(this.dataProvider.fetchAll());
    return await this.dataProvider.fetchAll();
    
  }
  Future<void> delete(int id) async {
    return this.dataProvider.delete(id);
  }
}