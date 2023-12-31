import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/presentation/counter_app/counter_app_page.dart';
import 'package:fluttergrundlagen/presentation/widgets_example/widgets_examples_page.dart';
import 'package:fluttergrundlagen/presentation/theme_animation/theme_animation_page.dart';

class RootWidget1 extends StatefulWidget {
  const RootWidget1({super.key});

  @override
  State<RootWidget1> createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget1> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
          // inhalte werden zwischengespeichert beim wechsel der pages
          index: _currentIndex,
          children: const [
            WidgetsExamplesPage(),
            CounterAppPage(),
            ThemaAnimationPage()
          ] //seiten verlinkung
          ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          items: const [
            // liste untem auf dem bildschirm
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "Beispiele"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Counter"),
            BottomNavigationBarItem(
                icon: Icon(Icons.color_lens), label: "Theme")
          ]),
    );
  }
}
