import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/tela_login/botao.dart';
import '../widgets/tela_login/botao_cadastro.dart';
import '../widgets/tela_login/botao_texto.dart';
import '../widgets/tela_login/input_box.dart';

class TelaLogin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guia do Calouro"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/login.png",
              height: 250,
            ),
            InputBox("Usuário", "fulano@email.com"),
            InputBox("Senha", "****"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BotaoTexto("Esqueci minha senha"),
                Botao(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BotaoCadastro(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}