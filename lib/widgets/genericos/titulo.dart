// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {
  final String titulo;

  const Titulo(this.titulo);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        titulo,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 36,
          color: Colors.black54,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
