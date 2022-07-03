import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:guia_do_calouro/screens/conta.dart';
import 'package:guia_do_calouro/widgets/tela_configuracoes/texto_lista.dart';

class ListaConfiguracoes extends StatefulWidget {
  String email = "";

  ListaConfiguracoes(this.email);

  @override
  State<ListaConfiguracoes> createState() => _ListaConfiguracoesState();
}

class _ListaConfiguracoesState extends State<ListaConfiguracoes> {
  CollectionReference ref = FirebaseFirestore.instance.collection("usuarios");

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          ListTile(
            leading: Icon(Icons.notifications),
            title: TextoLista("Notificações"),
            onTap: (){
              ref.doc("notificacoes").get().then((snapshot) => {
                snapshot.data().forEach((key, value) {

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(value),
                  ));
                })
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.security),
            title: TextoLista("Segurança"),
            onTap: (){
              ref.doc("seguranca").get().then((snapshot) => {
                snapshot.data().forEach((key, value) {

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(value),
                  ));
                })
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.supervisor_account_rounded),
            title: TextoLista("Conta"),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TelaConta(widget.email)),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: TextoLista("Privacidade"),
            onTap: (){
              ref.doc("privacidade").get().then((snapshot) => {
                snapshot.data().forEach((key, value) {

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(value),
                  ));
                })
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: TextoLista("Sobre"),
            onTap: (){
              ref.doc("autores").get().then((snapshot) => {
                snapshot.data().forEach((key, value) {

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Autores: " + value.toString()),
                  ));
                })
              });
            },
          )
        ],
      ),
    );
  }
}
