import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/view/wigets/note_item.dart';

import '../../models/note_model.dart';

class notes_list_view extends StatelessWidget {
  const notes_list_view({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
        builder: (BuildContext context, state) {
      List<Notemodel> notes = BlocProvider.of<NotesCubit>(context).notes!;
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 7.0),
                child: Newitem(
                  note: notes[index],
                ),
              );
            }),
      );
    });
  }
}
