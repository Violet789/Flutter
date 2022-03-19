import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    "Halo",
    "Gears of war",
    "Cuphead",
    "Assansis creed Valhalla",
    "Call of duty"
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview Tipo 1"),
        elevation: 0,
      ),
      body: ListView(
        children: [
          ...options
              .map(
                (game) => ListTile(
                    //leading: const Icon(Icons.music_note),
                    title: Text(game),
                    trailing: const Icon(Icons.arrow_forward_ios)),
              )
              .toList(),
          Divider(),
          Text("Hola mundo"),
          Divider(),
          Text("Hola mundo"),
          Divider(),
          Text("Hola mundo"),
          Divider(),
          Text("Hola mundo"),
          /*ListTile(
            //leading: Icon(Icons.wysiwyg),
            title: Text("Hola mundo"),
          )*/
        ],
      ),
    );
  }
}
