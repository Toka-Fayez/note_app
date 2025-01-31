part of 'notes_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesInitial extends NotesCubitState {}
final class NotesLoading extends NotesCubitState {}
final class NotesSuccess extends NotesCubitState {
  final List<NoteModel> notes;
 NotesSuccess(this.notes);
}
final class NotesCubitFailer extends NotesCubitState {
    final String? errorMaaasage;
  NotesCubitFailer({this.errorMaaasage});
}


