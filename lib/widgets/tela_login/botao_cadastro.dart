import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BotaoCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.grey),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.blue)),
          ),
        ),
        child: Text("Cadastre-se",
        style: TextStyle(color: Colors.black) ,));
  }
}
