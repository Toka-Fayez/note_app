import 'package:flutter/material.dart';
import 'package:noteapp/widgets/add_note_form.dart';


class CustomShowModelBottom extends StatelessWidget {
  const CustomShowModelBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: AddNoteForm(),
          ),
        ),
      ),
    );
  }
}
