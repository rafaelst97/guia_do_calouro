import 'package:flutter/material.dart';
import 'package:guia_do_calouro/screens/configuracoes.dart';
import 'package:guia_do_calouro/widgets/genericos/titulo.dart';
import '../widgets/tela_home/card_tempo.dart';
import '../widgets/tela_home/cards_noticias.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton<int>(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) =>
                [PopupMenuItem<int>(value: 0, child: Text("Configurações"))],
          )
        ],
        title: const Text("Guia do Calouro"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Titulo("Previsão do tempo"),
            CardTempo(),
            Titulo("Notícias"),
            CardNoticia(),
            CardNoticia(),
          ],
        ),
      ),
    );
  }

  onSelected(BuildContext context, int item) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaConfiguracoes()),
    );
  }
}
