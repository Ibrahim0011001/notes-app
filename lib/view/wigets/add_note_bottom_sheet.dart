import 'package:flutter/material.dart';
import 'package:notesapp/view/wigets/custom_button.dart';
import 'package:notesapp/view/wigets/custom_text_field.dart';

class Addnotebotoomsheet extends StatelessWidget {
  const Addnotebotoomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 11.0, vertical: 10),
      child: SizedBox(
        height: 400,
        child: SingleChildScrollView(
          child: AddNoteForm(),
        ),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onsaved: (value) {
              title = value;
            },
            hint: 'title',
            maxlines: 1,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onsaved: (value) {
              subtitle = value;
            },
            hint: 'Context',
            maxlines: 5,
          ),
          const SizedBox(
            height: 40,
          ),
          CustomButton(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
