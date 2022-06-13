import 'package:flutter/material.dart';
import 'conponents/character_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: ListView(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          children: const [CharacterList()],
        ));
  }
}
