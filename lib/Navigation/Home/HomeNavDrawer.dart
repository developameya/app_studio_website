import 'package:app_studio_webstie/Widgets/NavItem.dart';
import 'package:app_studio_webstie/Widgets/NavDrawer.dart';
import 'package:flutter/material.dart';

NavItem _navBarItem = NavItem();

class HomeNavDrawer extends NavDrawer {
  final BuildContext context;
  final Size screenSize;
  final GlobalKey featuresKey;
  final GlobalKey screenshotKey;
  final GlobalKey downloadKey;

  HomeNavDrawer({
    required this.context,
    required this.screenSize,
    required GlobalKey this.featuresKey,
    required GlobalKey this.screenshotKey,
    required GlobalKey this.downloadKey,
  }) : super(
          screenSize: screenSize,
          navButtonList: _navBarItem.HomeNavButtonList(
            context: context,
            verticalPadding: 10.0,
            featuresKey: featuresKey,
            screenshotKey: screenshotKey,
            downloadKey: downloadKey,
            // verticalPadding: 20,
          ),
        );
}
