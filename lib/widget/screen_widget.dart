import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyScreenState();
  }
}

class MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          color: const Color(0xff121a26),
          child: Column(
            children: [
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: "Check out the ", style: TextStyle(fontSize: 22)),
                TextSpan(
                    text: "Dart 3.2 blog post!",
                    style: TextStyle(fontSize: 22, color: Color(0xff34bfff)))
              ])),
              const Text(
                "This release brings enhancements to type promotion"
                ", interop capabilities, DevTools, and more.",
                style: TextStyle(color: Colors.white, fontSize: 22),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Image.asset("assets/images/dart_overview.gif"),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 46),
          color: const Color(0xff121a26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                  "An approachable, portable, and productive language for "
                  "high_quality apps on any plat form",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                  textAlign: TextAlign.center),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.play_circle, color: Color(0xff40c4ff)),
                  SizedBox(width: 10),
                  Text(
                    "Watch Video",
                    style: TextStyle(fontSize: 22, color: Color(0xff40c4ff)),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              const SizedBox(height: 20),
              RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(children: [
                    TextSpan(
                        text: "Supported by ",
                        style: TextStyle(color: Color(0xff4a515a))),
                    TextSpan(
                        text: "Google",
                        style:
                            TextStyle(fontSize: 30, color: Color(0xff4a515a))),
                  ])),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Dart is free and open source",
                    style: TextStyle(color: Color(0xff8895a6)),
                  ),
                  const SizedBox(width: 15),
                  Image.asset(
                    "assets/images/github.png",
                    height: 20,
                    width: 20,
                  )
                ],
              )
            ],
          ),
        ),

        Container(
          color: const Color(0xff0d1520),
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 60),
          child: Column(
            children: [
              Image.asset("assets/images/muti_icon.png", scale: 1.75),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Approachable",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Develop with a consistent, concise, and strongly typed programming"
                " language that offers modern features like null safety and pattern matching.",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff82878c),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset("assets/images/produc_icon.png", scale: 1.75),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Productive",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              const Text(
                "development",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Make changes iteratively: use hot reload to see the "
                "result instantly in your running app.",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff82878c),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset("assets/images/fast_icon.png", scale: 1.75),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Portable and fast on all platforms",
                style: TextStyle(fontSize: 25, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Compile to ARM, x64, and RISC-V machine"
                "code for mobile, desktop, and backend. Or, compile to JavaScript & WebAssembly"
                "for the web.",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff82878c),
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Image.asset("assets/images/0.png"),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/muti_icon.png",
                scale: 2.0,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Approachable",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 24,
                    child: VerticalDivider(
                      thickness: 5,
                      color: Color(0xff1967d2),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                          style:
                              TextStyle(color: Color(0xff3e69d2), fontSize: 16),
                          children: [
                            TextSpan(text: "Mature and complete "),
                            TextSpan(
                                text: "async-await ",
                                style: TextStyle(
                                    decoration: TextDecoration.underline)),
                            TextSpan(
                                text:
                                    "for user interfaces containing event-driven code, paired with "),
                            TextSpan(
                                text: "isolate-based concurrency.",
                                style: TextStyle(
                                    decoration: TextDecoration.underline)),
                          ]),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 12,
                    child: VerticalDivider(
                      thickness: 5,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: [
                            TextSpan(
                                text:
                                    "Write safe and concise code using features like "),
                            TextSpan(
                                text: "sound null safety, collection if,  ",
                                style: TextStyle(
                                    decoration: TextDecoration.underline)),
                            TextSpan(text: "and "),
                            TextSpan(
                                text: "pattern matching.",
                                style: TextStyle(
                                    decoration: TextDecoration.underline)),
                          ]),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 12,
                    child: VerticalDivider(
                      thickness: 5,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: [
                            TextSpan(
                                text: "A consistent programming language,"
                                    " with an easy to learn and "),
                            TextSpan(
                                text: "familiar syntax.",
                                style: TextStyle(
                                    decoration: TextDecoration.underline)),
                          ]),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
//Productive code hear
        Image.asset("assets/images/productive.png"),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/produc_icon.png", scale: 2.0),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Productive Development",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 24,
                    child: VerticalDivider(
                      thickness: 5,
                      color: Color(0xff1967d2),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                          style:
                              TextStyle(color: Color(0xff3e69d2), fontSize: 16),
                          children: [
                            TextSpan(
                                text:
                                    "Make changes to your  source code iteratively, using "),
                            TextSpan(
                                text: "hot reload ",
                                style: TextStyle(
                                    decoration: TextDecoration.underline)),
                            TextSpan(
                                text:
                                    "to instantly see the effect in the running app."),
                          ]),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 12,
                    child: VerticalDivider(
                      thickness: 5,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: [
                            TextSpan(
                                text:
                                    "Write code using a flexible type system with rich static analysis and powerfull, "),
                            TextSpan(
                                text: "configurable tooling.",
                                style: TextStyle(
                                    decoration: TextDecoration.underline)),
                          ]),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 12,
                    child: VerticalDivider(
                      thickness: 5,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: [
                            TextSpan(text: "Do "),
                            TextSpan(
                                text: "profiling",
                                style: TextStyle(
                                    decoration: TextDecoration.underline)),
                            TextSpan(text: ", "),
                            TextSpan(
                                text: "logging",
                                style: TextStyle(
                                    decoration: TextDecoration.underline)),
                            TextSpan(text: ", and"),
                            TextSpan(
                                text: "debugging ",
                                style: TextStyle(
                                    decoration: TextDecoration.underline)),
                            TextSpan(text: "with your code editer of choice.")
                          ]),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        //   end productive development

        //start  fast on all platforms
        Image.asset("assets/images/fast.png"),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/fast_icon.png", scale: 2.0),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Fast on all platforms",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 24,
                    child: VerticalDivider(
                      thickness: 5,
                      color: Color(0xff1967d2),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                          style:
                              TextStyle(color: Color(0xff3e69d2), fontSize: 16),
                          children: [
                            TextSpan(
                                text: "AOT-compile ",
                                style: TextStyle(
                                    decoration: TextDecoration.underline)),
                            TextSpan(text: "apps to native machine code for "),
                            TextSpan(
                                text: "instant startup.",
                                style: TextStyle(
                                    decoration: TextDecoration.underline)),
                          ]),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 12,
                    child: VerticalDivider(
                      thickness: 5,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: [
                            TextSpan(
                                text:
                                    "Taget the web with complete, mature, fast "),
                            TextSpan(
                                text: "compilers for JavaScripts & WebAssembly",
                                style: TextStyle(
                                    decoration: TextDecoration.underline)),
                          ]),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 12,
                    child: VerticalDivider(
                      thickness: 5,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: [
                            TextSpan(text: "Run "),
                            TextSpan(
                                text: "backend code",
                                style: TextStyle(
                                    decoration: TextDecoration.underline)),
                            TextSpan(
                                text:
                                    " supporting your app, writen using a single programming language."),
                          ]),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        //end fast on plat form

        Container(
          color: const Color(0xff1c2834),
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          child: Column(
            children: [
              Image.asset(
                "assets/images/logo_flutter.png",
                scale: 2.5,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset("assets/images/abv.png"),
              const Divider(
                thickness: 2,
                color: Color(0xff505961),
              ),
              const Text(
                "Except as otherwise noted, this site is licensed under a "
                "Creative Commons Attribution 4.0 International License, "
                "and code samples are licensed under the 3-Clause BSD License",
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Terms",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  Text("Privacy",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  Text("Security",
                      style: TextStyle(color: Colors.white, fontSize: 16))
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
