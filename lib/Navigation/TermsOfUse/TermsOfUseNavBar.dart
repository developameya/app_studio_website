import 'package:app_studio_webstie/Widgets/NavBar.dart';
import 'package:app_studio_webstie/Widgets/NavBarItem.dart';
import 'package:flutter/material.dart';

NavBarItem _navBarItem = NavBarItem();

class TermsOfUseNavBar extends NavBar {
  final BuildContext context;
  TermsOfUseNavBar({
    required this.context,
  }) : super(
          navButtonList:
              _navBarItem.termsOfUseNavBarButtonList(context: context),
        );
}
