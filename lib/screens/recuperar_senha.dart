import 'package:flutter/material.dart';
import 'package:guia_do_calouro/widgets/genericos/texto.dart';
import 'package:guia_do_calouro/widgets/tela_recuperar_senha/botao_recuperar_senha.dart';

import '../widgets/genericos/inputs.dart';
import '../widgets/genericos/titulo.dart';

class TelaRecuperacaoSenha extends StatelessWidget {
  const TelaRecuperacaoSenha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Titulo("Recuperação de Senha"),
              Texto("Informe o seu e-mail cadastrado para realizar a recuperação da senha"),
              InputEmail("E-mail", "fulano@email.com", false),
              BotaoRecuperarSenha(),
            ],
          ),
        ),
      ),
    );
  }
}