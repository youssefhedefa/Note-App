import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key,this.color}) : super(key: key);
  final Color? color;
  //NoteItem({this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 16),
      child: Container(
        padding: const EdgeInsets.only(
            left: 16,
            top: 24,
            bottom: 24
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:  [
            ListTile(
              title: const Text(
                'First note',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ) ,
              subtitle:  Padding(
                padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
                child: Text(
                  'Description To Our Note Bla Bla Bla Bla Bla Bla Bla Bla Bla',
                  // maxLines: 3,
                  // overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 20,
                  ),

                ),
              ),
              trailing: IconButton(
                  onPressed: (){},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30,
                  )),
            ),
            Padding(
              padding: const  EdgeInsets.only(right: 24.0),
              child:  Text(
                'Mar 1 ,2023',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 16,
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}