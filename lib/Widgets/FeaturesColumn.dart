import 'package:flutter/material.dart';
import 'TextFormatter.dart';

TextFormatter textFormatter = TextFormatter();

class FeaturesColumn extends StatelessWidget {
  final String imagePath;
  final String headerText;
  final String bodyText;
  FeaturesColumn(
      {required this.imagePath,
      required this.headerText,
      required this.bodyText});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: 80,
            ),
            SizedBox(height: 10),
            textFormatter.featuresHeader(text: headerText),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: textFormatter.featuresSubHeader(text: bodyText),
            ),
          ],
        ),
      ),
    );
  }
}
