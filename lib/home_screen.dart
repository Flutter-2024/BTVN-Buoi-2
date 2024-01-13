import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appBar(),
        drawer: _drawer(),
      )
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      leading: Image.asset('assets/dart.png'),
      backgroundColor: const Color(0xFF1C2834),
      title: const Text(
        "Dart",
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 28.0,
        ),
      ),
      actions: [
        Builder(
          builder: (BuildContext context) {
            return InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: (){
                Scaffold.of(context).openDrawer();
              },
              child: Container(
                margin: const EdgeInsets.only(right: 12.0),
                child: const Icon(
                  Icons.reorder,
                  color: Colors.white,
                  size: 32.0,
                ),
              ),
            );
          }
        )
      ],
    );
  }

  Widget _drawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(12.0),
            child: const TextField(
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(
                    fontSize: 20
                  ),
                  border: InputBorder.none
              ),
            ),
          ),
          const Divider(
            height: 1,
            color: Colors.grey,
          ),
          _itemHeaderFirstDrawer("Overview"),
          _itemHeaderFirstDrawer("Community"),
          _itemHeaderFirstDrawer("Try Dart"),
          _itemHeaderFirstDrawer("Get Dart"),
          _itemHeaderFirstDrawer("Docs"),

          _itemHeaderSecondDrawer("Tutorials & codelabs"),
          _itemHeaderSecondDrawer("Language"),
          _itemHeaderSecondDrawer("Effective Dart"),
          _itemHeaderSecondDrawer("Code libraries"),
          _itemHeaderSecondDrawer("Packages"),
          _itemHeaderSecondDrawer("Development"),
          _itemHeaderSecondDrawer("Interoperability"),
          _itemHeaderSecondDrawer("Tool & techniques"),
          _itemHeaderSecondDrawer("Resources"),
          _itemHeaderSecondDrawer("Related sites"),
        ],
      ),
    );
  }

  Widget _itemHeaderFirstDrawer(String text) {
    return ListTile(
      title: Text(
        text,
        style: const TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w500
        ),
      ),
    );
  }

  Widget _itemHeaderSecondDrawer(String text) {
    return ListTile(
      trailing: const Icon(Icons.expand_more),
      title: Text(
        text,
        style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w400
        ),
      ),
    );
  }
}
