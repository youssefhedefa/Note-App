import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/note_view_cubit/note_view_cubit.dart';
import 'package:note_app/cubit/note_view_cubit/note_view_state.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view.dart';

import 'custom_note_item.dart';

class NoteList extends StatelessWidget {
  const NoteList({Key? key}) : super(key: key);
  final List<Color> pickColor = const [Color(0xFFFFB300),Colors.lightGreen,Colors.lightBlue,Color(0xFFFF80AB)];

  @override
  Widget build(BuildContext context) {

    List<NoteModel> notes = BlocProvider.of<NoteViewCubit>(context).notes;

    return BlocBuilder<NoteViewCubit,NoteViewState>(
      builder: (BuildContext context, state) => Expanded(child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) =>  Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: GestureDetector(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const EditNoteView();
                  }));
                },
                child: NoteItem(color: pickColor[index%4],)
            ),
          ),
          //itemCount: state is NoteViewSuccessState ? state.notes.length : 0,
          itemCount: notes.length,

        ),
      ),)
    );
  }
}
