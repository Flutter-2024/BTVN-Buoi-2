import 'package:flutter/material.dart';
import 'package:trunglq/body/header_body.dart';
import 'package:trunglq/body/title_body.dart';
import 'package:trunglq/data.dart';
import 'package:trunglq/drawer/header_drawer.dart';
import 'package:trunglq/drawer/title_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appBar(),
        drawer: _drawer(),
        body: _body(),
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
        children: [
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
          HeaderDrawer(listHeader: Data().listHeaderDrawer),
          TitleDrawer(listTitle: Data().listTitleDrawer)
        ],
      ),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _introduction(),
          _imageIntroduction(),
          _titleBody(),
          HeaderBody(listHeader: Data().listHeaderBody),
          TitleBody(listTitle: Data().listTitleBody),
          _footer(),
        ],
      ),
    );
  }

  Widget _introduction() {
     return Container(
       padding: const EdgeInsets.all(16.0),
       width: double.infinity,
       color: const Color(0xFF121A26),
       child: Column(
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Expanded(child: Container()),
               const Text(
                 "Check out the ",
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 22.0,
                 ),
               ),
               const Text(
                 "Dart 3.2 blog post!",
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   color: Colors.lightBlueAccent,
                   fontSize: 22.0,
                 ),
               ),
               Expanded(child: Container()),
             ],
           ),
           const Text(
             "This release brings enhancements to type promotion, interop capabilities, DevTools, and more.",
             textAlign: TextAlign.center,
             style: TextStyle(
               color: Colors.white,
               fontSize: 20.0,
             ),
           ),
         ],
       )
     );
  }

  Widget _imageIntroduction() {
    return Image.asset(
      "assets/paint_your_ui.png"
    );
  }

  Widget _titleBody() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      color: const Color(0xFF121A26),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "An approachable, portable, and productive language for high-quality apps on any platform",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          TextButton.icon(
            onPressed: (){},
            icon: const Icon(
              Icons.play_circle,
              size: 32,
              color: Colors.lightBlueAccent,
            ),
            label: const Text(
              "Watch Video",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.lightBlueAccent
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Image.asset(
            'assets/google.png',
            width: 240,
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            "Dart is free and open source",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(
            height: 48,
          ),
        ],
      )
    );
  }

  Widget _footer() {
    return Container(
      color: const Color(0xFF1c2834),
      padding: const EdgeInsets.all(16.0),
      child:  Column(
        children: [
          const Text(
            "Dart",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
         Container(
           margin: const EdgeInsets.symmetric(vertical: 16.0),
           height: 1,
           color: Colors.white,
         ),
         const Text(
          "Except as otherwise noted, this site is licensed under a Creative Commons Attribution"
          " 4.0 International License, and code samples are licensed under the 3-Clause BSD License.",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
         ),
        ],
      ),
    );
  }
}
