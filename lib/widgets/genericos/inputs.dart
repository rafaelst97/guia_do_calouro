import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputGenerico extends StatelessWidget {
  final String label;
  final String hint;
  final bool focus;

  const InputGenerico(this.label, this.hint, this.focus, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: TextFormField(
        autofocus: focus,
        style: const TextStyle(fontSize: 24),
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
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

  // ignore: use_key_in_widget_constructors
  const InputEmail(this.label, this.hint, this.focus);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: TextFormField(
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
  const InputCpf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: TextFormField(
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
