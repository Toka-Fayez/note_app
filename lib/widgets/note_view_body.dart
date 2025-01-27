import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_appBar.dart';
import 'package:noteapp/widgets/list_view_note.dart';


class Note_View_Body extends StatelessWidget {
  const Note_View_Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Custom_Appbar(),
          SizedBox(
            height: 24,
          ),
          ListViewNote(),
        ],
      ),
    );
  }
}
