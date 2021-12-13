import 'package:app_studio_webstie/Constants/AppImages.dart';
import 'package:flutter/material.dart';
import 'package:app_studio_webstie/Pages/HomePage/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage(heroImage), context);
    precacheImage(AssetImage(screenshots[0]), context);
    precacheImage(AssetImage(screenshots[1]), context);
    precacheImage(AssetImage(screenshots[2]), context);
    precacheImage(AssetImage(screenshots[3]), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ameya App Studio',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
