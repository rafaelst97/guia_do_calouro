import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputEmail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: TextField(
        inputFormatters: [],
        autofocus: true,
        style: TextStyle(fontSize: 24),
        decoration: InputDecoration(
          labelText: "Usuário",
          hintText: "user@email.com",
        ),
      ),
    );
  }
}

class InputSenha extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: TextField(
        inputFormatters: [],
        autofocus: true,
        obscureText: true,
        style: TextStyle(fontSize: 24),
        decoration: InputDecoration(
          labelText: "Usuário",
          hintText: "user@email.com",
        ),
      ),
    );
  }
}