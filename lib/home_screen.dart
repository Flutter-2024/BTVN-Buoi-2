import 'package:flutter/material.dart';

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

  Widget _body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _introduction(),
          _imageIntroduction(),
          _titleBody(),
          _listViewHeader(),
          _listViewContent(),
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

  Widget _listViewHeader() {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        _itemListViewHeader(
            'assets/icon_01.png',
            "Approachable",
            "Develop with a consistent, concise, and strongly typed programming "
                "language that offers modern features like null safety and pattern matching."
        ),
        _itemListViewHeader(
            'assets/icon_02.png',
            "Productive",
            "Make changes iteratively: use hot reload to see the result instantly in your running app."
        ),
        _itemListViewHeader(
            'assets/icon_03.png',
            "Portable and fast\non all platforms",
            "Compile to ARM, x64, and RISC-V machine code for mobile, desktop, and backend. "
                "Or, compile to JavaScript & WebAssembly for the web."
        ),
      ],
    );
  }

  Widget _itemListViewHeader(String icon, String title, String content) {
    return Container(
      color: const Color(0xFF0d1520),
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            icon,
            height: 80,
            width: 80,
          ),
          const SizedBox(height: 24.0),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24.0),
          Text(
            content,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _listViewContent() {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        _itemListViewContent(
            'assets/image_01.png',
            'assets/icon_01.png',
            "Approachable",
            [
              "Mature and complete async-await for user interfaces containing event-driven code, paired with isolate-based concurrency.",
              "Write safe and concise code using features like sound null safety, collection if, and pattern matching.",
              "A consistent programming language, with an easy to learn and familiar syntax."
            ]
        ),
        _itemListViewContent(
            'assets/image_02.png',
            'assets/icon_02.png',
            "Productive",
            [
              "Make changes to your source code iteratively, using hot reload to instantly see the effect in the running app.",
              "Write code using a flexible type system with rich static analysis and powerful, configurable tooling.",
              "Do profiling, logging, and debugging with your code editor of choice."
            ]
        ),
        _itemListViewContent(
            'assets/image_03.png',
            'assets/icon_03.png',
            "Portable and fast\non all platforms",
            [
              "AOT-compile apps to native machine code for instant startup",
              "Target the web with complete, mature, fast compilers for JavaScript and WebAssembly.",
              "Run backend code supporting your app, written using a single programming language."
            ]
        ),
      ],
    );
  }

  Widget _itemListViewContent(String image, String icon, String title, List<String> listContent) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
        ),
        const SizedBox(height: 24.0),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Image.asset(
            icon,
            height: 80,
            width: 80,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8.0, bottom: 24.0),
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        _itemContent(listContent[0]),
        _itemContent(listContent[1]),
        _itemContent(listContent[2]),
        const SizedBox(height: 24.0,),
      ],
    );
  }

  Widget _itemContent(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.turned_in,
            color: Colors.black,
          ),
          const SizedBox(width: 12,),
          Expanded(
            child: Text(
              content,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
              textAlign: TextAlign.start,
            ),
          )
        ],
      ),
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
