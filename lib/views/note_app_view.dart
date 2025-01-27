import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_appBar.dart';
import 'package:noteapp/widgets/note_item.dart';

class NoteAppView extends StatelessWidget {
  const NoteAppView({super.key});
  static String id = 'NopeAppView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Custom_Appbar(),
            SizedBox(
              height: 24,
            ),
            Note_Item(),
          ],
        ),
      ),
    );
  }
}
