
import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/constants.dart';

import 'note_view_state.dart';

class NoteViewCubit extends Cubit<NoteViewState>
{
  NoteViewCubit() : super(NoteViewInitialState());
  List<NoteModel> notes = [];
  fetchNotes()
  {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      notes = noteBox.values.toList();
  }
}