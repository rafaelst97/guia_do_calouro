import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CadastroController {
  CollectionReference ref = FirebaseFirestore.instance.collection("usuarios");
  TextEditingController nome = new TextEditingController();
  TextEditingController sobrenome = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController cpf = new TextEditingController();
  TextEditingController matricula = new TextEditingController();
  TextEditingController senha = new TextEditingController();
  TextEditingController confirmacaoSenha = new TextEditingController();

  salvar(BuildContext context) {
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
    }

    ref.add({
      "nome": nome.text,
      "sobrenome": sobrenome.text,
      "email": email.text,
      "cpf": cpf.text,
      "matricula": matricula.text,
      "senha": senha.text
    });
  }
}
