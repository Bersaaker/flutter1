import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  void incrementar() {
    contador++;
    setState(() {});
  }

  void decrementar() {
    contador--;
    setState(() {});
  }

  void reset() {
    contador = 0;
    setState(() {});
  }

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
        floatingActionButton: customActionButton(
          decrease: decrementar,
          increase: incrementar,
          reset: reset,
        ));
  }
}

class customActionButton extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function reset;

  const customActionButton({
    super.key,
    required this.increase,
    required this.decrease,
    required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.black45,
          foregroundColor: Colors.grey,
          onPressed: () => decrease(),
          child: const Icon(Icons.exposure_minus_1),
        ),
        FloatingActionButton(
          backgroundColor: Colors.black45,
          foregroundColor: Colors.grey,
          onPressed: () => reset(),
          child: const Icon(Icons.restore),
        ),
        FloatingActionButton(
          backgroundColor: Colors.black45,
          foregroundColor: Colors.grey,
          onPressed: () => increase(),
          child: const Icon(Icons.exposure_plus_1),
        ),
      ],
    );
  }
}
