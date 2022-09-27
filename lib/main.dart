import 'package:flutter/material.dart';
import './questao.dart';

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
            ElevatedButton(onPressed: _responder, child: Text("Resposta 1")),
            ElevatedButton(onPressed: _responder, child: Text("Resposta 2")),
            ElevatedButton(onPressed: _responder, child: Text("Resposta 3"))
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
