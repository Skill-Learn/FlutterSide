class User {
  final int? id;
  final String? username;
  final String? password;
  final String? profilePicture;
  final List<dynamic>? subscriptions;

  User({
    this.id,
    this.username,
    this.password,
    this.profilePicture,
    this.subscriptions,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      username: json['username'],
      password: json['password'],
      profilePicture: json['profilePicture'],
      subscriptions: json['subscriptions'],
    );
  }
}
