import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  //esta classe vai gerenciar o estado
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
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
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(onPressed: responder, child: Text("Resposta 1")),
            ElevatedButton(onPressed: responder, child: Text("Resposta 2")),
            ElevatedButton(onPressed: responder, child: Text("Resposta 3"))
          ],
        ),
      ),
    );
  }
}

@override
class PerguntaApp extends StatefulWidget {
  //o 'runApp(PerguntaApp())' identifica q o componente retorna um 'State'
  PerguntaAppState createState() {
    //
    return PerguntaAppState();
  }
}
