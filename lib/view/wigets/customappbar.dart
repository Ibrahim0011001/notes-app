import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar(
      {super.key, required this.text, required this.icon, this.onPressed});
  final String text;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 28),
        ),
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(.05),
              borderRadius: BorderRadius.circular(16)),
          child: IconButton(
            icon: Icon(
              icon,
              size: 28,
            ),
            onPressed: onPressed,
          ),
        )
      ],
    );
  }
}
