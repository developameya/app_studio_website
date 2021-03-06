import 'package:app_studio_webstie/Widgets/NavBar.dart';
import 'package:app_studio_webstie/Widgets/NavItem.dart';
import 'package:flutter/material.dart';

NavItem _navBarItem = NavItem();

class HomeNavBar extends NavBar {
  final BuildContext context;
  final GlobalKey featuresKey;
  final GlobalKey screenshotKey;
  final GlobalKey downloadKey;
  HomeNavBar({
    required this.context,
    required GlobalKey this.featuresKey,
    required GlobalKey this.screenshotKey,
    required GlobalKey this.downloadKey,
  }) : super(
          navButtonList: _navBarItem.HomeNavButtonList(
            context: context,
            featuresKey: featuresKey,
            screenshotKey: screenshotKey,
            downloadKey: downloadKey,
          ),
        );
}
