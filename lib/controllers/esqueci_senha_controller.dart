import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class RecuperacaoSenhaController {
  CollectionReference ref = FirebaseFirestore.instance.collection("usuarios");
  TextEditingController email = new TextEditingController();

  recuperaSenha(BuildContext context) {
    String senha = "";
    ref.doc(email.text).get().then((snapshot) => {
      snapshot.data().forEach((key, value) {
        if (key == "email" && value == email.text){
          snapshot.data().forEach((key, value) {
            if (key == "senha"){
              senha = value;
            }
          });
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(senha),
          ));
        }else{
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Usuário não encontrado"),
          ));
        }
      })
    });
  }
}
