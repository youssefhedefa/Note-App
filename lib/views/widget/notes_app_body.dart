import 'package:flutter/material.dart';
import 'package:note_app/views/widget/custom_app_bar.dart';
import 'note_list_view.dart';

class NotesAppBody extends StatelessWidget {
  const NotesAppBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(text: 'Notes',icon: Icons.search,),
        NoteList(),
      ],
    );
  }
}

