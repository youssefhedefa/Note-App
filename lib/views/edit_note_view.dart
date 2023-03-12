import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/note_view_cubit/note_view_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widget/custom_app_bar.dart';
import 'package:note_app/views/widget/custom_text_field.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({Key? key, required this.note}) : super(key: key);

  final NoteModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {

  String? title,subTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  [
          CustomAppBar(
            text: 'Edit Note',
            icon: Icons.done,
            onPressed: ()
            {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NoteViewCubit>(context).fetchNotes();
              Navigator.pop(context);

            },
          ),
           Padding(
            padding: const EdgeInsets.only(
              top: 32,
              bottom: 14,
              left: 16,
              right: 16,
            ),
            child: CustomTextField(
                label: 'Title',
              hint: widget.note.title ,
              onChanged: (value)
              {
                title = value;
              },
            ),
          ),
           SizedBox(
            height: 160,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextField(
                label: 'Description',
                hint: widget.note.subTitle,
                expand: true,
                onChanged: (value)
                {
                  subTitle = value;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
