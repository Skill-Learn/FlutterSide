import 'package:skill_learn_client/content/models/models.dart';
import 'package:equatable/equatable.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserLoading extends UserState {}

class UserOperationSuccess extends UserState {
  final Iterable<User> users;

  UserOperationSuccess([this.users = const []]);

  @override
  List<Object> get props => [users];
}

class UserOperationFailure extends UserState {}
