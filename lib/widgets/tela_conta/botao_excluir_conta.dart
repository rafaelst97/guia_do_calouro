import 'package:flutter/material.dart';
import 'package:guia_do_calouro/controllers/conta_controller.dart';

class BotaoExcluirConta extends StatelessWidget {
  ContaController controller;
  String emailLogado = "";

  BotaoExcluirConta(this.controller, this.emailLogado);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.red),
        onPressed: () {
          controller.excluir(context, emailLogado);
        },
        child: Text(
          "ExcluirConta",
          style: TextStyle(fontSize: 18),
        ));
  }
}
