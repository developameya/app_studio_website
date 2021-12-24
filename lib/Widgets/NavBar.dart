import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:app_studio_webstie/Widgets/NavBarItem.dart';
import 'package:app_studio_webstie/Widgets/ResponsiveWidget.dart';
import 'package:flutter/material.dart';

NavBarItem _navBarItem = NavBarItem();

class NavBar extends StatefulWidget implements PreferredSizeWidget {
  final List<Widget> navButtonList;
  Size get preferredSize => const Size.fromHeight(50);
  const NavBar({
    Key? key,
    required this.navButtonList,
  }) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ResponsiveWidget.isSmallScreen(context)
        ? AppBar(
            title: Padding(
              padding: EdgeInsets.fromLTRB(
                  screenSize.width / 6,
                  screenSize.width / 4,
                  screenSize.width / 4,
                  screenSize.width / 4),
              child: _navBarItem.NavLogo(height: 50, context: context),
            ),
            backgroundColor: headerColor,
          )
        : PreferredSize(
            preferredSize: Size(screenSize.width, screenSize.width / 40),
            child: Container(
              decoration: BoxDecoration(
                color: headerColor,
                boxShadow: [headerShadow],
              ),
              child: Padding(
                padding: ResponsiveWidget.isMediumScreen(context)
                    ? EdgeInsets.symmetric(horizontal: screenSize.width / 42)
                    : EdgeInsets.symmetric(horizontal: screenSize.width / 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _navBarItem.NavLogo(
                        height: screenSize.width / 35,
                        context: context,
                        heroKey: null),
                    Row(
                      children: widget.navButtonList,
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
