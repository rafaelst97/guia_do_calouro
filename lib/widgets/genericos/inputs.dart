import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guia_do_calouro/controllers/cadastro_controller.dart';

class InputGenerico extends StatefulWidget {
  final String label;
  final String hint;
  final bool focus;
  TextEditingController controller;

  InputGenerico(this.label, this.hint, this.focus, this.controller);

  @override
  State<InputGenerico> createState() => _InputGenericoState();
}

class _InputGenericoState extends State<InputGenerico> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: TextFormField(
        controller: widget.controller,
        autofocus: widget.focus,
        style: const TextStyle(fontSize: 24),
        decoration: InputDecoration(
          labelText: widget.label,
          hintText: widget.hint,
        ),
      ),
    );
  }
}

class InputSenha extends StatelessWidget {
  final String label;
  final String hint;

  const InputSenha(this.label, this.hint, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: TextFormField(
        obscureText: true,
        style: const TextStyle(fontSize: 24),
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
        ),
      ),
    );
  }
}

class InputEmail extends StatelessWidget {
  final String label;
  final String hint;
  final bool focus;
  TextEditingController controller;

  InputEmail(this.label, this.hint, this.focus, this.controller);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        style: const TextStyle(fontSize: 24),
        autofocus: focus,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
        ),
      ),
    );
  }
}

class InputCpf extends StatelessWidget {
  TextEditingController controller;

  InputCpf(this.controller);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: TextFormField(
        controller: controller,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          CpfInputFormatter(),
        ],
        keyboardType: TextInputType.number,
        style: const TextStyle(fontSize: 24),
        decoration: const InputDecoration(
          labelText: "CPF",
          hintText: "999.999.999-99",
        ),
      ),
    );
  }
}

class InputNumerico extends StatelessWidget {
  final String label;
  final String hint;

  const InputNumerico(this.label, this.hint, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: TextFormField(
        keyboardType: TextInputType.number,
        style: const TextStyle(fontSize: 24),
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
        ),
      ),
    );
  }
}
