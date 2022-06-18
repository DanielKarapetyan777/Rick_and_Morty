import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/character_bloc.dart';

class CharactersList extends StatefulWidget {
  const CharactersList({
    Key? key,
  }) : super(key: key);

  @override
  State<CharactersList> createState() => _CharactersListState();
}

class _CharactersListState extends State<CharactersList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterBloc, UserState>(
      builder: (context, state) {
        if (state is UserLoadingState) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is UserLoadedState) {
          return ListView.builder(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            itemCount: 20,
            itemBuilder: (context, index) => Wrap(
              spacing: 20,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 200,
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Container(
                        height: 240,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 39, 189, 59),
                        ),
                        child:
                            Image.network("${state.loadedUser[index].image}"),
                      ),
                      Container(
                        height: 60,
                        width: 200,
                        alignment: Alignment.centerLeft,
                        color: const Color.fromARGB(115, 32, 133, 128),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            '${state.loadedUser[index].name}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
        if (state is UserErrorState) {
          return const Center(
            child: Text(
              "Error fetching characters",
              style: TextStyle(fontSize: 20),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
