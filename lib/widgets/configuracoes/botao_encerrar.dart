import 'package:flutter/material.dart';

class BotaoEncerrarSessao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Encerrar Sessão",
          style: TextStyle(fontSize: 18),
        ),
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: const BorderSide(color: Colors.blue)),
        )),
      ),
    );
  }
}
