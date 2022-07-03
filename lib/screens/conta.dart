import 'package:flutter/material.dart';
import 'package:guia_do_calouro/controllers/conta_controller.dart';
import 'package:guia_do_calouro/widgets/genericos/titulo.dart';
import 'package:guia_do_calouro/widgets/tela_conta/botao_atualiza_cadastro.dart';

import '../widgets/genericos/inputs.dart';

class TelaConta extends StatefulWidget{
  String email = "";

  TelaConta(this.email);

  ContaController controller = ContaController();

  @override
  State<TelaConta> createState() => _TelaContaState();
}

class _TelaContaState extends State<TelaConta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conta"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("assets/images/login.png",
            width: 200,
            height: 200,),
            Titulo("Alteração de dados"),
            InputGenerico("Nome", "Fulano", false, widget.controller.nome),
            InputGenerico("Sobrenome", "de Tal", false, widget.controller.sobrenome),
            InputEmail("E-mail", "fulano@email.com", false, widget.controller.email),
            InputCpf(widget.controller.cpf),
            InputNumerico("Matrícula", "1234", widget.controller.matricula),
            InputSenha("Senha", "****", widget.controller.senha),
            InputSenha("Confirmar senha", "****", widget.controller.confirmacaoSenha),
            BotaoAtualizaCadastro(widget.controller, widget.email),
          ],
        ),
      ),
    );
  }
}