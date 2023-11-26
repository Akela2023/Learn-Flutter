import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/presentation/navigation_example_screens/screen1.dart';
import 'package:fluttergrundlagen/presentation/navigation_example_screens/screen2.dart';

import 'package:fluttergrundlagen/root.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          "/root": (BuildContext countext) => const RootWidget(),
          "/screen1": (BuildContext countext) => const Screen1(),
          "/screen2": (BuildContext countext) => const Screen2(),
        },
        // home: WidgetsExamplesPage()
        home: const RootWidget()); //kommentar
  }
}
