import 'package:flutter/material.dart';
import 'package:noteapp/widgets/note_view_body.dart';

class NoteAppView extends StatelessWidget {
  const NoteAppView({super.key});
  static String id = 'NopeAppView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Note_View_Body(),
    );
  }
}
