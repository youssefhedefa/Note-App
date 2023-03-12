import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/note_view_cubit/note_view_cubit.dart';
import 'package:note_app/views/constants.dart';
import 'package:note_app/views/widget/add_note_bottom_sheet.dart';
import 'package:note_app/views/widget/notes_app_body.dart';

//Main Screen
class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteViewCubit()..fetchNotes(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                });
          },
          backgroundColor: primaryColor,
          child: const Icon(
            Icons.add,
          ),
        ),
        body: const NotesAppBody(),
      ),
    );
  }
}
