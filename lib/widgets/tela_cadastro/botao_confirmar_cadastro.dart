import 'package:flutter/material.dart';
import 'package:guia_do_calouro/controllers/cadastro_controller.dart';

class BotaoCadastrar extends StatelessWidget {
  CadastroController controller;

  BotaoCadastrar(this.controller);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
      child: ElevatedButton(
        onPressed: () {
          controller.salvar();
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
        child: const Text(
          "Cadastrar",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
