import 'package:app_studio_webstie/Widgets/NavBar.dart';
import 'package:flutter/material.dart';

import 'DesktopHomeNavBar.dart';

class HomeNavBar extends NavBar {
  final Size screenSize;
  final BuildContext context;
  final GlobalKey featuresKey;
  final GlobalKey screenshotKey;
  final GlobalKey downloadKey;
  HomeNavBar({
    required this.screenSize,
    required this.context,
    required GlobalKey this.featuresKey,
    required GlobalKey this.screenshotKey,
    required GlobalKey this.downloadKey,
  }) : super(
          screenSize: screenSize,
          desktopNavBar: DesktopHomeNavBar(
            context: context,
            screenSize: screenSize,
            featuresKey: featuresKey,
            screenshotKey: screenshotKey,
            downloadKey: downloadKey,
          ),
        );
}
