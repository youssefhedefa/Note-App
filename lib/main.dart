import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/constants.dart';
import 'package:note_app/views/notes_view.dart';
import '';
import 'bloc_observer.dart';
import 'cubit/add_note_cubit/add_notes_cubit.dart';

void main() async {

  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  Bloc.observer = MyBlocObserver();
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

