import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/cubit/note_view_cubit/note_view_cubit.dart';
import 'package:note_app/models/note_model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key, this.color, required this.note}) : super(key: key);
  final Color? color;
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        padding: EdgeInsets.only(left: 16.w, top: 24.h, bottom: 20.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26.sp,
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 10.0.h, bottom: 10.0.h),
                child: Text(
                  note.subTitle,
                  // maxLines: 3,
                  // overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 18.sp,
                  ),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NoteViewCubit>(context).fetchNotes();
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30.sp,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(right: 24.0.w),
              child: Text(
                note.date,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 16.sp,
                ),
              ),
            ), //date
          ],
        ),
      ),
    );
  }
}
