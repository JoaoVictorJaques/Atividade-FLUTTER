import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> botoes = [];
  String textobotao = 'Botão criado';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botão Dinâmico'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
            TextField(onChanged: (Text) {
              textobotao = Text;
              if (kDebugMode) {
                print(textobotao);
              }
            }),
            ElevatedButton(
              child: const Text('Criar botão'),
              onPressed: () {
                setState(() {
                  botoes.add(ElevatedButton(
                    child: Text(textobotao),
                    onPressed: () {
                      if (kDebugMode) {
                        print('Botão criado dinamicamente!');
                      }
                    },
                  ));
                });
              },
            ),
            const SizedBox(height: 16.0),
            Column(
              children: botoes,
            ),
          ],
        ),
      ),
    );
  }
}
