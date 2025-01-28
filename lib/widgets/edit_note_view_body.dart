
import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_appBar.dart';
import 'package:noteapp/widgets/customtextfield.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
      Custom_Appbar(
      title: 'Edit Note',
      icon: Icons.done, 
    ), 
          SizedBox(
            height: 24,
          ),
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Contant',
            maxLines: 8,
          ),
        ],
      ),
    );
  }
}
