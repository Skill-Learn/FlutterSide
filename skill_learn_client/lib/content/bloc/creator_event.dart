import 'package:skill_learn_client/content/models/models.dart';
import 'package:equatable/equatable.dart';

abstract class CreatorEvent extends Equatable {
  const CreatorEvent();
}

class CreatorLoad extends CreatorEvent {
  const CreatorLoad();

  @override
  List<Object> get props => [];
}
