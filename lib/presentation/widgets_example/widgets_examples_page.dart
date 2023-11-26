import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/presentation/widgets/container_text_example.dart';
import 'package:fluttergrundlagen/presentation/widgets/row_expanded_example.dart';
import 'package:fluttergrundlagen/presentation/widgets/profile_pic.dart';
import 'package:fluttergrundlagen/presentation/widgets/rectangular_image.dart';
import 'package:fluttergrundlagen/presentation/widgets/media_query_example.dart';
import 'package:fluttergrundlagen/presentation/widgets/page_view_example.dart';
import 'package:fluttergrundlagen/presentation/widgets/icon_button_example.dart';
import 'package:fluttergrundlagen/presentation/widgets/custom_button.dart';

class WidgetsExamplesPage extends StatelessWidget {
  const WidgetsExamplesPage({super.key});
  static const apptitle = "Marc´s App";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
            leading: const Icon(Icons.home, size: 30),
            centerTitle: true,
            backgroundColor: Colors.blue[200],
            title: const Text(apptitle)),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ContainerTextExample(),
              const SizedBox(height: 10),
              const RowExpandedExample(),
              const SizedBox(height: 10),
              const ProfilePicture(),
              const SizedBox(height: 10),
              const RectImage(),
              const SizedBox(height: 10),
              const MediaQueryExample(),
              const SizedBox(height: 10),
              const PageViewExample(),
              const IconButtonExample(),
              const SizedBox(height: 10),
              CustomButton(
                buttonColor: Colors.green,
                onPressed: () {
                  Navigator.of(context).pushNamed("/screen1");
                },
                text: '1 Million',
              ),
              const SizedBox(height: 13),
              CustomButton(
                  buttonColor: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/screen2");
                  },
                  text: '2 Million')
            ],
          ),
        )));
  }
}
