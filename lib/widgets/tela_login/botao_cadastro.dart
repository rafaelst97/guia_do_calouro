import 'package:flutter/material.dart';

class BotaoCadastro extends StatelessWidget {
  const BotaoCadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
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
