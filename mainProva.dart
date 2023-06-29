import 'package:flutter/material.dart';
import 'inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Questionário',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Inicio(),
    );
  }
}

class PaginaQuest extends StatefulWidget {
  const PaginaQuest({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PaginaQuestState createState() => _PaginaQuestState();
}

class _PaginaQuestState extends State<PaginaQuest> {
  int currentQuestionIndex = 0;
  List<String> questions = [
    'Pergunta 1: Qual é a capital do Brasil?',
    'Pergunta 2: Quem pintou a Mona Lisa?',
    'Pergunta 3: Quanto é 2 + 2?'
  ];
  List<List<String>> options = [
    ['Rio de Janeiro', 'Brasília', 'São Paulo', 'Salvador'],
    ['Vincent van Gogh', 'Pablo Picasso', 'Leonardo da Vinci', 'Michelangelo'],
    ['1', '2', '3', '4'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionário - Pergunta ${currentQuestionIndex + 1}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              questions[currentQuestionIndex],
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            Column(
              children: options[currentQuestionIndex]
                  .map(
                    (option) => ListTile(
                      title: Text(option),
                      onTap: () {
                        // Aqui você pode adicionar lógica para verificar a resposta selecionada
                        // e avançar para a próxima pergunta ou exibir o resultado final.
                        setState(() {
                          if (currentQuestionIndex < questions.length - 1) {
                            currentQuestionIndex++;
                          } else {
                            // Exibir resultado final ou tela de conclusão
                            // Exemplo:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Final(),
                              ),
                            );
                          }
                        });
                      },
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class Final extends StatelessWidget {
  const Final({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Questionário - Resultado'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Parabéns! Você concluiu o questionário!',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Reiniciar o questionário ou navegar para a tela inicial, se desejar
                Navigator.pop(context);
              },
              child: const Text('Reiniciar'),
            ),
          ],
        ),
      ),
    );
  }
}