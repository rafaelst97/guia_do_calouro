// @dart=2.9
import 'package:flutter/material.dart';
import 'package:guia_do_calouro/screens/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guia do Calouro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TelaLogin(),
    );
  }
}
