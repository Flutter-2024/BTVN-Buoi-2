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
      backgroundColor: const Color(0xff121a26),
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
          Container(
            color: const Color(0xff050f18),
            padding: const EdgeInsets.all(40),
            child: const Column(
              children: [
                Image(
                  image: AssetImage("assets/icon_approachable.png"),
                  width: 80,
                  height: 80,
                ),
                SizedBox(height: 15,),
                Text(
                  'Approachable',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  'Develop with a consistent, concise, and strongly typed programming language that offers modern features like null safety and pattern matching.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 30,),
                Image(image: AssetImage("assets/icon_productive.png"),
                  width: 80,
                  height: 80,
                ),
                SizedBox(height: 15,),
                Text(
                  'Productive development',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  'Make changes iteratively: use hot reload to see the result instantly in your running app.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 30,),
                Image(image: AssetImage("assets/icon_portable.png"),
                  width: 80,
                  height: 80,
                ),
                SizedBox(height: 15,),
                Text(
                  'Portable and fast on all platforms',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15,),
                Text(
                  'Compile to ARM, x64, and RISC-V machine code for mobile, desktop, and backend. Or, compile to JavaScript & WebAssembly for the web.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  softWrap: true,
                ),
              ],
            ),
          ),
          const Image(
            image: AssetImage("assets/weather.png"),
          ),
          Container(
            padding: const EdgeInsets.all(40),
            color:  const Color(0xffffffff),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Image(image: AssetImage("assets/icon_approachable.png"),
                  width: 80,
                  height: 80,
                ),
                const SizedBox(height: 10,),
                const Text('Approachable',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                      child: VerticalDivider(
                        color: Colors.blueAccent,
                        thickness: 7,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'Mature and complete ',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blue,
                                ),
                              ),
                              TextSpan(
                                text: 'async-await',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 16,
                                  color: Colors.blue,
                                ),
                              ),
                              TextSpan(
                                text: ' for user interfaces containing event-driven code, paired with ',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blue,
                                ),
                              ),
                              TextSpan(
                                text: 'isolate-based concurrency.',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 16,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ),

                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 7,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Write safe and concise code using features like ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: 'sound null safety, collection if',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: ', and ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: 'pattern matching.',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 7,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'A consistent programming language, with an easy to learn and ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: 'familiar syntax.',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xff1c2834),
            padding: const EdgeInsets.all(40),
               child: const Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage("assets/logo_dart.png"),
                          width: 60,
                          height: 60,
                        ),
                        SizedBox(width: 20,),
                        Text('Dart', style: TextStyle(fontSize: 50, color: Colors.white),),
                      ],
                    ),
                   Image(image: AssetImage("assets/icon_end_page.png"),
                     width: 150,
                     height: 80,
                   ),
                   Divider(color: Colors.grey,),
                   Text(
                     'Except as otherwise noted, this site is licensed under a Creative Commons Attribution 4.0 International License, and code samples are licensed under the 3-Clause BSD License.',
                     style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                     textAlign: TextAlign.center,
                     ),
                    SizedBox(height: 20,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Text('Terms', style: TextStyle(fontSize: 16, color: Colors.grey),),
                       Text('Privacy', style: TextStyle(fontSize: 16, color: Colors.grey),),
                       Text('Security', style: TextStyle(fontSize: 16, color: Colors.grey),),
                     ],
                   )
                 ],
               ),
          ),
        ],
      );

  PreferredSizeWidget _appBar() => AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, // Set color for the icon button
        ),
        backgroundColor: const Color(0xff1c2834),
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
