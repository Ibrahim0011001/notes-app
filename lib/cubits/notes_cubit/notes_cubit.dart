import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/contants.dart';

import '../../models/note_model.dart';
part ' notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<Notemodel>? notes;

  fetchallnodes() async {
    var notesBox = Hive.box<Notemodel>(kNotesBox);

    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
