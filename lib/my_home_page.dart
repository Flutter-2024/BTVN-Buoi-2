import 'package:flutter/material.dart';

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
      appBar: _appBar(),
      endDrawer: _endDrawer(),
      body: _body(),
    );
  }

  Widget _body() => ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Check out the ",
                        style: TextStyle(fontSize: 16),
                      ),
                      TextSpan(
                        text: "Dart 3.2 blog post",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "This release brings enhancements to type promotion, interop capabilities, DevTools, and more.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            "assets/intro_dart.gif",
          ),
          Container(
            padding: const EdgeInsets.all(40),
            alignment: Alignment.center,
            child: const Column(children: [
              Text(
                "An approachable, portable, and productive language for high-quality apps on any platform",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_circle_fill,
                      color: Colors.lightBlue,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Watch video",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.lightBlue,
                      ),
                    ),
                  ],
                ),
              ),
              Image (
                image: AssetImage("assets/supported_by_google.png"),
                width: 200,
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dart is free and open source  ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  Image(
                    image: AssetImage("assets/icon_github.png"),
                    width: 20,
                    height: 20,
                  )
                ],
              ),
            ]),
          ),
        ],
      );

  PreferredSizeWidget _appBar() => AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, // Set color for the icon button
        ),
        backgroundColor: const Color(0xff074264),
        leading: Image.asset(
          "assets/logo_dart.png",
          width: 50,
          height: 50,
          fit: BoxFit.scaleDown,
        ),
        title: const Text(
          "Dart",
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      );

  Widget _endDrawer() => Drawer(
        child: Align(
            alignment: Alignment.topLeft,
            child: ListView(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                    ),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
                _itemDrawer("Overview"),
                _itemDrawer("Community"),
                _itemDrawer("Try Dart"),
                _itemDrawer("Get Dart"),
                _itemDrawer("Docs"),
                _itemDrawer("Tutorials & codelabs"),
                _itemDrawer("Effective Dart"),
                _itemDrawer("Code libraries"),
                _itemDrawer("Packages"),
                _itemDrawer("Tool & techniques"),
                _itemDrawer("Resources"),
                _itemDrawer("Related sites"),
              ],
            )),
      );

  Widget _itemDrawer(String title) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
