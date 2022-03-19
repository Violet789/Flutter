import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    "Halo",
    "Gears of war",
    "Cuphead",
    "Assansis creed Valhalla",
    "Call of duty"
  ];
  final listIcons = const [
    Icon(Icons.add_box_outlined),
    Icon(Icons.carpenter),
    Icon(Icons.zoom_out_map_outlined),
    Icon(Icons.water_drop),
    Icon(Icons.add_task_sharp),
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview Tipo 2"),
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          leading: listIcons[index],
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: () {
            final game = options[index];
            print(game);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
