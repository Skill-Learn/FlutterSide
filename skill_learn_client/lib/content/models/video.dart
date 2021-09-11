class Video{
  final int? id;
  final String title;
  final String description;
  final String creator;
  final String link;

  Video({
    required this.id,
    required this.title,
    required this.description,
    required this.creator,
    required this.link,
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      creator: json['creator'],
      link: json['link']
    );
  }
}