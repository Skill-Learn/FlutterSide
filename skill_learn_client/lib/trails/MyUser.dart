class MyUser {
  final int? id;
  final String username;
  final String password;
  final String profilePicture;
  final List<dynamic> subscriptions;

  MyUser({
    required this.id,
    required this.username,
    required this.password,
    required this.profilePicture,
    required this.subscriptions,
  });

  factory MyUser.fromJson(Map<String, dynamic> json) {
    return MyUser(
      id: json['id'],
      username: json['username'],
      password: json['password'],
      profilePicture: json['profilePicture'],
      subscriptions: json['subscritptions'],
    );
  }
}
