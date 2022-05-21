import 'package:flutter/material.dart';

main() => runApp(const PerguntaApp());

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  void responder() {
    print('Pergunta respondida!');
  }

  void Function() funcaoQueRetornaUmaOutraFuncao() {
    return() {
      print('Pergunta respondida!');
    };
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            ElevatedButton(
              child: const Text('Resposta 1'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: const Text('Resposta 2'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: const Text('Resposta 3'),
              onPressed: responder,
            ),
          ]
        )
      )
    );
  }
}
