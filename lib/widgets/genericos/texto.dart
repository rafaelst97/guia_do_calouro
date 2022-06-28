import 'package:flutter/material.dart';

class Texto extends StatelessWidget {
  final String texto;

  // ignore: use_key_in_widget_constructors
  const Texto(this.texto);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        texto,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black54,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}