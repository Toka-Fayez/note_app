import 'package:flutter/material.dart';
import 'package:noteapp/views/edit_note_view.dart';
import 'package:noteapp/views/note_view.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(const Notes_App());
}

class Notes_App extends StatelessWidget {
  const Notes_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NoteAppView(),
    );
  }
}
