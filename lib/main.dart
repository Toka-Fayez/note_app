import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/contstant.dart';
import 'package:noteapp/views/note_view.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
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
