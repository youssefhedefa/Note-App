import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/cubit/note_view_cubit/note_view_cubit.dart';
import 'package:note_app/cubit/note_view_cubit/note_view_state.dart';
import 'package:note_app/views/edit_note_view.dart';
import '../constants.dart';
import 'custom_note_item.dart';

class NoteList extends StatelessWidget {
  const NoteList({Key? key}) : super(key: key);
  final List<Color> pickColor = const [Color(0xFFFFB300),Colors.lightGreen,Colors.lightBlue,Color(0xFFFF80AB)];

  @override
  Widget build(BuildContext context) {


    return BlocBuilder<NoteViewCubit,NoteViewState>(
      builder: (BuildContext context, state) => Expanded(child: Padding(
        padding: EdgeInsets.symmetric(vertical: 14.h),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) =>  Padding(
            padding: EdgeInsets.symmetric(vertical: 4.h),
            child: GestureDetector(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  EditNoteView(note: notes[index],);
                  }));
                },
                child: NoteItem(
                  note: notes[index],
                  color: pickColor[index%4],
                )
            ),
          ),
          //itemCount: state is NoteViewSuccessState ? state.notes.length : 0,
          itemCount: notes.length,
        ),
      ),)
    );
  }
}
