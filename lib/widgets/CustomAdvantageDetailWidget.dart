import 'package:dart_dev/widgets/CustomRightMarginUsingSizeBoxWidget.dart';
import 'package:flutter/material.dart';

import 'package:dart_dev/widgets/CustomBottomMarginUsingSizedBoxWidget.dart';
import 'CustomLine.dart';

class CustomAdvantageDetailWidget extends StatelessWidget {
  final String headerText;
  final List<String> descriptionText;
  final Icon icon;
  const CustomAdvantageDetailWidget(
      {Key? key,
      required this.headerText,
      required this.descriptionText,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://dartcode.org/images/release_notes/v3.1/ui_guides.png',
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 12.0),
                  padding: const EdgeInsets.all(16.0),
                  decoration: const BoxDecoration(
                    color: Color(0xFF0c6291),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    icon.icon,
                    color: const Color(0xFF9dc0d3),
                  ),
                ),
                Text(
                  headerText,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                const CustomBottomMarginUsingSizedBoxWidget(
                  margin: 24,
                ),
                Column(
                  children: descriptionText.map((text) {
                    return CustomLine(
                        descriptionText: text, heightIcon: 16, widthIcon: 8);
                  }).toList(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
