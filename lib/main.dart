import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text("Guia do Calouro"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/login.png"),
              InputBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class InputBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        style: TextStyle(fontSize: 24),
        decoration: InputDecoration(
          labelText: "Usuário",
          hintText: "fulano@email.com",
        ),
      ),
    );
  }

}