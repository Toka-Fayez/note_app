import 'package:flutter/material.dart';
import 'package:noteapp/widgets/add_note_bottom_sheet.dart';
import 'package:noteapp/widgets/customtextfield.dart';

class CustomShowModelBottom extends StatelessWidget {
  const CustomShowModelBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
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
                SizedBox(
                  height: 32,
                ),
                AddNoteBottomSheet(),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
