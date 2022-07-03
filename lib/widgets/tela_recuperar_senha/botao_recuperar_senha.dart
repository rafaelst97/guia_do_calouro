import 'package:flutter/material.dart';
import 'package:guia_do_calouro/controllers/esqueci_senha_controller.dart';

class BotaoRecuperarSenha extends StatelessWidget {
  RecuperacaoSenhaController senhaController;

  BotaoRecuperarSenha(this.senhaController);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
      child: ElevatedButton(
        onPressed: () {
          senhaController.recuperaSenha(context);
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
        child: const Text(
          "Recuperar senha",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
