import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/cubit/add_note_cubit/add_notes_cubit.dart';
import 'package:note_app/cubit/note_view_cubit/note_view_cubit.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Padding(
        padding:
             EdgeInsets.only(left: 12.w, right: 12.w, bottom: 16.h, top: 28.h),
        child: BlocConsumer<AddNotesCubit, AddNotesStates>(
          listener: (context, state) {
            if (state is AddNotesSuccess) {
              BlocProvider.of<NoteViewCubit>(context).fetchNotes();
              Navigator.pop(context);
            }
            if (state is AddNotesFailure) {
              debugPrint('Failure');
            }
          },
          builder: (context, state) {
            return state is AddNotesLoading
                ? const Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
                    child: AbsorbPointer(
                        absorbing: state is AddNotesLoading ? true : false,
                        child: Padding(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: const AddNoteForm(),
                        )));
          },
        ),
      ),
    );
  }
}
