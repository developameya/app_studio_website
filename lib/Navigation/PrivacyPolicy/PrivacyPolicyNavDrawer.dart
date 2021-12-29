import 'package:app_studio_webstie/Widgets/NavItem.dart';
import 'package:app_studio_webstie/Widgets/NavDrawer.dart';
import 'package:flutter/material.dart';

NavItem _navBarItem = NavItem();

class PrivacyPolicyNavDrawer extends NavDrawer {
  final BuildContext context;
  final Size screenSize;

  PrivacyPolicyNavDrawer({required this.context, required this.screenSize})
      : super(
          screenSize: screenSize,
          navButtonList: _navBarItem.privacyPolicyNavBarButtonList(
            context: context,
            verticalPadding: 20,
          ),
        );
}
