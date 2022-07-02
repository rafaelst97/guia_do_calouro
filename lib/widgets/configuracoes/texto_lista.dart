import 'package:flutter/material.dart';

class TextoLista extends StatelessWidget {
  final String texto;

  const TextoLista(this.texto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: const TextStyle(fontSize: 18, fontFamily: 'Roboto'),
    );
  }
}
