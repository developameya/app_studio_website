import 'package:app_studio_webstie/NavBar/MobileDrawer.dart';
import 'package:app_studio_webstie/NavBar/NavBar.dart';
import 'package:app_studio_webstie/Pages/HomePage/DesktopHomePage.dart';
import 'package:app_studio_webstie/Pages/HomePage/MobileHomePage.dart';
import 'package:app_studio_webstie/Widgets/ResponsiveWidget.dart';
import 'package:flutter/material.dart';

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
      appBar: NavBar(screenSize: screenSize),
      drawer: MobileDrawer(screenSize: screenSize),
      body: ResponsiveWidget.isSmallScreen(context)
          ? MobileHomePage(screenSize: screenSize)
          : DesktopHomePage(screenSize: screenSize),
    );
  }
}
