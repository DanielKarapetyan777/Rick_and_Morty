import 'package:bloc/bloc.dart';
import 'package:flutter_application_4/services/character_repository.dart';
import 'package:meta/meta.dart';

import '../models/character.dart';

part 'character_event.dart';
part 'character_state.dart';

class CharacterBloc extends Bloc<UserEvent, UserState> {
  final CharacterRepository characterRepository;
  CharacterBloc(this.characterRepository) : super(UserLoadingState()) {
    on<StartEvent>((event, emit) async {
      emit(UserLoadingState());
      try {
        final List<User> loudeduserlist =
            await characterRepository.getAllUsers();
        emit(UserLoadedState(loadedUser: loudeduserlist));
      } catch (_) {
        emit(UserErrorState());
      }
    });
  }
}
