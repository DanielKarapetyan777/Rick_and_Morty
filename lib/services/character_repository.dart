import 'package:flutter_application_4/models/character.dart';
import 'package:flutter_application_4/services/character_api_provider.dart';

class CharacterRepository {
  CharacterProvider characterProvider = CharacterProvider();
  Future<List<User>> getAllUsers() => characterProvider.getUser();
}
