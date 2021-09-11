import 'package:skill_learn_client/content/repository/creator-repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'creator_event.dart';
import 'creator_state.dart';

class CreatorBloc extends Bloc<CreatorEvent, CreatorState> {
  final CreatorRepository creatorRepository;

  CreatorBloc({required this.creatorRepository}) : super(CreatorLoading());

  @override
  Stream<CreatorState> mapEventToState(CreatorEvent event) async* {
    if (event is CreatorLoad) {
      yield CreatorLoading();
      try {
        final creators = await creatorRepository.fetchAll();
        yield CreatorOperationSuccess(creators);
      } catch (_) {
        yield CreatorOperationFailure();
      }
    }
  }
}
