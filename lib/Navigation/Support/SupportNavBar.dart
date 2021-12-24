import 'package:app_studio_webstie/Widgets/NavBarItem.dart';
import '../../Widgets/NavBar.dart';
import 'package:flutter/material.dart';

NavBarItem _navBarItem = NavBarItem();

class SupportNavBar extends NavBar {
  final BuildContext context;

  SupportNavBar({required this.context})
      : super(
          navButtonList: _navBarItem.supportNavButtonList(
            context: context,
          ),
        );
}
