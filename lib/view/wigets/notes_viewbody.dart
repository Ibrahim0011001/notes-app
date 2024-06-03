import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';

import 'package:notesapp/view/wigets/customappbar.dart';
import 'package:notesapp/view/wigets/notes_list_view.dart';

class Notesviewbody extends StatefulWidget {
  const Notesviewbody({super.key});

  @override
  State<Notesviewbody> createState() => _NotesviewbodyState();
}

class _NotesviewbodyState extends State<Notesviewbody> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<NotesCubit>(context).fetchallnodes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 30.0, left: 17, right: 17, bottom: 15),
      child: Column(
        children: [
          SizedBox(),
          CustomAppbar(
            text: 'Notes',
            icon: Icons.search,
          ),
          Expanded(
            child: notes_list_view(),
          )
        ],
      ),
    );
  }
}
