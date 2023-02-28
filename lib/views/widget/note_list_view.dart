import 'package:flutter/material.dart';

import 'custom_note_item.dart';

class NoteList extends StatelessWidget {
  const NoteList({Key? key}) : super(key: key);
  final List<Color> pickColor = const [Color(0xFFFFB300),Colors.lightGreen,Colors.lightBlue,Color(0xFFFF80AB)];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) =>  Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: NoteItem(color: pickColor[index%4],),
          ),
          itemCount: 20,
        ),
      ),
    );
  }
}
