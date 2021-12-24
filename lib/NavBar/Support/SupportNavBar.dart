import 'package:app_studio_webstie/NavBar/Support/DesktopSupportNavBar.dart';
import '../../Widgets/NavBar.dart';
import 'package:flutter/material.dart';

class SupportNavBar extends NavBar {
  final Size screenSize;
  final BuildContext context;

  SupportNavBar({required this.screenSize, required this.context})
      : super(
          screenSize: screenSize,
          desktopNavBar: DesktopSupportNavBar(
            screenSize: screenSize,
            context: context,
          ),
        );
}
