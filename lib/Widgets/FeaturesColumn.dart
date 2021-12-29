import 'package:flutter/material.dart';
import 'TextFormatter.dart';

TextFormatter _textFormatter = TextFormatter();

class FeaturesColumn extends StatelessWidget {
  final String imagePath;
  final String headerText;
  final String bodyText;
  final double? verticalPadding;
  FeaturesColumn({
    required this.imagePath,
    required this.headerText,
    required this.bodyText,
    this.verticalPadding,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPadding ?? 0.0),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 80,
          ),
          SizedBox(height: 10),
          _textFormatter.featuresHeader(text: headerText),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: _textFormatter.featuresSubHeader(text: bodyText),
          ),
        ],
      ),
    );
  }
}
