import 'package:skill_learn_client/content/models/article.dart';

class User {
  final String id;
  final String email;
  final String? password;

  User({required this.id, required this.email, this.password});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(id: json['id'], email: json['email']);
  }
}
