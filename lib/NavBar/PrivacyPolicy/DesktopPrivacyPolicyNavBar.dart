import 'package:app_studio_webstie/Widgets/DesktopNavBar.dart';
import 'package:app_studio_webstie/Widgets/NavBarItem.dart';
import 'package:flutter/material.dart';

NavBarItem _navBarItem = NavBarItem();

class DesktopPrivacyPolicyNavBar extends DesktopNavBar {
  final BuildContext context;
  final Size screenSize;

  DesktopPrivacyPolicyNavBar({
    required this.context,
    required this.screenSize,
  }) : super(
          navButtonList:
              _navBarItem.privacyPolicyNavBarButtonList(context: context),
          screenSize: screenSize,
        );
}
