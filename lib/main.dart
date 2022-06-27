import 'package:flutter/material.dart';
import 'package:guia_do_calouro/screens/login.dart';
import 'package:guia_do_calouro/screens/recuperar_senha.dart';

import 'screens/cadastro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guia do Calouro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TelaRecuperacaoSenha(),
    );
  }
}
