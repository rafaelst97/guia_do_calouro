import 'package:flutter/material.dart';
import 'package:guia_do_calouro/controllers/cadastro_controller.dart';
import 'package:guia_do_calouro/controllers/login_controller.dart';
import '../widgets/genericos/inputs.dart';
import '../widgets/tela_login/botao.dart';
import '../widgets/tela_login/botao_cadastro.dart';
import '../widgets/tela_login/botao_texto.dart';

class TelaLogin extends StatefulWidget {
  LoginController controller = new LoginController();

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
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
            InputEmail("Usuário", "usuario@email.com", false, widget.controller.email),
            InputSenha("Senha", "****", widget.controller.senha),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BotaoCadastro(),
                Botao(widget.controller),
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
