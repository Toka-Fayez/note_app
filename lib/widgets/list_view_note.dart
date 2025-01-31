import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/widgets/note_item.dart';

class ListViewNote extends StatelessWidget {
  const ListViewNote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes??[];
        return Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount:notes.length,
            itemBuilder: (context, index) {
              return  Note_Item(note: notes[index],);
            },
          ),
        );
      },
    );
  }
}
