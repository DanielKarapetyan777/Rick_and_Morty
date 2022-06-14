part of 'character_bloc.dart';

@immutable
abstract class UserEvent {}

class ClicEvent extends UserEvent {}

class BackEvent extends UserEvent {}
