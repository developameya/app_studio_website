import 'package:app_studio_webstie/NavBar/PrivacyPolicy/DesktopPrivacyPolicyNavBar.dart';
import 'package:app_studio_webstie/Widgets/NavBar.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyNavBar extends NavBar {
  final BuildContext context;
  final Size screenSize;
  PrivacyPolicyNavBar({required this.screenSize, required this.context})
      : super(
          screenSize: screenSize,
          desktopNavBar: DesktopPrivacyPolicyNavBar(
            context: context,
            screenSize: screenSize,
          ),
        );
}
