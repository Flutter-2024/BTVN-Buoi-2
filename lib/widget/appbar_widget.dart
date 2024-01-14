import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff1c2834),
      title: const Text("Dart", style: TextStyle(color: Colors.white)),
      leading: Transform.scale(
          scale: 0.75,
          child: Image.network(
            "https://web-strapi.mrmilu.com/uploads/flutter_logo_470e9f7491.png",
            width: 20,
            height: 20,
          )),
      actions: [
        Builder(builder: (context) {
          return IconButton(
            icon: const Icon(
              Icons.view_headline,
              color: Colors.white,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          );
        })
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
