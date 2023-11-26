import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/presentation/widgets/custom_button.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: const Text("Ich bin bald Reich"),
          centerTitle: true),
      body: Center(
          child: CustomButton(
        buttonColor: Colors.blue,
        text: "Screen 2",
        onPressed: () {},
      )),
    );
  }
}
