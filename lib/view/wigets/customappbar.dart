import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Notes',
          style: TextStyle(fontSize: 28),
        ),
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(.05),
              borderRadius: BorderRadius.circular(16)),
          child: const Icon(
            Icons.search,
            size: 28,
          ),
        )
      ],
    );
  }
}
