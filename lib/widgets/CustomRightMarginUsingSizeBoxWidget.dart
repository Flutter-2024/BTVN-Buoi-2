import 'package:flutter/material.dart';

import 'CustomLine.dart';

class CustomRightMarginUsingSizedBoxWidget extends StatelessWidget {
  final double margin;
  const CustomRightMarginUsingSizedBoxWidget({
    Key? key,
    this.margin = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: margin,
    );
  }
}
