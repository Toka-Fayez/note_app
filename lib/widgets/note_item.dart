import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteapp/models/note_model.dart';

class Note_Item extends StatelessWidget {
  const Note_Item({
    super.key,
    required this.note,
  });
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: const EdgeInsets.only(top: 24, left: 16, bottom: 24),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(
                  top: 18.0,
                  bottom: 18,
                ),
                child: Text(
                  note.subTitle,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(154, 0, 0, 0),
                  ),
                ),
              ),
              trailing: IconButton(
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 24,
                ),
                onPressed: () {
                  note.delete();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 24,
              ),
              child: Text(
                note.date,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(109, 0, 0, 0),
                ),
              ),
            ),
            /*  SizedBox(
              height: 24,
            )*/
          ],
        ),
      ),
    );
  }
}
