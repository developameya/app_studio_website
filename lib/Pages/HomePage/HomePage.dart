import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:app_studio_webstie/Constants/AppImages.dart';
import 'package:app_studio_webstie/NavBar/DesktopNavBar.dart';
import 'package:app_studio_webstie/NavBar/MobileDrawer.dart';
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
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              title: Padding(
                padding: EdgeInsets.fromLTRB(
                    screenSize.width / 6,
                    screenSize.width / 4,
                    screenSize.width / 4,
                    screenSize.width / 4),
                child: Image.asset(
                  logoImage,
                  height: 54,
                ),
              ),
              backgroundColor: headerColor,
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, screenSize.width / 40),
              child: DesktopNavBar(screenSize: screenSize),
            ),
      drawer: MobileDrawer(screenSize: screenSize),
      body: ResponsiveWidget.isSmallScreen(context)
          ? MobileHomePage(screenSize: screenSize)
          : DesktopHomePage(screenSize: screenSize),
    );
  }
}
