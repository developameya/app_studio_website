import 'package:flutter/material.dart';
import 'package:app_studio_webstie/HomePage/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    precacheImage(
        AssetImage('assets/images/1-app store screenshot@2x.png'), context);
    precacheImage(
        AssetImage('assets/images/2-app store screenshot@2x.png'), context);
    precacheImage(
        AssetImage('assets/images/3-app store screenshot@2x.png'), context);
    precacheImage(
        AssetImage('assets/images/4-app store screenshot@2x.png'), context);
    return MaterialApp(
      title: 'Ameya App Studio',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
