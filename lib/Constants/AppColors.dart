import 'package:flutter/material.dart';

const headerColor = Color(0xff2C272E);
const primaryColor = Color(0xff998CEB);
const secondaryColor = Color(0xfffbf46d);
const radialGradient = RadialGradient(
  center: Alignment(-3, -5),
  radius: 10,
  colors: [
    Color(0xff998CEB),
    Color(0xff4D4676),
  ],
);
const headerShadow = BoxShadow(
  color: Colors.black,
  blurRadius: 5.0, // soften the shadow
  spreadRadius: 0.1, //extend the shadow
  offset: Offset(
    0.0, // Move to right 10  horizontally
    0.1, // Move to bottom 10 Vertically
  ),
);
