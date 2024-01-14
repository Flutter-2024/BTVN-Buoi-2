import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          buildSearchField(),
          const Divider(height: 3, color: Colors.black),
          const SizedBox(height: 20),
          buildMenuItem(text: "Overview", size: 28),
          const SizedBox(height: 20),
          buildMenuItem(text: "Community", size: 28),
          const SizedBox(height: 20),
          buildMenuItem(text: "Try Dart", size: 28),
          const SizedBox(height: 20),
          buildMenuItem(text: "Get Dart", size: 28),
          const SizedBox(height: 20),
          buildMenuItem(text: "Docs", size: 28),
          const SizedBox(
            height: 20,
          ),
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              childrenPadding: const EdgeInsets.symmetric(vertical: 0),
              title: const Text(
                "Tutorials & codelabs",
                style: TextStyle(fontSize: 20),
              ),
              children: [
                buildMenuItem(text: "Tutorials", size: 16),
                buildMenuItem(text: "Codelabs", size: 16)
              ],
            ),
          ),
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              childrenPadding: const EdgeInsets.symmetric(vertical: 0),
              title: const Text(
                "Language",
                style: TextStyle(fontSize: 20),
              ),
              children: [
                buildMenuItem(text: "Introduction", size: 16),
                buildMenuItem(text: "Syntax basics", size: 16)
              ],
            ),
          ),
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              childrenPadding: const EdgeInsets.symmetric(vertical: 0),
              title: const Text(
                "Effective Dart",
                style: TextStyle(fontSize: 20),
              ),
              children: [
                buildMenuItem(text: "Overview", size: 16),
                buildMenuItem(text: "Style", size: 16)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildSearchField() {
  const color = Colors.black;

  return const TextField(
    style: TextStyle(fontSize: 24, color: color),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      hintText: 'Search',
      prefixIcon: Icon(Icons.search, color: color, size: 24),
    ),
  );
}

Widget buildMenuItem({required text, required double size}) {
  return ListTile(
    title: Text(
      text,
      style: TextStyle(fontSize: size),
    ),
    onTap: () {},
  );
}
