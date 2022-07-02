import 'package:flutter/material.dart';
import 'package:guia_do_calouro/widgets/configuracoes/texto_lista.dart';

class ListaConfiguracoes extends StatelessWidget {
  const ListaConfiguracoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: const [
          ListTile(
            leading: Icon(Icons.notifications),
            title: TextoLista("Notificações"),
          ),
          ListTile(
            leading: Icon(Icons.security),
            title: TextoLista("Segurança"),
          ),
          ListTile(
            leading: Icon(Icons.supervisor_account_rounded),
            title: TextoLista("Conta"),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: TextoLista("Privacidade"),
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: TextoLista("Sobre"),
          )
        ],
      ),
    );
  }
}
