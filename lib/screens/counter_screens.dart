import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    const TextStyle estiloTexto = TextStyle(
      fontSize: 25,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.amber[100],
          backgroundColor: Colors.red[800],
          title: const Text('Aguacate Verde Podrido'),
          elevation: 10,
        ),
        backgroundColor: Color.fromARGB(255, 11, 45, 13),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Numero de aguacates podridos:',
              style: estiloTexto,
            ),
            Text(
              '$contador',
              style: estiloTexto,
            ),
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.black45,
              foregroundColor: Colors.grey,
              onPressed: () => setState(() => contador--),
              child: const Icon(Icons.exposure_minus_1),
            ),
            FloatingActionButton(
              backgroundColor: Colors.black45,
              foregroundColor: Colors.grey,
              onPressed: () => setState(() => contador = 0),
              child: const Icon(Icons.restore),
            ),
            FloatingActionButton(
              backgroundColor: Colors.black45,
              foregroundColor: Colors.grey,
              onPressed: () => setState(() => contador++),
              child: const Icon(Icons.exposure_plus_1),
            ),
          ],
        ));
  }
}
