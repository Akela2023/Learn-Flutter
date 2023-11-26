import 'package:flutter/material.dart';

class ContainerTextExample extends StatelessWidget {
  const ContainerTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      //width: 300,
      decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(
            color: Colors.black,
            width: 4,
          ),
          borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 8,
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 20),
            height: 100,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10)),
            child: const Text(
              "Text Beispiel",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontFamily: "Rubik",
                  fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
