import 'package:flutter/material.dart';
import '../widgets/genericos/inputs.dart';
import '../widgets/tela_login/botao.dart';
import '../widgets/tela_login/botao_cadastro.dart';
import '../widgets/tela_login/botao_texto.dart';

class TelaLogin extends StatelessWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Guia do Calouro"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/login.png",
              height: 250,
            ),
            const InputEmail("Usuário", "usuario@email.com", true),
            const InputSenha("Senha", "****"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                BotaoCadastro(),
                Botao(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  BotaoTexto("Esqueci minha senha"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
