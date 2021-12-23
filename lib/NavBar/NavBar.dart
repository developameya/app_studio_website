import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:app_studio_webstie/NavBar/DesktopNavBar.dart';
import 'package:app_studio_webstie/Widgets/NavBarItem.dart';
import 'package:app_studio_webstie/Widgets/ResponsiveWidget.dart';
import 'package:flutter/material.dart';

NavBarItem _navBarItem = NavBarItem();

class NavBar extends StatefulWidget implements PreferredSizeWidget {
  final Size screenSize;
  final GlobalKey? heroKey;
  final GlobalKey? featuresKey;
  final GlobalKey? screenshotKey;
  final void Function()? logoAction;
  Size get preferredSize => const Size.fromHeight(50);
  NavBar({
    Key? key,
    required this.screenSize,
    this.logoAction,
    this.heroKey,
    this.featuresKey,
    this.screenshotKey,
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
              child: _navBarItem.NavLogo(height: 50),
            ),
            backgroundColor: headerColor,
          )
        : PreferredSize(
            preferredSize:
                Size(widget.screenSize.width, widget.screenSize.width / 40),
            child: DesktopNavBar(
              screenSize: widget.screenSize,
              action: widget.logoAction,
              heroKey: widget.heroKey,
              featuresKey: widget.featuresKey,
              screenshotKey: widget.screenshotKey,
            ),
          );
  }
}
