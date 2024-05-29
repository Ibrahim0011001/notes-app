import 'package:flutter/material.dart';
import 'package:notesapp/view/wigets/customappbar.dart';
import 'package:notesapp/view/wigets/note_item.dart';

class Notesviewbody extends StatefulWidget {
  const Notesviewbody({super.key});

  @override
  State<Notesviewbody> createState() => _NotesviewbodyState();
}

class _NotesviewbodyState extends State<Notesviewbody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 30.0, left: 17, right: 17, bottom: 15),
      child: Column(
        children: [
          const SizedBox(),
          const CustomAppbar(
            text: 'Notes',
            icon: Icons.search,
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 7.0),
                child: Newitem(),
              );
            }),
          )
        ],
      ),
    );
  }
}
