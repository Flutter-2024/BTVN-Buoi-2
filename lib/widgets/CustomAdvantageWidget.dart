import 'package:flutter/material.dart';

class CustomAdvantageWidget extends StatelessWidget {
  final String headerText;
  final String descriptionText;
  final Icon icon;
  const CustomAdvantageWidget({Key? key, required this.headerText, required this.descriptionText, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(16.0),
            child: icon,
          ),
          Text(headerText),
          Text(descriptionText),
        ],
      ),
    );
  }
}