import 'package:app_studio_webstie/Widgets/NavBarItem.dart';
import 'package:app_studio_webstie/Widgets/NavDrawer.dart';
import 'package:flutter/material.dart';

NavBarItem _navBarItem = NavBarItem();

class TermsOfUseNavDrawer extends NavDrawer {
  final BuildContext context;

  TermsOfUseNavDrawer({
    required this.context,
  }) : super(
          navButtonList: _navBarItem.termsOfUseNavBarButtonList(
            context: context,
            verticalPadding: 20,
          ),
        );
}
