import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key, this.color, required this.note}) : super(key: key);
  final Color? color;
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 24, bottom: 20),
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
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  note.subTitle,
                  // maxLines: 3,
                  // overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Text(
                note.date,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 16,
                ),
              ),
            ), //date
          ],
        ),
      ),
    );
  }
}
