import 'package:flutter/material.dart';
import 'package:notesapp/view/wigets/edit_view_body.dart';

class AddNoteView extends StatelessWidget {
  const AddNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditviewBody(),
    );
  }
}
