import 'package:app_studio_webstie/Navigation/Home/HomeNavDrawer.dart';
import 'package:app_studio_webstie/Navigation/Home/HomeNavBar.dart';
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
  final heroKey = new GlobalKey();
  final featuresKey = new GlobalKey();
  final screenshotKey = new GlobalKey();
  final downloadKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: HomeNavBar(
          featuresKey: featuresKey,
          screenshotKey: screenshotKey,
          downloadKey: downloadKey,
          context: context,
        ),
        drawer: HomeNavDrawer(
            screenSize: screenSize,
            context: context,
            featuresKey: featuresKey,
            screenshotKey: screenshotKey,
            downloadKey: downloadKey),
        body: SingleChildScrollView(
          child: ResponsiveWidget.isSmallScreen(context)
              ? MobileHomePage(screenSize: screenSize)
              : DesktopHomePage(
                  screenSize: screenSize,
                  heroKey: heroKey,
                  featuresKey: featuresKey,
                  screenshotKey: screenshotKey,
                  downloadKey: downloadKey,
                ),
        ));
  }
}
