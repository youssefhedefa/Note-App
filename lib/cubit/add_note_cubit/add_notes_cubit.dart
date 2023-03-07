import 'package:bloc/bloc.dart';

part 'add_notes_states.dart';

class NotesCubit extends Cubit<AddNotesStates>
{
  NotesCubit() : super(AddNotesInitial());
}