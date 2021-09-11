class Creator {
  final int? id;
  final String username;
  final String password;
  final String profilePicture;

  Creator({
    required this.id,
    required this.username,
    required this.password,
    required this.profilePicture,
  });

  factory Creator.fromJson(Map<String, dynamic> json) {
    return Creator(
      id: json['id'],
      username: json['username'],
      password: json['password'],
      profilePicture: json['profilePicture'],
    );
  }
}
