import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:guia_do_calouro/screens/home.dart';

class LoginController {
  CollectionReference ref = FirebaseFirestore.instance.collection("usuarios");
  TextEditingController email = TextEditingController();
  TextEditingController senha = TextEditingController();
  bool emailValido = false;
  bool senhaValida = false;

  logar(BuildContext context) {
    ref.doc(email.text).get().then((snapshot) => {
          snapshot.data().forEach((key, value) {
            if (key == "email" && value == email.text) {
              emailValido = true;
            }
            if (key == "senha" && value == senha.text){
              senhaValida = true;
            }
          })
        });

    if (emailValido == true && senhaValida == true){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Usuário ou senha inválidos"),
      ));
    }
  }
}
