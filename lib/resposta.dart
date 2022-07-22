import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(
    this.texto,
    this.quandoSelecionado,
    {Key? key}
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.teal),
        child: Text(
          texto,
          style: const TextStyle(color: Colors.white),
        ),
        onPressed: quandoSelecionado,
      ),
    );
  }
}