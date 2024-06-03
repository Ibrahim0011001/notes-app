import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/contants.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/simble_bloc_observer.dart';

import 'package:notesapp/view/note_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimbleBlocObserver();
  Hive.registerAdapter(NotemodelAdapter());

  await Hive.openBox<Notemodel>(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        home: const Scaffold(
          body: NotesView(),
        ),
      ),
    );
  }
}
