import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

@override
class PerguntaApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text('Perguntas')),
        body: const Text('Ola flutter'),
      ),
    );
  }
}
