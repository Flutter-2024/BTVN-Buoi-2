import 'package:flutter/material.dart';

class CustomLine extends StatelessWidget {
  final String descriptionText;
  final double widthIcon;
  final double heightIcon;
  const CustomLine({Key? key, required this.descriptionText, required this.heightIcon, required this.widthIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.only(left: 8.0),
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Text.rich(
        TextSpan(
          style: const TextStyle(
            fontSize: 20,
          ),
          children: [
            WidgetSpan(
              child: Container(
                height: heightIcon,
                width: widthIcon,
                margin: const EdgeInsets.only(right: 8.0, bottom: 4.0),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            TextSpan(
              text: descriptionText,
            ),
          ],
        ),
      )
    );
  }
}