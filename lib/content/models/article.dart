class Article{
  final int? id;
  final String title;
  final String description;
  final String content;
  final String creator;
  final DateTime date;

  Article({
    required this.id,
    required this.title,
    required this.description,
    required this.content,
    required this.creator,
    required this.date
  });

  factory Article.fromJson(Map<String, dynamic> json){
    return Article(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      content: json['content'],
      creator: json['creator'],
      date: json['date']
    );
  }
}