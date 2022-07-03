import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ContaController {
  CollectionReference ref = FirebaseFirestore.instance.collection("usuarios");
  TextEditingController nome = TextEditingController();
  TextEditingController sobrenome = TextEditingController();
  TextEditingController cpf = TextEditingController();
  TextEditingController matricula = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController senha = TextEditingController();
  TextEditingController confirmacaoSenha = TextEditingController();

  atualizar(BuildContext context, String emailLogado){
    if (nome.text == "" ||
        sobrenome.text == "" ||
        email.text == "" ||
        cpf.text == "" ||
        matricula.text == "" ||
        senha.text == "" ||
        confirmacaoSenha.text == "") {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Preencha todos os campos!"),
      ));
    } else if (senha.text != confirmacaoSenha.text) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Senhas não conferem!"),
      ));
    } else {
      ref.doc(emailLogado).set({
        "nome": nome.text,
        "sobrenome": sobrenome.text,
        "email": email.text,
        "cpf": cpf.text,
        "matricula": matricula.text,
        "senha": senha.text
      });
      Navigator.pop(context);
    }
  }
}
