import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            "Parabéns!",
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(onPressed: (() {}), child: Text("Retornar")),
      ],
    );
  }
}
