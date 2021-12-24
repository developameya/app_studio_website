import 'package:app_studio_webstie/Navigation/TermsOfUse/DesktopTermsOfUseNavBar.dart';
import 'package:app_studio_webstie/Widgets/NavBar.dart';
import 'package:flutter/material.dart';

class TermsOfUseNavBar extends NavBar {
  final Size screenSize;
  final BuildContext context;
  TermsOfUseNavBar({
    required this.screenSize,
    required this.context,
  }) : super(
          screenSize: screenSize,
          desktopNavBar: DesktopTermsOfUseNavBar(
            screenSize: screenSize,
            context: context,
          ),
        );
}
