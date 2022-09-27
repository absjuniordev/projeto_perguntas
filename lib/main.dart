import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  //esta classe vai gerenciar o estado
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      //gerencia as aterações de estados
      _perguntaSelecionada++;
    });
  }

  Widget build(BuildContext context) {
    final perguntas = [
      "Qual a sua cor favorita?",
      "Qual o seu animal favorito?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text('Perguntas')),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            Resposta("Resposta 1", _responder),
            Resposta("Resposta 2", _responder),
            Resposta("Resposta 3", _responder),
          ],
        ),
      ),
    );
  }
}

@override
class PerguntaApp extends StatefulWidget {
  //o 'runApp(PerguntaApp())' identifica q o componente retorna um 'State'
  _PerguntaAppState createState() {
    //
    return _PerguntaAppState();
  }
}
