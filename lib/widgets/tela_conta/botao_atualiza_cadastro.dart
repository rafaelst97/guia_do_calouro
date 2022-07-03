import 'package:flutter/material.dart';
import 'package:guia_do_calouro/controllers/conta_controller.dart';

class BotaoAtualizaCadastro extends StatelessWidget {
  ContaController controller;
  String emailLogado = "";

  BotaoAtualizaCadastro(this.controller, this.emailLogado);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
      controller.atualizar(context, emailLogado);
    }, child: Text("Atualizar Cadastro",
    style: TextStyle(
      fontSize: 18
    ),));
  }
}
