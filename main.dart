import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: Row(
          children: [
            Expanded(
              child: Column(
                children: const [
                  Text('Aprendendo'),
                  Text('Programação'),
                  Text('Flutter'),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Enviar'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Cancelar'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Salvar'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
