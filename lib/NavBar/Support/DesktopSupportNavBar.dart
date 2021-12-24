import 'package:app_studio_webstie/Widgets/DesktopNavBar.dart';
import 'package:app_studio_webstie/Widgets/NavBarItem.dart';
import 'package:flutter/material.dart';

NavBarItem _navBarItem = NavBarItem();

class DesktopSupportNavBar extends DesktopNavBar {
  final Size screenSize;
  final BuildContext context;
  DesktopSupportNavBar({required this.screenSize, required this.context})
      : super(
            screenSize: screenSize,
            navButtonList: _navBarItem.supportNavButtonList(context: context));
}
