import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //Si definiera una variable aqui, seria una propiedad
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrement() {
    counter--;
    setState(() {});
  }

  void restart() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //const double _tamain = 20;//Variable para defirnir el tamaño de letra de abajo
    const fontSizeUno = TextStyle(fontSize: 20 /*_tamain*/);

    return Scaffold(
      appBar: AppBar(
        title: const Text("CounterScreen"),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Contador de clicks", style: fontSizeUno),
            Text("$counter", style: fontSizeUno),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingAction(
        increaseFn: increase,
        decrementFn: decrement,
        restartFn: restart,
      ),
    );
  }
}

class CustomFloatingAction extends StatelessWidget {
  final Function increaseFn;
  final Function decrementFn;
  final Function restartFn;

  const CustomFloatingAction({
    Key? key,
    required this.increaseFn,
    required this.decrementFn,
    required this.restartFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decrementFn(),
        ),
        //const SizedBox(width: 50),
        FloatingActionButton(
          child: const Icon(Icons.restart_alt_outlined),
          onPressed: () => restartFn(),
        ),
        //const SizedBox(width: 50),
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () => increaseFn(),
        ),
      ],
    );
  }
}
