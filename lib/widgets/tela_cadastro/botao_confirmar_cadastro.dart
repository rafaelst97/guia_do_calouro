import 'package:flutter/material.dart';

class BotaoCadastrar extends StatelessWidget {
  const BotaoCadastrar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
      child: ElevatedButton(
        onPressed: () {
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
