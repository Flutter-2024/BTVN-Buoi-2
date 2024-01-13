import 'package:dart_dev/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DartDevApp());
}

class DartDevApp extends StatelessWidget {
  const DartDevApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dart',
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          bodySmall: TextStyle(
            fontSize: 16,
          ),
          bodyLarge: TextStyle(
            fontSize: 24,
          ),
          headlineSmall: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          headlineLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        useMaterial3: true,
      ),
      home: const DartDevHomePage(title: 'Dart'),
    );
  }
}

