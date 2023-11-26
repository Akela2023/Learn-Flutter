import 'package:flutter/material.dart';

class RectImage extends StatelessWidget {
  const RectImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset("assets/images/1.png", fit: BoxFit.cover),
      ),
    );
  }
}
