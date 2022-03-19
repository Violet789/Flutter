import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  //Si definiera una variable aqui, seria una propiedad
  @override
  Widget build(BuildContext context) {
    //const double _tamain = 20;//Variable para defirnir el tamaño de letra de abajo
    const fontSizeUno = TextStyle(fontSize: 20 /*_tamain*/);

    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text("Contador de clicks", style: fontSizeUno),
            Text("100", style: fontSizeUno),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.adb),
        onPressed: () {},
      ),
    );
  }
}
