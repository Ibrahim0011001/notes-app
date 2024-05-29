import 'package:flutter/material.dart';

class Newitem extends StatelessWidget {
  const Newitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25, bottom: 25, left: 16),
      decoration: BoxDecoration(
          color: Colors.yellowAccent[700],
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 29),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'build your career with ibraheem raheem',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.4),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete),
                color: Colors.black,
              )),
          Padding(
            padding: const EdgeInsets.only(right: 24, bottom: 16),
            child: Text(
              'may21,2021',
              style: TextStyle(
                  color: Colors.black.withOpacity(.4),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
