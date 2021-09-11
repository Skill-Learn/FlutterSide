import 'package:skill_learn_client/auth/models/user.dart';
import 'package:equatable/equatable.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();
}

class UserSignUp extends UserEvent {
  final User user;

  const UserSignUp(this.user);

  @override
  List<Object> get props => [user];

  @override
  String toString() => 'User Signed up {user: $user}';
}

class UserLogin extends UserEvent {
  final User user;

  const UserLogin(this.user);

  @override
  List<Object> get props => [user];

  @override
  String toString() => 'User Logged in {user: $user}';
}
