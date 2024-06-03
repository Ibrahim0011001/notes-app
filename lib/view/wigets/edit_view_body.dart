import 'package:flutter/material.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/view/wigets/custom_text_field.dart';
import 'package:notesapp/view/wigets/customappbar.dart';

class EditviewBody extends StatefulWidget {
  const EditviewBody({super.key, required this.note});
  final Notemodel note;

  @override
  State<EditviewBody> createState() => _EditviewBodyState();
}

class _EditviewBodyState extends State<EditviewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppbar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              Navigator.pop(context);
            },
            text: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
              onchanged: (value) {
                title = value;
              },
              hint: 'Title'),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            onchanged: (value) {
              content = value;
            },
            hint: 'Content',
            maxlines: 5,
          )
        ],
      ),
    );
  }
}
