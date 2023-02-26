import 'package:flutter/material.dart';
import 'package:note_app/views/widget/custom_app_bar.dart';
class NotesAppBody extends StatelessWidget {
  const NotesAppBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: const [
        CustomAppBar(),
      ],
    );
  }
}
