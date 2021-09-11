import 'package:skill_learn_client/content/models/models.dart';
import 'package:equatable/equatable.dart';

abstract class CreatorState extends Equatable {
  const CreatorState();

  @override
  List<Object> get props => [];
}

class CreatorLoading extends CreatorState {}

class CreatorOperationSuccess extends CreatorState {
  final Iterable<Creator> creators;

  CreatorOperationSuccess([this.creators = const []]);

  @override
  List<Object> get props => [creators];
}

class CreatorOperationFailure extends CreatorState {}
