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
            color: Colors.white,
          ),
          bodySmall: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
          headlineSmall: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          headlineMedium: TextStyle(
            fontSize: 32,
            color: Colors.white,
          ),
          headlineLarge: TextStyle(
            fontSize: 48,
            color: Colors.white,
          ),
        ),
        colorScheme: const ColorScheme(
          primary: Color(0xFF121a26),
          secondary: Color(0xFF132030),
          surface: Color(0xFF0d1520),
          background: Color(0xFF0c6291),
          error: Color(0xFF0c6291),
          onPrimary: Color(0xFF0c6291),
          onSecondary: Color(0xFF0c6291),
          onSurface: Color(0xFF0c6291),
          onBackground: Color(0xFF0c6291),
          onError: Color(0xFF0c6291),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const DartDevHomePage(title: 'Dart'),
    );
  }
}

