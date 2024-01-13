import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                  prefixIcon: Icon(Icons.search, color: Colors.grey,),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none
                    )
                  ),
                ) ,
              ),
            ),
            const Divider(color: Colors.grey,),
            Wrap(
              spacing: 4,
              children: const [
                ListTile(
                  title: Text('Overview',style: TextStyle(fontSize: 20)),
                ),
                ListTile(
                  title: Text('Community',style: TextStyle(fontSize: 20)),
                ),
                ListTile(
                  title: Text('Try Dart',style: TextStyle(fontSize: 20)),
                ),
                ListTile(
                  title: Text('Get Dart',style: TextStyle(fontSize: 20)),
                ),
                ListTile(
                  title: Text('Docs',style: TextStyle(fontSize: 20)),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
