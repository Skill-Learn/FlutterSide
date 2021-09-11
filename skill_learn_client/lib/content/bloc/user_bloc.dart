import 'package:skill_learn_client/content/repository/user-repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'user_event.dart';
import 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;

  UserBloc({required this.userRepository}) : super(UserLoading());

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    if (event is UserLoad) {
      yield UserLoading();
      try {
        final users = await userRepository.fetchAll();
        yield UserOperationSuccess(users);
      } catch (_) {
        yield UserOperationFailure();
      }
    }
  }
}
