part of 'character_bloc.dart';

abstract class UserState {}

//class UserInitial extends UserState {}

class UserLoadingState extends UserState {}

class UserLoadedState extends UserState {
  List<dynamic> loadedUser;
  UserLoadedState({required this.loadedUser});
}

class UserErrorState extends UserState {}
