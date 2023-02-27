import 'package:flutter/material.dart';
import 'package:note_app/views/widget/notes_app_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
        child: const Icon(
            Icons.add,
        ),
      ),
      body: const NotesAppBody(),
    );
  }
}

