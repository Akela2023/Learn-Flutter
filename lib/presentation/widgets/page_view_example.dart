import 'package:flutter/material.dart';

class PageViewExample extends StatelessWidget {
  const PageViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.2,
      child: PageView(
        controller: PageController(viewportFraction: 0.90),
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SingelPage(
              size: size,
              titel: 'Millionärs App',
              text: 'Ich werde reicht mit der App Progerammierung',
            ),
          ),
          SingelPage(
            size: size,
            titel: '1.000.000',
            text: 'Ich werde reicht mit der App Progerammierung',
          ),
        ],
      ),
    );
  }
}

class SingelPage extends StatelessWidget {
  final Size size;
  final String titel;
  final String text;
  const SingelPage(
      {super.key, required this.size, required this.titel, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey[700], borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Text(titel,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
              const SizedBox(
                height: 20,
              ),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ));
  }
}
