import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BotaoTexto extends StatelessWidget {
  late final String textoBotao;

  BotaoTexto(this.textoBotao);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {}, child: Text(textoBotao));
  }
}