import 'package:flutter/material.dart';
import 'package:noteapp/contstant.dart';
import 'package:noteapp/widgets/custom_show_model_bottom.dart';
import 'package:noteapp/widgets/note_view_body.dart';

class NoteAppView extends StatelessWidget {
  const NoteAppView({super.key});
  static String id = 'NopeAppView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: KPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const CustomShowModelBottom();
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
 body: const Note_View_Body(),
   
    );
  }
}
