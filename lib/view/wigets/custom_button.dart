import 'package:flutter/material.dart';

import '../../contants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: kPrimaryColor),
      child: MaterialButton(
          onPressed: () {},
          child: const Text(
            'Add',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          )),
    );
  }
}
