import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0b1d28),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, // Set color for the icon button
        ),
        backgroundColor: const Color(0xff074264),
        leading: Image.asset(
          "assets/logo_dart.png",
        ),
        title: const Text(
          "Dart",
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: const [
            ListTile(
              title: Text(
                "Overview",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Community",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Docs",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
