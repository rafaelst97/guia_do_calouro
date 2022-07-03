import 'package:flutter/material.dart';
import 'package:guia_do_calouro/controllers/cadastro_controller.dart';
import 'package:guia_do_calouro/widgets/genericos/titulo.dart';
import 'package:guia_do_calouro/widgets/tela_cadastro/botao_confirmar_cadastro.dart';
import '../widgets/genericos/inputs.dart';

class TelaCadastro extends StatefulWidget {
  CadastroController fieldsController = CadastroController();

  TelaCadastro({Key? key}) : super(key: key);

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Titulo("Cadastro"),
            InputGenerico("Nome", "Fulano", false, widget.fieldsController.nome),
            InputGenerico("Sobrenome", "de Tal", false, widget.fieldsController.sobrenome),
            InputEmail("E-mail", "fulano@email.com", false, widget.fieldsController.email),
            InputCpf(widget.fieldsController.cpf),
            InputNumerico("Matrícula", "1234", widget.fieldsController.matricula),
            InputSenha("Senha", "****", widget.fieldsController.senha),
            InputSenha("Confirmar senha", "****", widget.fieldsController.confirmacaoSenha),
            BotaoCadastrar(widget.fieldsController),
          ],
        ),
      ),
    );
  }
}
