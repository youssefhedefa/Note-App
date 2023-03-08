import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/add_note_cubit/add_notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/constants.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, description;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: CustomTextField(
              label: 'Title',
              onSaved: (value) {
                title = value;
              },
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'this field is required';
                } else {
                  return null;
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: SizedBox(
              height: 120,
              child: CustomTextField(
                label: 'Description',
                expand: true,
                onSaved: (value) {
                  description = value;
                },
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'this field is required';
                  } else {
                    return null;
                  }
                },
              ),
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          CustomButton(
            onPressed: () {
              debugPrint('object');
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();

                var note = NoteModel(
                    title: 'title',
                    subTitle: 'subTitle',
                    date: DateTime.now().toString(),
                    color: primaryColor.value);
                BlocProvider.of<AddNotesCubit>(context).addNote(note);
              } else {
                autoValidateMode = AutovalidateMode.always;
              }
            },
          ),
        ],
      ),
    );
  }
}
