import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_application_4/models/character.dart';

class CharacterProvider {
  //  https://rickandmortyapi.com/api/character

  Future<List<User>> getUser() async {
    Dio dio = Dio();
    final response = await dio.get('https://rickandmortyapi.com/api/character');
    print(response);
    try {
      final List<dynamic> userjson = json.decode(response.data);
      return userjson.map((json) => User.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Error fetching');
    }
  }
}
