import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
part ' notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
}
