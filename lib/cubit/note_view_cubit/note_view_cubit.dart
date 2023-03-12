
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/constants.dart';

import 'note_view_state.dart';

class NoteViewCubit extends Cubit<NoteViewState>
{
  NoteViewCubit() : super(NoteViewInitialState());

  fetchNotes()
  {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      emit(NoteViewSuccessState(noteBox.values.toList()));
  }
}