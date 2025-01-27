
import 'package:flutter/material.dart';
import 'package:noteapp/widgets/note_item.dart';

class ListViewNote extends StatelessWidget {
  const ListViewNote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Note_Item();
        },
      ),
    );
  }
}
