import 'package:flutter/material.dart';
import 'package:notesapp/view/wigets/custom_text_field.dart';

class Addnotebotoomsheet extends StatelessWidget {
  const Addnotebotoomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 11.0, vertical: 10),
      child: Column(
        children: [CustomTextField()],
      ),
    );
  }
}
