import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:app_studio_webstie/Constants/AppImages.dart';
import 'package:app_studio_webstie/NavBar/DesktopNavBar.dart';
import 'package:app_studio_webstie/Widgets/ResponsiveWidget.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget implements PreferredSizeWidget {
  final Size screenSize;
  Size get preferredSize => const Size.fromHeight(50);
  NavBar({Key? key, required this.screenSize}) : super(key: key);

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
              child: Image.asset(
                logoImage,
                height: 54,
              ),
            ),
            backgroundColor: headerColor,
          )
        : PreferredSize(
            preferredSize:
                Size(widget.screenSize.width, widget.screenSize.width / 40),
            child: DesktopNavBar(screenSize: widget.screenSize),
          );
  }
}
