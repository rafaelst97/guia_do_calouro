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

class InputSenha extends StatefulWidget {
  final String label;
  final String hint;
  TextEditingController controller;

  InputSenha(this.label, this.hint, this.controller);

  @override
  State<InputSenha> createState() => _InputSenhaState();
}

class _InputSenhaState extends State<InputSenha> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: TextFormField(
        controller: widget.controller,
        obscureText: true,
        style: const TextStyle(fontSize: 24),
        decoration: InputDecoration(
          labelText: widget.label,
          hintText: widget.hint,
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

class InputCpf extends StatefulWidget {
  TextEditingController controller;

  InputCpf(this.controller);

  @override
  State<InputCpf> createState() => _InputCpfState();
}

class _InputCpfState extends State<InputCpf> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: TextFormField(
        controller: widget.controller,
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

class InputNumerico extends StatefulWidget {
  final String label;
  final String hint;
  TextEditingController controller;

  InputNumerico(this.label, this.hint, this.controller);

  @override
  State<InputNumerico> createState() => _InputNumericoState();
}

class _InputNumericoState extends State<InputNumerico> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: TextInputType.number,
        style: const TextStyle(fontSize: 24),
        decoration: InputDecoration(
          labelText: widget.label,
          hintText: widget.hint,
        ),
      ),
    );
  }
}
