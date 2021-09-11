import 'package:skill_learn_client/auth/repository/user-repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'user_event.dart';
import 'user_state.dart';

class AuthenticationBloc extends Bloc<UserEvent, AuthenticationState> {
  final UserRepository userRepository;

  AuthenticationBloc({required this.userRepository})
      : super(AuthenticationFailure());

  @override
  Stream<AuthenticationState> mapEventToState(UserEvent event) async* {
    if (event is UserSignUp) {
      try {
        await userRepository.signup(event.user);
        yield AuthenticationSuccess();
      } catch (_) {
        yield AuthenticationFailure();
      }
    }

    if (event is UserLogin) {
      try {
        await userRepository.login(event.user);
        yield AuthenticationSuccess();
      } catch (_) {
        yield AuthenticationFailure();
      }
    }
  }
}
