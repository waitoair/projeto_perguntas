import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  Questao(this.texto);

  get blue => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
          texto,
          style: const TextStyle(fontSize: 30, color: Color.fromARGB(255, 120, 0, 56)),
          textAlign: TextAlign.center,
        ),
    );
  }
}