import 'package:flutter/material.dart';
import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:app_studio_webstie/Widgets/FeaturesSection.dart';
import 'package:app_studio_webstie/Widgets/HeroSection.dart';
import 'package:app_studio_webstie/Widgets/ScreenshotSection.dart';
import 'package:app_studio_webstie/Widgets/ResponsiveWidget.dart';

class DesktopHomePage extends StatefulWidget {
  final Size screenSize;
  const DesktopHomePage({Key? key, required this.screenSize}) : super(key: key);

  @override
  _DesktopHomePageState createState() => _DesktopHomePageState();
}

class _DesktopHomePageState extends State<DesktopHomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeroSection(screenSize: widget.screenSize),
          SizedBox(height: widget.screenSize.width / 8),
          Padding(
            padding: ResponsiveWidget.isMediumScreen(context)
                ? EdgeInsets.symmetric(horizontal: widget.screenSize.width / 50)
                : EdgeInsets.symmetric(horizontal: widget.screenSize.width / 8),
            child: FeaturesSection(
              screenSize: widget.screenSize,
            ),
          ),
          SizedBox(height: widget.screenSize.width / 8),
          ScreenshotSection(screenSize: widget.screenSize),
          Container(
            width: widget.screenSize.width,
            height: 30,
            color: headerColor,
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
    );
  }
}
