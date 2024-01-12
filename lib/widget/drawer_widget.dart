import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          buildSearchField(),
          const Divider(height: 3, color: Colors.black),
          const SizedBox(height: 20),
          buildMenuItem(text: "Overview"),
          const SizedBox(height: 20),
          buildMenuItem(text: "Community"),
          const SizedBox(height: 20),
          buildMenuItem(text: "Try Dart"),
          const SizedBox(height: 20),
          buildMenuItem(text: "Get Dart"),
          const SizedBox(height: 20),
          buildMenuItem(text: "Docs"),
        ],
      ),
    );
  }
}
Widget buildSearchField() {
  const color = Colors.black;

  return const TextField(
    style: TextStyle(fontSize: 24,color: color),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      hintText: 'Search',
      prefixIcon: Icon(Icons.search, color: color, size: 24),
    ),
  );
}
Widget buildMenuItem({required text}){
  return ListTile(
    title: Text(text,
      style: const TextStyle(fontSize: 28),
    ),
    onTap: (){},
  );
}