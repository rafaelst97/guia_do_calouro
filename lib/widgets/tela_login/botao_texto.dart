import 'package:flutter/material.dart';
import 'package:guia_do_calouro/screens/recuperar_senha.dart';

class BotaoTexto extends StatelessWidget {
  final String textoBotao;

  const BotaoTexto(this.textoBotao, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TelaRecuperacaoSenha()),
          );
        },
        child: Text(textoBotao));
  }
}
