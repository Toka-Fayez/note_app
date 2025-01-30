import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/contstant.dart';
import 'package:noteapp/cubits/add_note_cubit/add_note_state.dart';
import 'package:noteapp/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) {
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSucess());
      noteBox.add(note);
    } catch (e) {
      AddNoteFailer(errorMaaasage: e.toString());
    }
  }
}
