import 'package:app_studio_webstie/Widgets/NavBarItem.dart';
import 'package:app_studio_webstie/Widgets/NavDrawer.dart';
import 'package:flutter/material.dart';

NavBarItem _navBarItem = NavBarItem();

class SupportNavDrawer extends NavDrawer {
  final Size screenSize;
  final BuildContext context;
  SupportNavDrawer({
    required this.context,
    required this.screenSize,
  }) : super(
          screenSize: screenSize,
          navButtonList: _navBarItem.supportNavButtonList(
            context: context,
            verticalPadding: 20,
          ),
        );
}
