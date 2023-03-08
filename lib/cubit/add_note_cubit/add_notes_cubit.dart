import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/constants.dart';

part 'add_notes_states.dart';

class NotesCubit extends Cubit<AddNotesStates>
{
  NotesCubit() : super(AddNotesInitial());
  addNote(NoteModel note)
  async {
    emit(AddNotesLoading());
    try
    {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNotesSuccess());
    }
    catch(error)
    {
      AddNotesFailure(error.toString());
      emit(AddNotesFailure(error.toString()));
    }
  }
}