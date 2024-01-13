import 'package:flutter/material.dart';

class CustomBottomMarginUsingSizedBoxWidget extends StatelessWidget {
  final double margin;
  const CustomBottomMarginUsingSizedBoxWidget({
    Key? key,
    this.margin = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: margin,
    );
  }
}
