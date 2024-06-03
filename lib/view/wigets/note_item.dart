import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/view/edit_note_view.dart';

import '../../models/note_model.dart';

class Newitem extends StatelessWidget {
  const Newitem({super.key, required this.note});
  final Notemodel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const AddNoteView(),
        ));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 25, bottom: 25, left: 16),
        decoration: BoxDecoration(
            color: Color(note.color), borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 29),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    note.subtitle,
                    style: TextStyle(
                        color: Colors.black.withOpacity(.4),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchallnodes();
                  },
                  icon: const Icon(Icons.delete),
                  color: Colors.black,
                )),
            Padding(
              padding: const EdgeInsets.only(right: 24, bottom: 16),
              child: Text(
                note.date,
                style: TextStyle(
                    color: Colors.black.withOpacity(.4),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
