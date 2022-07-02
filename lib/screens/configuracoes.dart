import 'package:flutter/material.dart';
import 'package:guia_do_calouro/widgets/genericos/titulo.dart';
import '../widgets/tela_configuracoes/botao_encerrar.dart';
import '../widgets/tela_configuracoes/lista_configuracoes.dart';



class TelaConfiguracoes extends StatelessWidget {
  const TelaConfiguracoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Configurações"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          Titulo("Configurações"),
          ListaConfiguracoes(),
          BotaoEncerrarSessao(),
        ],
      ),
    );
  }
}
