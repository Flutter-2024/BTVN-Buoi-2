import 'package:flutter/material.dart';

import 'CustomLine.dart';

class CustomIconWidget extends StatelessWidget {
  final double heightImage;
  final int colorHex;
  final String url;
  const CustomIconWidget({
    Key? key,
    required this.url,
    this.heightImage = 24, this.colorHex = 0xFFdadce0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: BoxFit.cover,
      height: heightImage,
      color: Color(colorHex),
    );
  }
}
