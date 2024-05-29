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
          child: Column(
            children: [
              CustomTextField(
                hint: 'title',
                maxlines: 1,
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                hint: 'Context',
                maxlines: 5,
              ),
              SizedBox(
                height: 40,
              ),
              CustomButton(),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
