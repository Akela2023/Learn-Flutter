import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/application/theme_servic.dart';
import 'package:provider/provider.dart';

class ThemaAnimationPage extends StatelessWidget {
  const ThemaAnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
            leading: const Icon(Icons.home, size: 30),
            centerTitle: true,
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            title: const Text("Theme Animation")),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Material(
            borderRadius: BorderRadius.circular(15),
            elevation: 20,
            child: ConstrainedBox(
              constraints: const BoxConstraints(minWidth: double.infinity),
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Theme.of(context).colorScheme.primary),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Test Heading",
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 16),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        "Test Body",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(fontSize: 14),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Dark Theme",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(fontSize: 14),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Switch(
                              value: themeService.isDarkModeOn,
                              onChanged: (value) {
                                Provider.of<ThemeService>(context,
                                        listen: false)
                                    .toggleTheme();
                              }),
                        ],
                      )
                    ]),
              ),
            ),
          ),
        )),
      );
    });
  }
}
