import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_project/navBar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SvgPicture.asset(
          "assets/white.svg",
          height: 26,
          width: 56,
        ),
        actions: [
          Builder(builder: (context) {
            return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: const Icon(Icons.menu));
          })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.white, width: 0.3),
                      bottom: BorderSide(color: Colors.white, width: 0.3))),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Check out the ",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Text(
                            "Dart 3.2 blog post",
                            style: TextStyle(
                                color: Colors.lightBlue, fontSize: 16),
                          ),
                          Text(
                            "!",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        ],
                      ),
                      const Text(
                        "This release brings enhancements to type promotion, interop capabilities, DevTools, and more.",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ]),
              ),
            ),
            Image.network(
              "https://dart.dev/assets/dash/2x/paint-your-ui.png",
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "An approachable, portable, and productive language for high-quality apps on any platform",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 27),
                        width: 24,
                        height: 24,
                        child: Ink(
                            decoration: const ShapeDecoration(
                              color: Colors.lightBlue,
                              shape: CircleBorder(),
                            ),
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.play_arrow,
                                size: 18,
                              ),
                              color: Colors.black,
                            )),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        "Watch video",
                        style: TextStyle(color: Colors.lightBlue, fontSize: 16),
                      ),
                    ],
                  ),
                  Image.network(
                    "https://dart.dev/assets/dash/2x/supported-by-google.png",
                    width: 180,
                    height: 29,
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Dart is free and open source",
                          style: TextStyle(
                              color: Color(0xFF82878c), fontSize: 14)),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        width: 14,
                        height: 14,
                        child: Ink(
                            decoration: const ShapeDecoration(
                              color: Color(0xFF82878c),
                              shape: CircleBorder(),
                            ),
                            child: Image.asset(
                              "assets/github.png",
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 60),
              width: double.infinity,
              decoration: const BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.white, width: 0.3),
                      bottom: BorderSide(color: Colors.white, width: 0.3))),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 50),
                        margin: const EdgeInsets.only(bottom: 25),
                        height: 130,
                        width: 225,
                        child: Image.network(
                          "https://dart.dev/assets/dash/2x/multiplatform-performance-light-op1.png",
                          width: 80,
                          height: 80,
                        ),
                      ),
                      const Text("Approachable",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      const SizedBox(
                        height: 25,
                      ),
                      const SizedBox(
                        width: 250,
                        child: Text(
                          "Develop with a consistent, concise, and strongly typed programming language that offers modern features like null safety and pattern matching.",
                          style: TextStyle(
                            color: Color(0xFF82878c),
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 50),
                        margin: const EdgeInsets.only(bottom: 25),
                        height: 130,
                        width: 225,
                        child: Image.network(
                          "https://dart.dev/assets/dash/2x/client-optimized-light-op1.png",
                          width: 80,
                          height: 80,
                        ),
                      ),
                      const Text("Productive",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      const Text("development",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      const SizedBox(
                        height: 25,
                      ),
                      const SizedBox(
                        width: 250,
                        child: Text(
                          "Make changes iteratively: use hot reload to see the result instantly in your running app.",
                          style: TextStyle(
                            color: Color(0xFF82878c),
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 50),
                        margin: const EdgeInsets.only(bottom: 25),
                        height: 130,
                        width: 225,
                        child: Image.network(
                          "https://dart.dev/assets/dash/2x/productive-dev-light-op1.png",
                          width: 80,
                          height: 80,
                        ),
                      ),
                      const Text("Portable and fast",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      const Text("on all platforms",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      const SizedBox(
                        height: 25,
                      ),
                      const SizedBox(
                        width: 245,
                        child: Text(
                          "Compile to ARM, x64, and RISC-V machine code for mobile, desktop, and backend. Or, compile to JavaScript &amp; WebAssembly for the web.",
                          style: TextStyle(
                            color: Color(0xFF82878c),
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // SvgPicture.asset(
            //   "assets/img2.svg",
            //   fit: BoxFit.cover,
            // ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Container(
                margin: const EdgeInsets.only(top: 20, left: 25),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      "https://dart.dev/assets/dash/2x/multiplatform-performance-light-op1.png",
                      width: 68,
                      height: 68,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Approachable",
                        style:
                            TextStyle(color: Color(0xFF4a4a4a), fontSize: 22)),
                    const SizedBox(
                      height: 34,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Wrap(
                            children: [
                              const Text("Mature and complete ",
                                  style: TextStyle(
                                      color: Color(0xFF1967d2), fontSize: 14)),
                              InkWell(
                                  child: const Text(
                                    'async-await',
                                    style: TextStyle(
                                      color: Color(0xFF1967d2),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  onTap: () => launchUrlString(
                                      'https://dart.dev/codelabs/async-await')),
                              const Text(
                                "for user interfaces containing event-driven code, paired with",
                                style: TextStyle(
                                    color: Color(0xFF1967d2), fontSize: 14),
                              ),
                              InkWell(
                                  child: const Text(
                                    'isolate-based concurrency',
                                    style: TextStyle(
                                      color: Color(0xFF1967d2),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  onTap: () => launchUrlString(
                                      'https://dart.dev/language/concurrency')),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        Expanded(
                          child: Wrap(
                            children: [
                              const Text("Write safe and concise code using features like ",
                                  style: TextStyle(
                                      color: Color(0xFF4a4a4a), fontSize: 14)),
                              InkWell(
                                  child: const Text(
                                    'sound null safety',
                                    style: TextStyle(
                                      color: Color(0xFF4a4a4a),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  onTap: () => launchUrlString(
                                      'https://dart.dev/language/collections#control-flow')),
                              InkWell(
                                  child: const Text(
                                    'collection if',
                                    style: TextStyle(
                                      color: Color(0xFF4a4a4a),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  onTap: () => launchUrlString(
                                      'https://dart.dev/language/collections#control-flow-operators')),
                              const Text(
                                " and",
                                style: TextStyle(
                                    color: Color(0xFF4a4a4a), fontSize: 14),
                              ),
                              InkWell(
                                  child: const Text(
                                    ' pattern matching',
                                    style: TextStyle(
                                      color: Color(0xFF4a4a4a),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  onTap: () => launchUrlString(
                                      'https://dart.dev/language/patterns')),

                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        Expanded(
                          child: Wrap(
                            children: [
                              const Text("A consistent programming language, with an easy to learn and ",
                                  style: TextStyle(
                                      color: Color(0xFF4a4a4a), fontSize: 14)),
                              InkWell(
                                  child: const Text(
                                    'familiar syntax',
                                    style: TextStyle(
                                      color: Color(0xFF4a4a4a),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  onTap: () => launchUrlString(
                                      'https://dart.dev/language')),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
