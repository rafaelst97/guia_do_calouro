import 'package:flutter/material.dart';
import 'package:guia_do_calouro/widgets/configuracoes/lista_configuracoes.dart';
import 'package:guia_do_calouro/widgets/genericos/titulo.dart';

import '../widgets/configuracoes/botao_encerrar.dart';

class TelaConfiguracoes extends StatelessWidget {
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
          ListaConfiguracoes(),
          BotaoEncerrarSessao(),
        ],
      ),
    );
  }
}
