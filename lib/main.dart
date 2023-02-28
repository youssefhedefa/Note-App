import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:note_app/views/constants.dart';
import 'package:note_app/views/notes_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      theme: ThemeData(
        primarySwatch: primaryColor,
        brightness: Brightness.dark,
        fontFamily: 'Poppins',

      ),
      debugShowCheckedModeBanner: false,
      home: const NotesView(),
    );
  }
}

