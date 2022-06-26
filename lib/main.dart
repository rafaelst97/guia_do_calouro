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
              Image.asset("assets/images/login.png",
              height: 250,),
              InputBox("Usuário", "fulano@email.com"),
              InputBox("Senha", "****"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                BotaoTexto("Esqueci minha senha"),
                  Botao(),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}

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

class BotaoTexto extends StatelessWidget{
  late final String textoBotao;

  BotaoTexto(this.textoBotao);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){}, child: Text(textoBotao));
  }
}

class Botao extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){}, child: Text("Login"));
  }

}
