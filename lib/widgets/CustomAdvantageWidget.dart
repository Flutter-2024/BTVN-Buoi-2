import 'package:dart_dev/widgets/CustomBottomMarginUsingSizedBoxWidget.dart';
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
      color: Theme.of(context).colorScheme.surface,
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF0c6291),
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              icon.icon,
              color: const Color(0xFF9dc0d3),
            ),
          ),
          const CustomBottomMarginUsingSizedBoxWidget(),
          Text(
            headerText,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const CustomBottomMarginUsingSizedBoxWidget(),
          Text(
            descriptionText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF818487),
            ),
          ),
        ],
      ),
    );
  }
}