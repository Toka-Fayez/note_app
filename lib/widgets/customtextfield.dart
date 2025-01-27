import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({required this.hint, this.maxLines = 1});
  String hint;
  int maxLines;
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

OutlineInputBorder Border() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: Colors.grey, width: 1),
  );
}
