import 'package:flutter/material.dart';

class FeaturesElement extends StatelessWidget {
  final String imagePath;
  final String headerText;
  final String bodyText;
  FeaturesElement(
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
            Text(
              headerText,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                bodyText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
