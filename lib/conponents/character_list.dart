import 'package:flutter/material.dart';

class CharacterList extends StatelessWidget {
  const CharacterList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      alignment: WrapAlignment.center,
      children: [
        Container(
          height: 300,
          width: 200,
          color: Colors.blue,
          child: Column(children: [
            Container(
              height: 240,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 39, 189, 59),
                //image: DecorationImage(image: Image.asset(),),
              ),
            ),
            Container(
                height: 60,
                width: 200,
                alignment: Alignment.centerLeft,
                color: Color.fromARGB(115, 32, 133, 128),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Arteysu',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                )),
          ]),
        ),
      ],
    );
  }
}
