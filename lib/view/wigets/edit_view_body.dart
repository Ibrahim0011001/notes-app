import 'package:flutter/material.dart';
import 'package:notesapp/view/wigets/custom_text_field.dart';
import 'package:notesapp/view/wigets/customappbar.dart';

class EditviewBody extends StatelessWidget {
  const EditviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppbar(
            text: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(hint: 'Title'),
          SizedBox(
            height: 50,
          ),
          CustomTextField(
            hint: 'Content',
            maxlines: 5,
          )
        ],
      ),
    );
  }
}
