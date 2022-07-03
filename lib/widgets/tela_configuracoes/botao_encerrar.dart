import 'package:flutter/material.dart';
import 'package:guia_do_calouro/screens/login.dart';

class BotaoEncerrarSessao extends StatelessWidget {
  const BotaoEncerrarSessao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TelaLogin()),
          );
        },
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: const BorderSide(color: Colors.blue)),
        )),
        child: const Text(
          "Encerrar Sessão",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
