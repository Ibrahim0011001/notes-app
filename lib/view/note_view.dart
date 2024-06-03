// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:notesapp/view/wigets/add_note_bottom_sheet.dart';
import 'package:notesapp/view/wigets/notes_viewbody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9)),
              context: context,
              builder: (context) {
                return Addnotebotoomsheet();
              });
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      body: const Notesviewbody(),
    );
  }
}
