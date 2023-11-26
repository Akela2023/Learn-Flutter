import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/presentation/counter_app/counter_app_page.dart';
import 'package:fluttergrundlagen/presentation/widgets_example/widgets_examples_page.dart';

class RootWidget extends StatefulWidget {
  const RootWidget({super.key});

  @override
  State<RootWidget> createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  int _currentIndex = 0;

  @override // test‚
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [WidgetsExamplesPage(), CounterAppPage()],
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
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "Beispiele"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Counter")
          ]),
    );
  }
}
