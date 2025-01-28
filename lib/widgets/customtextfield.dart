import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
 const CustomTextField({super.key, required this.hint, this.maxLines = 1});
  final String hint;
 final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        border: Border(),
        enabledBorder: Border(),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
OutlineInputBorder Border() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: Colors.grey, width: 1),
  );
}
