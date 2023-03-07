import 'package:bloc/bloc.dart';
import 'package:note_app/models/note_model.dart';

part 'add_notes_states.dart';

class NotesCubit extends Cubit<AddNotesStates>
{
  NotesCubit() : super(AddNotesInitial());
  addNote(NoteModel note)
  {

  }
}