import 'package:flutter/material.dart';
import 'package:flutter_application_4/bloc/character_bloc.dart';
import 'package:flutter_application_4/services/character_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'conponents/character_list.dart';

class HomePage extends StatelessWidget {
  final characterRepository = CharacterRepository();
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CharacterBloc(characterRepository),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Rick and Morty',
            style: TextStyle(fontSize: 35, color: Colors.amber),
          ),
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 23, 192, 204),
        ),
        backgroundColor: Colors.white,
        body: const CharactersList(),
      ),
    );
  }
}
