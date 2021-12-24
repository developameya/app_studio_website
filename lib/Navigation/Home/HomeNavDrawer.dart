import 'package:app_studio_webstie/Widgets/NavBarItem.dart';
import 'package:app_studio_webstie/Widgets/NavDrawer.dart';
import 'package:flutter/material.dart';

NavBarItem _navBarItem = NavBarItem();

class HomeNavDrawer extends NavDrawer {
  final BuildContext context;
  final GlobalKey featuresKey;
  final GlobalKey screenshotKey;
  final GlobalKey downloadKey;

  HomeNavDrawer({
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
            verticalPadding: 20,
          ),
        );
}
