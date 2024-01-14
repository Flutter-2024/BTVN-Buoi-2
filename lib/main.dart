import 'package:btvn_buoi_2/widget/appbar_widget.dart';
import 'package:btvn_buoi_2/widget/drawer_widget.dart';
import 'package:btvn_buoi_2/widget/screen_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          drawer: MyDrawer(),
          appBar: MyAppBar(),
          body: MyScreen()
        ),
      ),
    );
  }
}







