import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/constants.dart';
part 'add_notes_states.dart';

class AddNotesCubit extends Cubit<AddNotesStates>
{
  AddNotesCubit() : super(AddNotesInitial());
  addNote(NoteModel note) async
  {
    emit(AddNotesLoading());
    try
    {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNotesSuccess());

    }
    catch(e)
    {
      debugPrint(e.toString());
      emit(AddNotesFailure(e.toString()));
    }
  }
}