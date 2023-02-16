import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int contador = 0;
    const TextStyle estiloTexto = TextStyle(
      fontSize: 30,
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
              'Numero de taps:',
              style: estiloTexto,
            ),
            Text(
              '$contador',
              style: estiloTexto,
            ),
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black45,
          foregroundColor: Colors.grey,
          onPressed: () {
            contador++;
            print('Presionaste el Boton $contador veces');
          },
          child: const Icon(Icons.add_circle_outline),
        ));
  }
}
