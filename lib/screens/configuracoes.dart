import 'package:flutter/material.dart';
import 'package:guia_do_calouro/widgets/genericos/titulo.dart';
import '../widgets/tela_configuracoes/botao_encerrar.dart';
import '../widgets/tela_configuracoes/lista_configuracoes.dart';



class TelaConfiguracoes extends StatelessWidget {
  String email = "";

  TelaConfiguracoes(this.email);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Configurações"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Titulo("Configurações"),
          ListaConfiguracoes(email),
          BotaoEncerrarSessao(),
        ],
      ),
    );
  }
}
