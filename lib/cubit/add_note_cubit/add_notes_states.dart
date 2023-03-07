part of 'add_notes_cubit.dart';
abstract class AddNotesStates{}

class AddNotesInitial extends AddNotesStates{}
class AddNotesLoading extends AddNotesStates{}
class AddNotesSuccess extends AddNotesStates{}
class AddNotesFailure extends AddNotesStates{
  final String errorMessage;

  AddNotesFailure(this.errorMessage);
}