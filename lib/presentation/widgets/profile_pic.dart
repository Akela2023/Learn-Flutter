import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 230,
        width: 200,
        child: Stack(
          children: [
            const SizedBox(
              height: 200,
              child: CircleAvatar(
                  radius: 200,
                  backgroundImage: AssetImage("assets/images/1.png")),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Marc",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "Ich werde Millionär sein",
                          style: TextStyle(
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ))),
          ],
        ));
  }
}
