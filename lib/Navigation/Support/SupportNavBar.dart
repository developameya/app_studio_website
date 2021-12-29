import 'package:app_studio_webstie/Widgets/NavItem.dart';
import '../../Widgets/NavBar.dart';
import 'package:flutter/material.dart';

NavItem _navBarItem = NavItem();

class SupportNavBar extends NavBar {
  final BuildContext context;

  SupportNavBar({required this.context})
      : super(
          navButtonList: _navBarItem.supportNavButtonList(
            context: context,
          ),
        );
}
