import 'package:meta/meta.dart';

class Post{
  final User user;
  final String comments;
  final int follower;
  final String shares;


  const Post({
    @required this.user,
    @required this.comments,
    @required this.follower;
    @required this.shares,
  })
}