import 'package:btvn_buoi_2/widget/drawer_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          drawer: const MyDrawer(),
          appBar: AppBar(
            toolbarHeight: 80,
            backgroundColor: const Color(0xff1c2834),
            title: const Text("Dart", style: TextStyle(color: Colors.white)),
            leading: Image.network("https://web-strapi.mrmilu.com/uploads/flutter_logo_470e9f7491.png", width: 50, height: 50,),
            actions: [
              IconButton(
                icon: const Icon(Icons.view_headline),
                onPressed: () => _scaffoldKey.currentState?.openDrawer(),
              )
            ],
          ),
          //body:
        ),
      ),
    );
  }
}

// class MyApp extends StatefulWidget{
//   const MyApp({super.key});
//
//   @override
//   State<StatefulWidget> createState() {
//     return MyAppState();
//   }
// }
// class MyAppState extends State<MyApp>{
//   @override
//   Widget build(BuildContext context) {
//     return const Center();
//   }
// }





