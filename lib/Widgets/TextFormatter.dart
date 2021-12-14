import 'package:flutter/material.dart';

class TextFormatter {
  Text heroHeader({required String text, double? fontSize}) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w100,
        color: Colors.white,
        fontSize: fontSize ?? 40,
      ),
    );
  }

  Text heroSubHeader({required String text, double? fontSize}) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontSize: fontSize ?? 28,
      ),
    );
  }

  Text featuresHeader({required String text, double? fontSize}) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
        fontSize: fontSize ?? 24,
      ),
    );
  }

  Text featuresSubHeader({required String text, double? fontSize}) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Raleway',
        fontSize: fontSize ?? 16,
      ),
    );
  }
}
