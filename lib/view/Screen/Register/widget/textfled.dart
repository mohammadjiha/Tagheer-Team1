import 'package:flutter/material.dart';

class Textfeild extends StatelessWidget {
  final String hint;
  final bool obscur;
  final TextInputType Type;
  final TextEditingController textEditingController;

  const Textfeild(
      {super.key,
      required this.hint,
      required this.obscur,
      required this.Type,
      required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      keyboardType: Type,
      obscureText: obscur,
      textAlign: TextAlign.end,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
