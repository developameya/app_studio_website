import 'package:app_studio_webstie/Widgets/DesktopNavBar.dart';
import 'package:app_studio_webstie/Widgets/NavBarItem.dart';
import 'package:flutter/material.dart';

NavBarItem _navBarItem = NavBarItem();

class DesktopHomeNavBar extends DesktopNavBar {
  final BuildContext context;
  final Size screenSize;
  final GlobalKey featuresKey;
  final GlobalKey screenshotKey;
  final GlobalKey downloadKey;
  DesktopHomeNavBar({
    required this.context,
    required this.screenSize,
    required this.featuresKey,
    required this.screenshotKey,
    required this.downloadKey,
  }) : super(
          screenSize: screenSize,
          navButtonList: _navBarItem.HomeNavButtonList(
            context: context,
            featuresKey: featuresKey,
            screenshotKey: screenshotKey,
            downloadKey: downloadKey,
          ),
        );
}
