import 'package:flutter/material.dart';
import 'package:guia_do_calouro/widgets/genericos/titulo.dart';
import 'package:guia_do_calouro/widgets/home/card_tempo.dart';
import 'package:guia_do_calouro/widgets/home/cards_noticias.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Guia do Calouro"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Titulo("Previsão do tempo"),
            CardTempo(),
            Titulo("Notícias"),
            CardNoticia(),
          ],
        ),
      ),
    );
  }
}
