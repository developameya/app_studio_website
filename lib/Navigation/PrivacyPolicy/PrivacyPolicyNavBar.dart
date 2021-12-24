import 'package:app_studio_webstie/Widgets/NavBar.dart';
import 'package:app_studio_webstie/Widgets/NavBarItem.dart';
import 'package:flutter/material.dart';

NavBarItem _navBarItem = NavBarItem();

class PrivacyPolicyNavBar extends NavBar {
  final BuildContext context;
  PrivacyPolicyNavBar({required this.context})
      : super(
          navButtonList:
              _navBarItem.privacyPolicyNavBarButtonList(context: context),
        );
}
