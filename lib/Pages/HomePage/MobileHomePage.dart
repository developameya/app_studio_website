import 'package:app_studio_webstie/Widgets/Footer.dart';
import 'package:app_studio_webstie/Widgets/MobileFeaturesSection.dart';
import 'package:app_studio_webstie/Widgets/MobileScreenShotsSection.dart';
import 'package:flutter/material.dart';
import 'package:app_studio_webstie/Widgets/MobileHeroSection.dart';

class MobileHomePage extends StatefulWidget {
  final Size screenSize;
  final GlobalKey heroKey;
  final GlobalKey featuresKey;
  final GlobalKey screenshotKey;
  final GlobalKey downloadKey;
  const MobileHomePage({
    Key? key,
    required this.screenSize,
    required this.heroKey,
    required this.featuresKey,
    required this.screenshotKey,
    required this.downloadKey,
  }) : super(key: key);

  @override
  _MobileHomePageState createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MobileHeroSection(
            screenSize: widget.screenSize,
            heroKey: widget.heroKey,
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MobileFeaturesSection(
              screenSize: widget.screenSize,
              featuresKey: widget.featuresKey,
            ),
          ),
          SizedBox(height: 50),
          MobileScreenShotsSection(
            screenSize: widget.screenSize,
            downloadKey: widget.downloadKey,
            screenshotKey: widget.screenshotKey,
          ),
          Footer(screenSize: widget.screenSize),
        ],
      ),
    );
  }
}
