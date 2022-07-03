import 'package:flutter/material.dart';
import 'package:guia_do_calouro/widgets/genericos/titulo.dart';
import 'package:guia_do_calouro/widgets/tela_cadastro/botao_confirmar_cadastro.dart';
import '../widgets/genericos/inputs.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

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
          children: const [
            Titulo("Cadastro"),
            InputGenerico("Nome", "Fulano", false),
            InputGenerico("Sobrenome", "de Tal", false),
            InputEmail("E-mail", "fulano@email.com", false),
            InputCpf(),
            InputNumerico("Matrícula", "1234"),
            InputSenha("Senha", "****"),
            InputSenha("Confirmar senha", "****"),
            BotaoCadastrar(),
          ],
        ),
      ),
    );
  }
}
