import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1,this.onSaved, this.onChanged});
  final String hint;
  final int maxLines;
 final void Function(String?)? onSaved;
 final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
  onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'This Field is Reqired';
        } else {
          return null;
        }
      },
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
