import 'package:flutter/material.dart';

class IconButtonExample extends StatelessWidget {
  const IconButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      IconButton(
          splashColor: Colors.blue,
          onPressed: () {
            print("button gedrückt");
          },
          icon: const Icon(Icons.home, color: Colors.white)),
      TextButton(
          onPressed: () {
            print("Text Button gerückt");
          },
          child: Container(
              color: Colors.grey,
              child: const Text("Text Button",
                  style: TextStyle(color: Colors.white)))),
      const SizedBox(
        height: 20,
      )
    ]);
  }
}
