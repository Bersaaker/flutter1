import 'package:flutter/material.dart';
import 'package:prueba/screens/counter_screens.dart';
import 'package:prueba/screens/home_screens.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TO
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
