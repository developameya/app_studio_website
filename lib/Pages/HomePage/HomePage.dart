import 'package:app_studio_webstie/NavBar/DesktopNavBar.dart';
import 'package:app_studio_webstie/NavBar/MobileDrawer.dart';
import 'package:app_studio_webstie/Pages/HomePage/FeaturesSection.dart';
import 'package:app_studio_webstie/Pages/HomePage/HeroSection.dart';
import 'package:app_studio_webstie/Pages/HomePage/ScreenshotSection.dart';
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
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              title: Padding(
                padding: EdgeInsets.fromLTRB(
                    screenSize.width / 6,
                    screenSize.width / 4,
                    screenSize.width / 4,
                    screenSize.width / 4),
                child: Image.asset(
                  'assets/images/Icon_App_Studio@2x.png',
                  height: 54,
                ),
              ),
              backgroundColor: Color(0xff2C272E),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, screenSize.width / 40),
              child: DesktopNavBar(screenSize: screenSize),
            ),
      drawer: MobileDrawer(screenSize: screenSize),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroSection(screenSize: screenSize),
            SizedBox(height: screenSize.width / 8),
            Padding(
              padding: ResponsiveWidget.isMediumScreen(context)
                  ? EdgeInsets.symmetric(horizontal: screenSize.width / 50)
                  : EdgeInsets.symmetric(horizontal: screenSize.width / 8),
              child: FeaturesSection(
                screenSize: screenSize,
              ),
            ),
            SizedBox(height: screenSize.width / 8),
            ScreenshotSection(screenSize: screenSize),
            Container(
              width: screenSize.width,
              height: 30,
              color: Color(0xff2C272E),
              child: Center(
                child: Text(
                  'Copyright ©2021 Ameya App Studio',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
