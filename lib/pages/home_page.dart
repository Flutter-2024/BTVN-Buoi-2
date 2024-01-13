import 'package:dart_dev/widgets/CustomAdvantageWidget.dart';
import 'package:dart_dev/widgets/CustomBottomMarginUsingSizedBoxWidget.dart';
import 'package:dart_dev/widgets/CustomIconWidget.dart';
import 'package:dart_dev/widgets/CustomRightMarginUsingSizeBoxWidget.dart';
import 'package:flutter/material.dart';

import '../widgets/CustomAdvantageDetailWidget.dart';

class DartDevHomePage extends StatefulWidget {
  const DartDevHomePage({super.key, required this.title});

  final String title;

  @override
  State<DartDevHomePage> createState() => _DartDevHomePageState();
}

class _DartDevHomePageState extends State<DartDevHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: Image.network(
          'https://avatars.githubusercontent.com/u/1609975?s=200&v=4',
        ),
        title: Text(
          widget.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: const EdgeInsets.only(top: 32),
          children: const [
            ListTile(
              title: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(8),
              child: Text(
                'Check out the Dart 3.2 blog spot!This release brings enhancements to type promotion, interop capabilities, DevTools, and more.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const Divider(color: Colors.grey),
            Container(
              width: double.infinity,
              color: Theme.of(context).colorScheme.secondary,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Paint your UI to life',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    'with Dart VM\'s instant hot reload',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Container(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'An approachable, portable, and productive language for high-quality apps on any platform.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.play_circle,
                            color: Colors.blue,
                          ),
                        ),
                        WidgetSpan(
                          child: CustomRightMarginUsingSizedBoxWidget(
                            margin: 8,
                          ),
                        ),
                        TextSpan(
                          text: 'Watch video',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'Supported by ',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF4d535c),
                          ),
                        ),
                        TextSpan(
                          text: 'Google',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xFF4d535c),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Dart is free and open source',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF818487),
                          ),
                        ),
                        WidgetSpan(
                          child: CustomRightMarginUsingSizedBoxWidget(
                            margin: 8,
                          ),
                        ),
                        WidgetSpan(
                          child: CustomIconWidget(
                            url: 'https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/github-icon.png',
                            heightImage: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Container(
              width: double.infinity,
              color: Theme.of(context).colorScheme.surface,
              padding: const EdgeInsets.all(32.0),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomAdvantageWidget(
                      headerText: "Approachable",
                      descriptionText:
                          "Develop with a consistent, concise, and strongly typed programming language that offers modern features like null safety and pattern matching.",
                      icon: Icon(Icons.favorite)),
                  CustomAdvantageWidget(
                      headerText: "Productive development",
                      descriptionText:
                          "Make changes iteratively: use hot reload to see the result instantly in your running app.",
                      icon: Icon(Icons.favorite)),
                  CustomAdvantageWidget(
                      headerText: "Portable and fast on all platforms",
                      descriptionText:
                          "Compile to ARM, x64, and RISC-V machine code for mobile, desktop, and backend. Or, compile to JavaScript & WebAssembly for the web.",
                      icon: Icon(Icons.favorite)),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            const CustomAdvantageDetailWidget(
                headerText: "Approachable",
                descriptionText: [
                  "Mature and complete async-await for user interfaces containing event-driven code, paired with isolate-based concurrency.",
                  "Write safe and concise code using features like sound null safety, collection if, and pattern matching.",
                  "A consistent programming language, with an easy to learn and familiar syntax.",
                ],
                icon: Icon(Icons.favorite)),
            const CustomAdvantageDetailWidget(
                headerText: "Productive development",
                descriptionText: [
                  "Make changes to your source code iteratively, using hot reload to instantly see the effect in the running app.",
                  "Write code using a flexible type system with rich static analysis and powerful, configurable tooling.",
                  "Do profiling, logging, and debugging with your code editor of choice.",
                ],
                icon: Icon(Icons.favorite)),
            const CustomAdvantageDetailWidget(
                headerText: "Fast on all platforms",
                descriptionText: [
                  "AOT-compile apps to native machine code for instant startup.",
                  "Target the web with complete, mature, fast compilers for JavaScript and WebAssembly.",
                  "Run backend code supporting your app, written using a single programming language.",
                ],
                icon: Icon(Icons.favorite)),
            Container(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(
                          child: Image.network(
                            'https://avatars.githubusercontent.com/u/1609975?s=200&v=4',
                            fit: BoxFit.cover,
                            height: 48,
                          ),
                        ),
                        const WidgetSpan(
                          child: CustomRightMarginUsingSizedBoxWidget(),
                        ),
                        TextSpan(
                          text: 'Dart',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ],
                    ),
                  ),
                  const Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(
                          child: CustomIconWidget(
                            url: 'https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/medium-icon.png',
                          ),
                        ),
                        WidgetSpan(
                          child: CustomRightMarginUsingSizedBoxWidget(),
                        ),
                        WidgetSpan(
                          child: CustomIconWidget(
                            url: 'https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/github-icon.png',
                          ),
                        ),
                        WidgetSpan(
                          child: CustomRightMarginUsingSizedBoxWidget(),
                        ),
                        WidgetSpan(
                          child: CustomIconWidget(
                            url: 'https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/x-social-media-black-icon.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Except as otherwise noted, this site is licensed under a Creative Commons Attribution 4.0 International License, and code samples are licensed under the 3-Clause BSD License.",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const CustomBottomMarginUsingSizedBoxWidget(),
                  Text.rich(
                    TextSpan(
                      style: Theme.of(context).textTheme.bodySmall,
                      children: const [
                        TextSpan(
                          text: 'Terms',
                        ),
                        WidgetSpan(
                          child: CustomRightMarginUsingSizedBoxWidget(),
                        ),
                        TextSpan(
                          text: 'Privacy',
                        ),
                        WidgetSpan(
                          child: CustomRightMarginUsingSizedBoxWidget(),
                        ),
                        TextSpan(
                          text: 'Security',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
