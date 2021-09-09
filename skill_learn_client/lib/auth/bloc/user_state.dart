import 'package:skill_learn_client/auth/models/user.dart';
import 'package:equatable/equatable.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

class AuthenticationSuccess extends AuthenticationState {}

class AuthenticationFailure extends AuthenticationState {}
