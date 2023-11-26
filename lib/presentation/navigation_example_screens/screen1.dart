import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/presentation/widgets/custom_button.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Ich bin bald Reich"),
          centerTitle: true),
      body: Center(
          child: CustomButton(
        buttonColor: Colors.grey,
        text: "Navigate Back",
        onPressed: () {
          Navigator.of(context).pop();
        },
      )),
    );
  }
}
