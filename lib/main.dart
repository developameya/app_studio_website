import 'dart:html';

import 'package:flutter/material.dart';
import 'package:app_studio_webstie/NavBar/NavBar.dart';
import 'package:app_studio_webstie/NavBar/NavBarElement.dart';

NavBarElement navBarElement = NavBarElement();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 40),
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(17, 15, 18, 1), boxShadow: []),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: screenSize.width / 8),
                  Image.asset('assets/images/Icon_App_Studio@2x.png'),
                  SizedBox(width: 30),
                  navBarElement.inkwellButton(ButtonTitle: 'FEATURES'),
                  SizedBox(width: 30),
                  navBarElement.inkwellButton(ButtonTitle: 'SCREENSHOTS'),
                  SizedBox(width: 30),
                ],
              ),
              Row(
                children: [
                  navBarElement.inkwellButton(ButtonTitle: 'BLOG'),
                  SizedBox(width: 30),
                  navBarElement.inkwellButton(ButtonTitle: 'CONTACT'),
                  SizedBox(width: screenSize.width / 8),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
