abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSucess extends AddNoteState {}

class AddNoteFailer extends AddNoteState {
  final String? errorMaaasage;
  AddNoteFailer({this.errorMaaasage});
}
