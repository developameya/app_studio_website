import 'package:app_studio_webstie/Widgets/NavBar.dart';
import 'package:app_studio_webstie/Widgets/NavItem.dart';
import 'package:flutter/material.dart';

NavItem _navBarItem = NavItem();

class TermsOfUseNavBar extends NavBar {
  final BuildContext context;
  TermsOfUseNavBar({
    required this.context,
  }) : super(
          navButtonList:
              _navBarItem.termsOfUseNavBarButtonList(context: context),
        );
}
