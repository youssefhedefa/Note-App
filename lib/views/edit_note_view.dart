import 'package:flutter/material.dart';
import 'package:note_app/views/widget/custom_app_bar.dart';
import 'package:note_app/views/widget/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomAppBar(),
          Padding(
            padding: EdgeInsets.only(
              top: 32,
              bottom: 14,
              left: 16,
              right: 16,
            ),
            child: CustomTextField(label: 'Title'),
          ),
          SizedBox(
            height: 160,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextField(
                label: 'Description',
                expand: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
