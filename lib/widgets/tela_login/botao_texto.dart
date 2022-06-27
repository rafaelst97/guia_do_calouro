import 'package:flutter/material.dart';

class BotaoTexto extends StatelessWidget {
  final String textoBotao;

  const BotaoTexto(this.textoBotao, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {}, child: Text(textoBotao));
  }
}
