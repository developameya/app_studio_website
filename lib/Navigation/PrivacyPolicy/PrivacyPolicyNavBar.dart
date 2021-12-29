import 'package:app_studio_webstie/Widgets/NavBar.dart';
import 'package:app_studio_webstie/Widgets/NavItem.dart';
import 'package:flutter/material.dart';

NavItem _navBarItem = NavItem();

class PrivacyPolicyNavBar extends NavBar {
  final BuildContext context;
  PrivacyPolicyNavBar({required this.context})
      : super(
          navButtonList:
              _navBarItem.privacyPolicyNavBarButtonList(context: context),
        );
}
