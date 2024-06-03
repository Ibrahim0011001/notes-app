import 'package:flutter/material.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/view/wigets/edit_view_body.dart';

class AddNoteView extends StatelessWidget {
  const AddNoteView({super.key, required this.note});
  final Notemodel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditviewBody(
        note: note,
      ),
    );
  }
}
