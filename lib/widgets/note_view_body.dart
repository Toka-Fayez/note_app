import 'package:flutter/material.dart';
import 'package:noteapp/views/edit_note_view.dart';
import 'package:noteapp/widgets/custom_appBar.dart';
import 'package:noteapp/widgets/list_view_note.dart';

class Note_View_Body extends StatelessWidget {
  const Note_View_Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNoteView();
            },
          ),
        );
      },
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Custom_Appbar(
              title: 'notes',
              icon: Icons.search,
            ),
            SizedBox(
              height: 24,
            ),
            ListViewNote(),
          ],
        ),
      ),
    );
  }
}
