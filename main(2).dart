import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atividade Flutter',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> words = ['Aprendendo', 'Programação', 'Flutter'];

  final List<String> buttonLabels = ['Enviar', 'Cancelar', 'Salvar'];

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atividade Flutter'),
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (String word in words)
                  Text(
                    word,
                    style: const TextStyle(fontSize: 24.0),
                  ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (String label in buttonLabels)
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(label),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
