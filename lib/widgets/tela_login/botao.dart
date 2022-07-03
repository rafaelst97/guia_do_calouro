import 'package:flutter/material.dart';
import 'package:guia_do_calouro/controllers/login_controller.dart';

class Botao extends StatelessWidget {
  LoginController controller;

  Botao(this.controller);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        controller.logar(context);
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
      child: const Text("Login"),
    );
  }
}
