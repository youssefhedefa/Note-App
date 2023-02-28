import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 16, top: 28),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: CustomTextField(
                label: 'Title',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: SizedBox(
                height: 120,
                child: CustomTextField(
                  label: 'Description',
                  expand: true,
                ),
              ),
            ),
            SizedBox(
              height: 48,
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
