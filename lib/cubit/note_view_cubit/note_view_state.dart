import '../../models/note_model.dart';

abstract class NoteViewState {}

class NoteViewInitialState extends NoteViewState {}

class NoteViewLoadingState extends NoteViewState {}

class NoteViewSuccessState extends NoteViewState {
  final List<NoteModel> notes;

  NoteViewSuccessState(this.notes);
}

class NoteViewFailureState extends NoteViewState {
  final String errMessage;
  NoteViewFailureState(this.errMessage);
}
