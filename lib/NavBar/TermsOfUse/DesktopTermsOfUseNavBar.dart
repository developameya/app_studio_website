import 'package:app_studio_webstie/Widgets/DesktopNavBar.dart';
import 'package:app_studio_webstie/Widgets/NavBarItem.dart';
import 'package:flutter/material.dart';

NavBarItem _navBarItem = NavBarItem();

class DesktopTermsOfUseNavBar extends DesktopNavBar {
  final Size screenSize;
  final BuildContext context;
  DesktopTermsOfUseNavBar({
    required this.screenSize,
    required this.context,
  }) : super(
          screenSize: screenSize,
          navButtonList:
              _navBarItem.termsOfUseNavBarButtonList(context: context),
        );
}
