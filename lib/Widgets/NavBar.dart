import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:app_studio_webstie/Widgets/DesktopNavBar.dart';
import 'package:app_studio_webstie/Widgets/NavBarItem.dart';
import 'package:app_studio_webstie/Widgets/ResponsiveWidget.dart';
import 'package:flutter/material.dart';

NavBarItem _navBarItem = NavBarItem();

class NavBar extends StatefulWidget implements PreferredSizeWidget {
  final Size screenSize;
  final DesktopNavBar desktopNavBar;
  Size get preferredSize => const Size.fromHeight(50);
  const NavBar({
    Key? key,
    required this.screenSize,
    required this.desktopNavBar,
  }) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? AppBar(
            title: Padding(
              padding: EdgeInsets.fromLTRB(
                  widget.screenSize.width / 6,
                  widget.screenSize.width / 4,
                  widget.screenSize.width / 4,
                  widget.screenSize.width / 4),
              child: _navBarItem.NavLogo(height: 50, context: context),
            ),
            backgroundColor: headerColor,
          )
        : PreferredSize(
            preferredSize:
                Size(widget.screenSize.width, widget.screenSize.width / 40),
            child: widget.desktopNavBar,
          );
  }
}
