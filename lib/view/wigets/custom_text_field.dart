import 'package:flutter/material.dart';

import '../../contants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxlines = 1, this.onsaved});
  final String hint;
  final int maxlines;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Fiels is requierd';
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxlines,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: kPrimaryColor),
          border: buildborder(),
          enabledBorder: buildborder(),
          focusedBorder: buildborder(kPrimaryColor)),
    );
  }

  OutlineInputBorder buildborder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
