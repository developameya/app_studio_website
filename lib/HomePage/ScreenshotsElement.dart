import 'package:flutter/material.dart';

class ScreenshotsElement extends StatelessWidget {
  final String imagePath;

  ScreenshotsElement({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0, // soften the shadow
            spreadRadius: 0.0, //extend the shadow
            offset: Offset(
              0.0, // Move to right 10  horizontally
              10.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Image.asset(
        imagePath,
        height: 600,
      ),
    );
  }
}
