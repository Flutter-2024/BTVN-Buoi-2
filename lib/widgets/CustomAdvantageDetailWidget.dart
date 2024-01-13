import 'package:flutter/material.dart';

import 'CustomLine.dart';

class CustomAdvantageDetailWidget extends StatelessWidget {
  final String headerText;
  final List<String> descriptionText;
  final Icon icon;
  const CustomAdvantageDetailWidget({Key? key, required this.headerText, required this.descriptionText, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: descriptionText.map((text) {
              return CustomLine(descriptionText: text, heightIcon: 16, widthIcon: 8);
            }).toList(),
          ),
        ],
      ),
    );
  }
}