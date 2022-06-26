import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputBox extends StatelessWidget {
  late final String rotulo;
  late final String dica;

  InputBox(this.rotulo, this.dica);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: TextField(
        style: TextStyle(fontSize: 24),
        decoration: InputDecoration(
          labelText: rotulo,
          hintText: dica,
        ),
      ),
    );
  }
}