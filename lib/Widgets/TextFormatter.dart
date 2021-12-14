import 'package:flutter/material.dart';
import 'package:app_studio_webstie/Constants/AppColors.dart';

class TextFormatter {
  Text heroHeader({required String text, double? fontSize}) {
    return Text(
      text,
      textAlign: TextAlign.center,
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

  Text navButtonText({required String text, Color? color, double? fontSize}) {
    return Text(
      text.toUpperCase(),
      style: TextStyle(
        fontFamily: 'Raleway',
        fontSize: fontSize ?? 12,
        color: color,
      ),
    );
  }

  Column sectionHeader(
      {required String text,
      Color? textColor,
      double? fontSize,
      required double lineWidth}) {
    return Column(
      children: [
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w200,
            fontSize: fontSize ?? 40,
            color: textColor,
          ),
        ),
        Container(
          height: 2,
          width: lineWidth,
          color: primaryColor,
        ),
      ],
    );
  }
}
