import 'package:flutter/material.dart';
import 'package:guia_do_calouro/screens/cadastro.dart';

class BotaoCadastro extends StatelessWidget {
  const BotaoCadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TelaCadastro()),
          );
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: const BorderSide(color: Colors.blue)),
          ),
        ),
        child: const Text(
          "Cadastre-se",
        ));
  }
}
