import 'package:trunglq/model/header_text.dart';
import 'package:trunglq/model/title_text.dart';

class Data {
  List<String> listHeaderDrawer = ["Overview", "Community", "Try Dart", "Get Dart", "Docs"];

  List<String> listTitleDrawer = ["Tutorials & codelabs", "Language", "Effective Dart", "Code libraries", "Packages",
                                    "Development", "Interoperability", "Tool & techniques", "Resources", "Related sites"];

  List<HeaderText> listHeaderBody = [
    HeaderText(image: 'assets/icon_01.png', name: 'Approachable', content: 'Develop with a consistent, concise, and strongly typed programming '
        'language that offers modern features like null safety and pattern matching.'),
    HeaderText(image: 'assets/icon_02.png', name: 'Productive', content: 'Make changes iteratively: use hot reload to see the result instantly in your running app.'),
    HeaderText(image: 'assets/icon_03.png', name: 'Portable and fast\non all platforms', content: 'Compile to ARM, x64, and RISC-V machine code for mobile, desktop, and backend. '
        'Or, compile to JavaScript & WebAssembly for the web.'),
  ];

  List<TitleText> listTitleBody = [
    TitleText(
        image: 'assets/image_01.png',
        icon: 'assets/icon_01.png',
        name: 'Approachable',
        content: [
          "Mature and complete async-await for user interfaces containing event-driven code, paired with isolate-based concurrency.",
          "Write safe and concise code using features like sound null safety, collection if, and pattern matching.",
          "A consistent programming language, with an easy to learn and familiar syntax."
        ],
    ),
    TitleText(
        image: 'assets/image_02.png',
        icon: 'assets/icon_02.png',
        name: 'Productive',
        content: [
          "Make changes to your source code iteratively, using hot reload to instantly see the effect in the running app.",
          "Write code using a flexible type system with rich static analysis and powerful, configurable tooling.",
          "Do profiling, logging, and debugging with your code editor of choice."
        ],
    ),
    TitleText(
        image: 'assets/image_03.png',
        icon: 'assets/icon_03.png',
        name: 'Portable and fast\non all platforms',
        content: [
          "AOT-compile apps to native machine code for instant startup",
          "Target the web with complete, mature, fast compilers for JavaScript and WebAssembly.",
          "Run backend code supporting your app, written using a single programming language."
        ]
    ),
  ];
}