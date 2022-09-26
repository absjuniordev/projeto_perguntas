import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

@override
class PerguntaApp extends StatelessWidget {
  final perguntas = ["Qual a sua cor favorita?", "Qual o seu animal favorito?"];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text('Perguntas')),
        body: Column(
          children: [
            Text(perguntas[0]),
            const ElevatedButton(onPressed: null, child: Text("Resposta 1")),
          ],
        ),
      ),
    );
  }
}
