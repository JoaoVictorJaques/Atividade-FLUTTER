// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var contador = 0;

  final perguntas = [
    "Sua cor favorita?",
    "Seu animal favorito?",
    "Sua rede social favorita?",
    "Sua comida preferida?"
  ];

  void clicou() {
    setState(() {
      contador++;
    });
    print(contador);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Meu primeiro APP!'),
        ),
        body: Column(
          children: [
            Text(perguntas[contador]),
            ElevatedButton(onPressed: clicou, child: const Text('Clique aqui')),
            ElevatedButton(
                onPressed: () {
                  print("outra função");
                },
                child: const Text('Clique aqui')),
            ElevatedButton(
                onPressed: () {
                  print("outra função");
                },
                child: const Text('Clique aqui')),
            ElevatedButton(
                onPressed: () => print("Função arrow"),
                child: const Text('Clique aqui')),
          ],
        ),
      ),
    );
  }

  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }
}
